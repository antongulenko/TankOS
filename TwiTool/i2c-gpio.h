#ifndef ___i2c__gpio__custom___
#define ___i2c__gpio__custom___

#include <tank_os_common.h>

#define GPIO_PATH_EXPORT "/sys/class/gpio/export"
#define GPIO_PATH_UNEXPORT "/sys/class/gpio/unexport"
#define GPIO_PATH "/sys/class/gpio/gpio"
#define GPIO_DIR "/direction"
#define GPIO_VAL "/value"

#define LOCK_FILE "/tmp/i2c-gpio.lock"
#define LOCK_WAIT_MILLIS 2
#define LOCK_RETRIES 750

// SCL timeout after 1 second
#define SCL_TIMEOUT_SLEEP_MICRO 5
#define SCL_TIMEOUT_RETRIES 200000
#define SDA_TIMEOUT_SLEEP_MICRO 1
#define SDA_TIMEOUT_RETRIES 20000

#define DELAY_STRETCH 1.0
// #define DO_DEBUG
// #define DO_TRACE

typedef enum {
    ERR_SEEK_FAILED = -1,
    ERR_READ_FAILED = -2,
    ERR_BOGUS_VALUE = -3,
    ERR_WRITE_FAILED = -4,
    ERR_SCL_HI_TIMEOUT = -5,
    ERR_SCL_NOT_LO = -6,
    ERR_OPEN_FAILED = -7,
    ERR_EXPORT_FAILED = -8,
    ERR_UNEXPORT_FAILED = -9,
    ERR_LOCK_TIMEOUT = -10,
    ERR_LOCK_FAILED = -11,
    ERR_RELEASE_LOCK_FAILED = -12,
    ERR_ARBITRATION_LOST = -13,
    ERR_SDA_HI_TIMEOUT = -14
} GpioError;

typedef struct GpioI2C {
    // Input
    char *sdaPinNum;
    char *sclPinNum;
    
    // Internal state
    int lock_fd;
    int sdaVal;
    int sclVal;
    int sdaDir;
    int sclDir;
} *GpioI2C;

int i2c_gpio_init(GpioI2C bus);
int i2c_gpio_destroy(GpioI2C bus);
int i2c_gpio_cleanup(GpioI2C bus); // does not need *init()

int i2c_gpio_start(GpioI2C bus);
int i2c_gpio_repstart(GpioI2C bus);
int i2c_gpio_stop(GpioI2C bus);

int i2c_gpio_write(GpioI2C bus, unsigned char val);
int i2c_gpio_read(GpioI2C bus);

int i2c_gpio_try_address(GpioI2C bus, unsigned char address);
int i2c_gpio_retry_address(GpioI2C bus, unsigned char address, int retries);

// For result values < 0
char *i2c_gpio_errstring(int err);

#endif
