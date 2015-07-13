
#include <kernel/twi/services/reset_condition.h>
#include <native_simulation.h>

void init_reset_condition(); // kernel/reset_condition.kernel.c

void setUp() {
    MCUSR = 0xff;
    init_reset_condition();
}

void tearDown() {
}

void test_query_condition() {
}
