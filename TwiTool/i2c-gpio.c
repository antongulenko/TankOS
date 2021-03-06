
#include "i2c-gpio.h"

#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdarg.h>

#define CHECK(instr) do { int ___res___ = instr; if (___res___ < 0) return ___res___; } while (0)

static inline void debug(const char *fmt, ...) {
#ifdef DO_DEBUG
    va_list args;
    va_start(args, fmt);
    vfprintf(stderr, fmt, args);
    va_end(args);
#endif
}

static inline void trace(const char *fmt, ...) {
#ifdef DO_TRACE
    va_list args;
    va_start(args, fmt);
    vfprintf(stderr, fmt, args);
    va_end(args);
#endif   
}

static char errbuf[2048] = {0};

static void err(char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    int n = vsnprintf(errbuf, sizeof(errbuf), fmt, args);
    if (errno != 0)
        snprintf(errbuf + n, sizeof(errbuf) - n, " (%s)", strerror(errno));
    va_end(args);
}

static inline long nanoseconds_between(struct timespec *start, struct timespec *now) {
    return (now->tv_sec - start->tv_sec) * 1000000 + now->tv_nsec - start->tv_nsec;
}

static inline long millis_between(struct timespec *start, struct timespec *now) {
    return (now->tv_sec - start->tv_sec) * 1000
            + (now->tv_nsec - start->tv_nsec) / 1000000;
}

static inline int gettime(struct timespec *t) {
    if (clock_gettime(CLOCK_REALTIME, t) != 0) {
        err("");
        return ERR_GETTIME_FAILED;
    }
    return 0;
}

static inline void __usleep(long usec) {
    if (usec == 0) return;
	struct timespec ts;
	ts.tv_sec = 0;
	ts.tv_nsec = usec * 1000;
	nanosleep(&ts, NULL);
}

static inline void DELAY(float usec) {
    long u = (long) (usec * DELAY_STRETCH);
    __usleep(u);
}

static int readval(int fd, char *desc) {
	char val[3] = {0};
    if (lseek(fd, 0, SEEK_SET) != 0) {
        err("Failed to seek %s to 0", desc);
        return ERR_SEEK_FAILED;
    }
	int res = read(fd, val, sizeof(val));
	if (res < 0) {
        err("Failed to read %s", desc);
        return ERR_READ_FAILED;
	}
	if (val[0] == '1') {
        trace("Read bit %s: 1\n", desc);
		return 1;
	} else if (val[0] == '0') {
        trace("Read bit %s: 0\n", desc);
		return 0;
	} else {
        err("Bogus %s value: %s", desc, val);
		return ERR_BOGUS_VALUE;
	}
}

static inline int setval(int fd, BOOL val, char *desc) {
    int res;
    trace("Writ bit %s: %i\n", desc, val);
    if (val)
        res = write(fd, "in", 2);
    else
        res = write(fd, "low", 3);
    if (res < 0) {
        err("Writing %s to %i failed", desc, val);
        return ERR_WRITE_FAILED;
    }
    return 0;
}

static inline int sdalo(GpioI2C bus) {
    return setval(bus->sdaDir, 0, "sda(low)");
}

static inline int sdahi(GpioI2C bus) {
    return setval(bus->sdaDir, 1, "sda(high)");
}

static inline int scllo(GpioI2C bus) {
    return setval(bus->sclDir, 0, "scl(low)");
}

static inline int sclhi(GpioI2C bus) {
    return setval(bus->sclDir, 1, "scl(high)");
}

static int getsda(GpioI2C bus) {
    return readval(bus->sdaVal, "sda(in)");
}

static int getscl(GpioI2C bus) {
    return readval(bus->sclVal, "scl(in)");
}

typedef enum {
    WAIT_SCL_STOP,
    WAIT_SCL_START,
    WAIT_SCL_REPSTART,
    WAIT_SCL_SEND,
    WAIT_SCL_RECEIVE,
    WAIT_SCL_NUM
} wait_scl_stats_num;

#ifdef DO_STATS
static struct wait_scl_stats {
    unsigned long time;
    unsigned long sleeps;
    unsigned long calls;
} wait_scl_stats[WAIT_SCL_NUM];
#endif

