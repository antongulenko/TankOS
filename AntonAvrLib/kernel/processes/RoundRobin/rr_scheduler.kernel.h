/*
 * rr_scheduler.kernel
 *
 * Created: 21.04.2012 19:04:39
 *  Author: Anton
 */ 

#ifndef _RR_SCHEDULER_KERNEL_
#define _RR_SCHEDULER_KERNEL_

#include "rr_api.h"

#ifndef _PROCESS_KERNEL_
#error This scheduler-kernel-module requires the Process module to be included!
#endif

// This is the most relevant internal kernel-function of this module.
// It is implemented in rr_scheduler.c
Process rr_schedule(BOOL invokedFromTimer);

// Initialization function, that must be called before the scheduler is started (but after most other initialization).
// Takes the current process (at that time the main process) 'imports' it as a thread with the given prioity.
void rr_captureMainProcess(ThreadPriority prio);

#endif