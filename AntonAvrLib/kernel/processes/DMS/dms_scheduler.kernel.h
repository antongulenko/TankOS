/*
 * dms_scheduler.kernel
 *
 * Created: 16.02.2012 00:33:18
 *  Author: Anton
 */ 

#ifndef _DMS_SCHEDULER_KERNEL_
#define _DMS_SCHEDULER_KERNEL_

#ifndef _PROCESS_KERNEL_
#error This scheduler-kernel-module requires the Process module to be included!
#endif

// This is the most relevant internal kernel-function of this module.
// It is implemented in dms_scheduler.c
Process dms_schedule(BOOL invokedFromTimer);

#endif