static int wait_scl_hi(GpioI2C bus, wait_scl_stats_num stat_num) {
    CHECK(sclhi(bus));
    DELAY(1);
    struct timespec start;
    CHECK(gettime(&start));
    for(int i = 0; i < SCL_TIMEOUT_RETRIES; i++) {
        int res = getscl(bus);
        if (res < 0) return res;
        if (res == 1) {
#ifdef DO_STATS
            struct timespec end;
            CHECK(gettime(&end));
            wait_scl_stats[stat_num].time += (unsigned long) nanoseconds_between(&start, &end);
            wait_scl_stats[stat_num].sleeps += i;
            wait_scl_stats[stat_num].calls++;
#endif
            return 0;
        }
        __usleep(SCL_TIMEOUT_SLEEP_MICRO);
    }
    err("");
    return ERR_SCL_HI_TIMEOUT;
}

static int wait_sda_hi(GpioI2C bus) {
    CHECK(sdahi(bus));
    DELAY(1);
    for(int i = 0; i < SDA_TIMEOUT_RETRIES; i++) {
        int res = getsda(bus);
        if (res < 0) return res;
        if (res == 1) return 0;
        __usleep(SDA_TIMEOUT_SLEEP_MICRO);
    }
    err("");
    return ERR_SDA_HI_TIMEOUT;
}

static int check_sda_hi(GpioI2C bus) {
    // Make sure sda goes hi before scl goes lo.
    // That condition means another master won arbitration.
    for(int i = 0; i < SDA_TIMEOUT_RETRIES; i++) {
        int sda = getsda(bus);
        if (sda < 0) return sda;
        int scl = getscl(bus);
        if (scl < 0) return scl;
        if (sda == 0 && scl == 0) {
            err("");
            return ERR_ARBITRATION_LOST;
        } else if (sda == 0 && scl == 1) {
            // Still waiting for sda to be released
            __usleep(SDA_TIMEOUT_SLEEP_MICRO);
        } else {
            // sda == 1 && scl == 1 -> we won arbitration
            // sda == 1 && scl == 0 -> likely another master also released sda and already pulled scl back lo
            return 0;
        }
    }
    err("");
    return ERR_SDA_HI_TIMEOUT;
}

static int check_bus_free_time(GpioI2C bus) {
    // Wait until the bus is unused for a certain time. Do not analyze traffic.
    CHECK(sclhi(bus));
    CHECK(sdahi(bus));
    struct timespec start_time;
    struct timespec cur_time;
    struct timespec free_time;
    CHECK(gettime(&start_time));
    free_time = start_time;
    do {
        int sda = getsda(bus);
        if (sda < 0) return sda;
        int scl = getscl(bus);
        if (scl < 0) return scl;
        CHECK(gettime(&cur_time));
        BOOL bus_free = sda == 1 && scl == 1;
        if (!bus_free) {
            free_time = cur_time;
        } else if (millis_between(&free_time, &cur_time) >= BUS_FREE_MINTIME_MILLIS) {
            // Bus was free long enough
            return 0;
        }
    } while(millis_between(&start_time, &cur_time) < BUS_FREE_TIMEOUT_MILLIS);
    err("");
    return ERR_BUS_FREE_TIMEOUT;
}

static int check_bus_free_stop(GpioI2C bus) {
    CHECK(sclhi(bus));
    CHECK(sdahi(bus));
    struct timespec start_time;
    struct timespec cur_time;
    CHECK(gettime(&start_time));
    BOOL detect_stop = FALSE;
    register uint8_t stop_state = 0;
    do {
        int sda = getsda(bus);
        if (sda < 0) return sda;
        int scl = getscl(bus);
        if (scl < 0) return scl;
        CHECK(gettime(&cur_time));
        BOOL bus_free = sda == 1 && scl == 1;
        if (!bus_free) detect_stop = TRUE;
        if (detect_stop) {
            if (stop_state == 0) {
                if (scl == 0 && sda == 0) {
                    // First, both lines must be pulled down
                    stop_state = 1;
                } else stop_state = 0;
            } else if (stop_state == 1) {
                if (scl == 1 && sda == 0) {
                    // SCL must be released first
                    stop_state = 2;
                } else if (scl == 0 && sda == 0) continue;
                else stop_state = 0;
            } else if (stop_state == 2) {
                if (scl == 1 && sda == 1) {
                    // If sda is released while scl is still high: STOP condition detected!
                    return 0;
                } else if (scl == 1 && sda == 0) continue;
                else stop_state = 0;
            }
        } else {
            if (millis_between(&start_time, &cur_time) >= BUS_FREE_MINTIME_MILLIS)
                // Bus was without any activity long enough
                return 0;
        }
    } while(millis_between(&start_time, &cur_time) < BUS_FREE_TIMEOUT_MILLIS);
    err("");
    return ERR_BUS_FREE_TIMEOUT;
}

