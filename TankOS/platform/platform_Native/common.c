
#include <tank_os_common.h>
#include <time.h>

void delay_ms(uint32_t ms) {
    struct timespec t;
    t.tv_sec = 0;
    t.tv_nsec = ms * 1000 * 1000;
    nanosleep(&t, NULL);
}

void delay_us(uint32_t us) {
    struct timespec t;
    t.tv_sec = 0;
    t.tv_nsec = us * 1000;
    nanosleep(&t, NULL);
}
