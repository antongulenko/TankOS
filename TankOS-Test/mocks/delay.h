#ifndef __MOCK_TEST_DELAY__
#define __MOCK_TEST_DELAY__

extern uint32_t DelayedMS;
extern uint32_t DelayMSCalled;
extern uint32_t DelayedUS;
extern uint32_t DelayUSCalled;

void init_mock_delay();

// These are re-implemented here
void delay_ms(uint32_t ms);
void delay_us(uint32_t us);

#endif // __MOCK_TEST_DELAY__