static int doStart(GpioI2C bus) {
    CHECK(sdalo(bus));
    DELAY(2);
    CHECK(scllo(bus));
    DELAY(1);
    return 0;
}

int i2c_gpio_start(GpioI2C bus) {
    debug(" == START\n");
    if (BUS_DETECT_FREE)
        CHECK(check_bus_free_time(bus));
    else if (BUS_DETECT_STOP)
        CHECK(check_bus_free_stop(bus));
    else {
        CHECK(wait_scl_hi(bus, WAIT_SCL_START));
        CHECK(wait_sda_hi(bus));
    }
    return doStart(bus);
}

int i2c_gpio_repstart(GpioI2C bus) {
    debug(" == REPEATED START\n");
    CHECK(sdahi(bus));
	DELAY(1.5);
    CHECK(wait_scl_hi(bus, WAIT_SCL_REPSTART));
    return doStart(bus);
}

int i2c_gpio_stop(GpioI2C bus) {
    debug(" == STOP\n");
	CHECK(sdalo(bus));
	DELAY(1.5);
    int res = wait_scl_hi(bus, WAIT_SCL_STOP); // Must release sda even if this fails
	DELAY(2);
    CHECK(sdahi(bus));
	DELAY(2);
    return res;
}

static int sendbit(GpioI2C bus, int bit) {
    trace(" - Sending bit: %i\n", bit);
    if (bit) {
        CHECK(sdahi(bus));
    } else {
        CHECK(sdalo(bus));
    }
    DELAY(1.5);
    CHECK(wait_scl_hi(bus, WAIT_SCL_SEND));
    if (BUS_DETECT_ARBITRATION && bit) CHECK(check_sda_hi(bus)); // Check if we won arbitration
    DELAY(2);
    CHECK(scllo(bus));
    DELAY(1);
    return 0;
}

static int receivebit(GpioI2C bus) {
    CHECK(wait_scl_hi(bus, WAIT_SCL_RECEIVE));
    DELAY(5);
	int bit = getsda(bus);
    if (bit < 0) return bit;
    trace(" - Received bit: %i\n", bit);
	CHECK(scllo(bus));
	DELAY(1);
    return bit;
}

static int readack(GpioI2C bus) {
    debug(" == Reading ack\n");
    int bit = receivebit(bus);
    if (bit < 0) return bit;
    return !bit;
}

static int check_scl_lo(GpioI2C bus) {
    int res = getscl(bus);
    switch (res) {
        case 0: return 0;
        case 1: 
            err(""); // Clear error buffer
            return ERR_SCL_NOT_LO;
        default: return res;
    }
}

int i2c_gpio_write(GpioI2C bus, unsigned char c) {
    debug(" == Sending byte: %02x\n", c);
    CHECK(check_scl_lo(bus)); // Must be low from START condition
	for (int i = 7; i >= 0; i--) {
		int sb = (c >> i) & 1;
        int res = sendbit(bus, sb);
        if (res < 0) {
            if (res == ERR_ARBITRATION_LOST) {
                err("Arbitration lost in bit %i", 7 - i);
            }
            return res;
        }
	}
	CHECK(sdahi(bus));
	DELAY(1.5);
    return readack(bus);
}

int i2c_gpio_read(GpioI2C bus) {
    debug(" == Receiving byte...\n");
	unsigned char indata = 0;
    CHECK(check_scl_lo(bus)); // Must be low from START condition
	CHECK(sdahi(bus));
	DELAY(1.5);
	for (int i = 0; i < 8; i++) {
        int bit = receivebit(bus);
        if (bit < 0) return bit;
        indata *= 2;
		if (bit == 1)
			indata |= 0x01;
	}
    // Send ACK
    CHECK(sendbit(bus, 0));
    debug(" == Received: %02x\n", indata);
	return (int) indata;
}

