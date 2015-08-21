#ifndef RR_INTERNAL_H_
#define RR_INTERNAL_H_

#include "api.h"

// This is the most relevant internal kernel-function of this module.
ProcessBase rr_schedule(BOOL invokedFromTimer);

// Initialization function, that must be called before the scheduler is started (but after most other initialization).
void init_round_robin_scheduler();

// Separate init function for taking the current process (at that time the main process) and
// 'importing' it as a thread with the given priority.
void rr_captureMainThread(ThreadPriority mainThreadPriority);

#endif
