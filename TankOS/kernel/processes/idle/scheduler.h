#ifndef IDLE_SCHEDULER_INTERNAL_
#define IDLE_SCHEDULER_INTERNAL_

#include <kernel/processes/process.h>
ProcessBase idle_schedule(BOOL invokedFromTimer);

// Must be called from a KERNEL_INIT routine
void init_idle_scheduler();

#endif