int i2c_gpio_try_address(GpioI2C bus, unsigned char addr) {
    CHECK(i2c_gpio_start(bus));
    int writeRes = i2c_gpio_write(bus, addr);
    int stopRes = i2c_gpio_stop(bus);
    if (stopRes < 0) return stopRes;
    return writeRes;
}

int i2c_gpio_retry_address(GpioI2C bus, unsigned char addr, int retries) {
    int res = 0;
	for (int i = 0; i < retries && res != 1; i++) {
        res = i2c_gpio_try_address(bus, addr);
        DELAY(2);
	}
	return res;
}

static int acquire_lock() {
    for (int i = 0; i < LOCK_RETRIES; i++) {
        errno = 0;
        int fd = open(LOCK_FILE, O_CREAT | O_EXCL | O_WRONLY, S_IRUSR | S_IWUSR);
        if (fd > 0) return fd;
        if (errno == EEXIST) {
            debug(" == Bus locked by other process\n");
            __usleep(LOCK_WAIT_MILLIS * 1000);
            continue;
        } else {
            err("Error opening lock file");
            return ERR_LOCK_FAILED;
        }
    }
    err("Failed to acquire bus lock after %i retries", LOCK_RETRIES);
    return ERR_LOCK_TIMEOUT;
}

static int release_lock() {
    if (unlink(LOCK_FILE) != 0) {
        err("");
        return ERR_RELEASE_LOCK_FAILED;
    }
    return 0;
}

static int gpio_export(char *pin) {
    char test_file[512];
    snprintf(test_file, sizeof(test_file), "%s%s", GPIO_PATH, pin);
    errno = 0;
    int res = access(test_file, F_OK);
    if (res == 0) return 0;
    if (errno != ENOENT) return res;

    int fd = open(GPIO_PATH_EXPORT, O_WRONLY);
    if (fd < 0) {
        err("Failed to open %s for exporting %s", GPIO_PATH_EXPORT, pin);
        return ERR_EXPORT_FAILED;
    } else {
        res = write(fd, pin, strlen(pin));
        if (res < 0) {
            close(fd);
            err("Failed to export %s", pin);
            return ERR_EXPORT_FAILED;
        }
    }
    close(fd);
    return 0;
}

static int gpio_unexport(char *pin)  {
    int fd = open(GPIO_PATH_UNEXPORT, O_WRONLY);
    if (fd < 0) {
        err("Failed to open %s for unexporting %s", GPIO_PATH_UNEXPORT, pin);
        return ERR_UNEXPORT_FAILED;
    } else {
        int res = write(fd, pin, strlen(pin));
        if (res < 0) {
            close(fd);
            err("Failed to unexport %s", pin);
            return ERR_UNEXPORT_FAILED;
        }
    }
    close(fd);
    return 0;
}

int i2c_gpio_destroy(GpioI2C bus) {
#ifdef DO_STATS
    printf(" === SCL-wait Statistics\n");
    for (int i = 0; i < WAIT_SCL_NUM; i++) {
        char *name;
        switch ((wait_scl_stats_num) i) {
            case WAIT_SCL_START: name = "Start"; break;
            case WAIT_SCL_STOP: name = "Stop"; break;
            case WAIT_SCL_REPSTART: name = "Repstart"; break;
            case WAIT_SCL_SEND: name = "Send"; break;
            case WAIT_SCL_RECEIVE: name = "Receive"; break;
            default: name = "Unknown";
        }
        struct wait_scl_stats stats = wait_scl_stats[i];
        double checks_per_call = (double) stats.sleeps / (double) stats.calls;
        double avg_check = (double) stats.sleeps * 1000000.0 / (double) stats.time;
        double avg_call = (double) stats.calls * 1000000.0 / (double) stats.time;
        printf(" = %s: %lu checks in %lu calls, %lu nano seconds (%.2f check/millis, %.2f calls/millis, %.2f checks/call)\n",
            name, stats.sleeps, stats.calls, stats.time, avg_check, avg_call, checks_per_call);
    }
#endif
    if (bus->sclVal > 0) close(bus->sclVal);
    if (bus->sdaVal > 0) close(bus->sdaVal);
    if (bus->sclDir > 0) close(bus->sclDir);
    if (bus->sdaDir > 0) close(bus->sdaDir);
    if (bus->lock_fd > 0) {
        close(bus->lock_fd);
        return release_lock();
    }
    return 0;
}

