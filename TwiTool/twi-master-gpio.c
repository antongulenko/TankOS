
#include <stdio.h>
#include <time.h>

#define EXPORT_PATH "/sys/class/gpio/export"
#define GPIO_PATH "/sys/class/gpio/gpio"
#define GPIO_DIR "/direction"
#define GPIO_VAL "/value"

FILE *sdaVal, *sclVal, *sdaDir, *sclDir;

static inline void DELAY(float usec) {
	struct timespec;
	timespec.tv_sec = 0;
	timespec.tv_nsec = (long) (usec * 1000.0);
	nanosleep(&timespec, NULL);
}

static inline void setsda(int val)
{
    if (val)
    	fprintf(sdaDir, "in\n");
    else
        fprintf(sdaDir, "low\n");
}

static inline void setscl(int val)
{
    if (val)
        fprintf(sclDir, "in\n");
    else
    	fprintf(sclDir, "low\n");
}

static int getsda(void)
{
	char val = 0;
	int res = fread(&val, 1, 1, sdaVal);
	if (res != 1) {
		fprintf(stderr, "Failed to read sda...\n");
	}
	if (val == '1') {
		return 1;
	} else if (val == '0') {
		return 0;
	} else {
		fprintf("Bogus sda in value: %c\n", val);
		return 0;
	}
}

static inline void sdalo(void)
{
	setsda(0);
	DELAY(1.5);
}

static inline void sdahi(void)
{
	setsda(1);
	DELAY(1.5);
}

static inline void scllo(void)
{
	setscl(0);
	DELAY(1);
}

static int sclhi(void)
{
	setscl(1);
	DELAY(2);
}

static void i2c_start(void)
{
	setsda(0);
	DELAY(2);
	scllo();
}

static void i2c_repstart(void)
{
	sdahi();
	sclhi();
	setsda(0);
	DELAY(2);
	scllo();
}


static void i2c_stop(void)
{
	sdalo();
	sclhi();
	setsda(1);
	DELAY(2);
}


/* send a byte without start cond., look for arbitration,
   check ackn. from slave */
/* returns:
 * 1 if the device acknowledged
 * 0 if the device did not ack
 * -ETIMEDOUT if an error occurred (while raising the scl line)
 */
static int i2c_outb(unsigned char c)
{
	int i;
	int sb;
	int ack;
	
	/* assert: scl is low */
	for (i = 7; i >= 0; i--) {
		
		sb = (c >> i) & 1;
		setsda(sb);
		DELAY(1.5);
		sclhi();
		scllo();
	}
	sdahi();
	sclhi();
    DELAY(4);
    /* read ack */
	ack = !getsda();
   // ack = 1;
	scllo();
	return ack;
}

static int i2c_inb()
{
	/* read byte via i2c port, without start/stop sequence	*/
	/* acknowledge is sent in i2c_read.			*/
	int i;
	unsigned char indata = 0;

	/* assert: scl is low */
	sdahi();
	for (i = 0; i < 8; i++) {
		sclhi();
        indata *= 2;
		if (getsda())
			indata |= 0x01;
		setscl(0);
		DELAY(1);
	}
	/* assert: scl is low */
	return indata;
}

/* try_address tries to contact a chip for a num of
 * times before it gives up.
 * return values:
 * 1 chip answered
 * 0 chip did not answer
 * -x transmission error
 */
static int try_address(unsigned char addr, int retries) {
	int i, ret = 0;

	for (i = 0; i <= retries; i++) {
		ret = i2c_outb(i2c_adap, addr);
		if (ret == 1 || i == retries)
			break;
		i2c_stop();
		DELAY(2);
		i2c_start();
	}
	return ret;
}

static int acknak(struct i2c_adapter *i2c_adap, int is_ack)
{
	/* assert: sda is high */
	if (is_ack)		/* send ack */
		setsda(0);
	DELAY(1.5);
	sclhi()
	// TODO Check timeout
	scllo();
	return 0;
}

static char err_buf[512];

void help() {
	fprintf(stderr, "Parameters: <sda> <scl>\n");
	exit(1);
}

void err(char *desc) {
    fprintf(stderr, "%s: %s\n", desc, strerror(errno));
	exit(1);
}

void ferr(char *desc, char *fname) {
	snprintf(err_buf, sizeof(err_buf), "%s (%s)", desc, fname);
	err(err_buf);
}

int main(int argc, char **argv) {
	if (argc != 3) help();
	char *sda = argv[1];
	char *scl = argv[2];
	fprtinf(stderr, "SCL: %s SDA: %s\n", scl, sda);

	// Export SDA/SCL pins
	// TODO unpexport later?
	FILE *ex = fopen(EXPORT_PATH, "w");
	if (ex == NULL) {
		ferr("Failed to open", EXPORT_PATH);
		return 1;
	}
	int res = fprintf(ex, "%s\n", sda);
	if (res != strlen(sda) + 1) {
		snprintf(err_buf, sizeof(err_buf), "Failed to export %s. Only %i bytes written.\n", sda, res);
		err(err_buf);
	}
	int res = fprintf(ex, "%s\n", scl);
	if (res != strlen(scl) + 1) {
		snprintf(err_buf, sizeof(err_buf), "Failed to export %s. Only %i bytes written.\n", scl, res);
		err(err_buf);
	}
	fclose(ex);

	char file_name[512];
	
	snprintf(file_name, sizeof(file_name), "%s%s%s", GPIO_PATH, sda, GPIO_VAL);
	sdaVal = fopen(file_name, "rw");
	if (sdaVal == NULL) ferr("Failed to open", file_name);

	snprintf(file_name, sizeof(file_name), "%s%s%s", GPIO_PATH, scl, GPIO_VAL);
	sclVal = fopen(file_name, "rw");
	if (sclVal == NULL) ferr("Failed to open", file_name);

	snprintf(file_name, sizeof(file_name), "%s%s%s", GPIO_PATH, scl, GPIO_DIR);
	sdaDir = fopen(file_name, "rw");
	if (sdaDir == NULL) ferr("Failed to open", file_name);
	
	snprintf(file_name, sizeof(file_name), "%s%s%s", GPIO_PATH, scl, GPIO_DIR);
	sclDir = fopen(file_name, "rw");
	if (sclDir == NULL) ferr("Failed to open", file_name);

	unsigned char address = (0x2a << 1) & ~1;
	int res = try_address(address, 1);
	printf("Result of testing %i: %i\n", address, res);
}
