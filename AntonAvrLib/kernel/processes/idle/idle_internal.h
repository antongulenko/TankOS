#ifndef IDLE_SCHEDULER_INTERNAL_
#define IDLE_SCHEDULER_INTERNAL_

#include "../process.h"

void init_idle_scheduler();

Process idle_schedule(BOOL invokedFromTimer);

#endif