int i2c_gpio_cleanup(GpioI2C bus) {
    int res1 = gpio_unexport(bus->sdaPinNum);
    int res2 = gpio_unexport(bus->sclPinNum);
    if (access(LOCK_FILE, R_OK|W_OK) == 0) {
        unlink(LOCK_FILE);
    }
    return res2 < 0 ? res2 : res1;
}

static int open_failed_err(char *file_name) {
    err("Failed to open %s", file_name);
    return ERR_OPEN_FAILED;
}

int i2c_gpio_init(GpioI2C bus) {
    int lock_fd = acquire_lock();
    if (lock_fd < 0) return lock_fd;
    bus->lock_fd = lock_fd;
    CHECK(gpio_export(bus->sdaPinNum));
    CHECK(gpio_export(bus->sclPinNum));
    
	char file_name[512];
	
	snprintf(file_name, sizeof(file_name), "%s%s%s", GPIO_PATH, bus->sdaPinNum, GPIO_VAL);
	bus->sdaVal = open(file_name, O_RDWR);
	if (bus->sdaVal < 0) return open_failed_err(file_name);

	snprintf(file_name, sizeof(file_name), "%s%s%s", GPIO_PATH, bus->sclPinNum, GPIO_VAL);
	bus->sclVal = open(file_name, O_RDWR);
	if (bus->sclVal < 0) return open_failed_err(file_name);

	snprintf(file_name, sizeof(file_name), "%s%s%s", GPIO_PATH, bus->sdaPinNum, GPIO_DIR);
	bus->sdaDir = open(file_name, O_RDWR);
	if (bus->sdaDir < 0) return open_failed_err(file_name);
	
	snprintf(file_name, sizeof(file_name), "%s%s%s", GPIO_PATH, bus->sclPinNum, GPIO_DIR);
	bus->sclDir = open(file_name, O_RDWR);
	if (bus->sclDir < 0) return open_failed_err(file_name);

    return 0;
}

char *i2c_gpio_errstring(int code) {
    static char ext_errbuf[2248];
    static char unknown_code_buf[40];
    char *msg = NULL;
    switch ((GpioError) code) {
        case ERR_SEEK_FAILED:
            msg = "Seek failed"; break;
        case ERR_READ_FAILED:
            msg = "Read failed"; break;
        case ERR_BOGUS_VALUE:
            msg = "Bogus input value"; break;
        case ERR_WRITE_FAILED:
            msg = "Write failed"; break;
        case ERR_SCL_HI_TIMEOUT:
            msg = "Waiting for SCL high timed out"; break;
        case ERR_SCL_NOT_LO:
            msg = "SCL must be low (execute START first)"; break;
        case ERR_OPEN_FAILED:
            msg = "Open failed"; break;
        case ERR_EXPORT_FAILED:
            msg = "Export failed"; break;
        case ERR_UNEXPORT_FAILED:
            msg = "Unexport failed"; break;
        case ERR_LOCK_TIMEOUT:
            msg = "Acquiring bus lock timed out"; break;
        case ERR_LOCK_FAILED:
            msg = "Error acquiring bus lock"; break;
        case ERR_RELEASE_LOCK_FAILED:
            msg = "Error releasing bus lock"; break;
        case ERR_ARBITRATION_LOST:
            msg = "Arbitration lost"; break;
        case ERR_SDA_HI_TIMEOUT:
            msg = "Waiting for SDA high timed out"; break;
        case ERR_GETTIME_FAILED:
            msg = "Failed to get time with clock_gettime"; break;
        case ERR_BUS_FREE_TIMEOUT:
            msg = "Bus too busy: waiting for free bus timed out"; break;
    }
    if (msg == NULL) {
        snprintf(unknown_code_buf, sizeof(unknown_code_buf), "Unknown error code (%i)", code);
        msg = unknown_code_buf;
    }
    snprintf(ext_errbuf, sizeof(ext_errbuf), "%s: %s", msg, errbuf);
    return ext_errbuf;
}
