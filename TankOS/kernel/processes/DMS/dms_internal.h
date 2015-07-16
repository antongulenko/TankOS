#ifndef DMS_INTERNAL_
#define DMS_INTERNAL_

#include <kernel/processes/process.h>

// This is the most relevant internal kernel-function of this module.
// It is implemented in dms_scheduler.c
Process dms_schedule(BOOL invokedFromTimer);

#endif
