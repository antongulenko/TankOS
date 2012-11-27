
#include <kernel_base.h>

#define NUM_JOBS 12
extern volatile unsigned long jobCounters[NUM_JOBS];

void IncrementCounter(volatile unsigned long *counter);

void IncrementCounterLoop(volatile unsigned long *counter);
