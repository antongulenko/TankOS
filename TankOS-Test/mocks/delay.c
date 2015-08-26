
#include "delay.h"

uint32_t DelayedMS;
uint32_t DelayMSCalled;
uint32_t DelayedUS;
uint32_t DelayUSCalled;

void init_mock_delay() {
    DelayedMS = 0;
    DelayMSCalled = 0;
    DelayedUS = 0;
    DelayUSCalled = 0;
}

void delay_ms(uint32_t ms) {
    DelayedMS += ms;
    DelayMSCalled++;
}

void delay_us(uint32_t us) {
    DelayedUS += us;
    DelayUSCalled++;
}
