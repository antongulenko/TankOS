#ifndef DMS_INTERNAL_
#define DMS_INTERNAL_

#include <process/process.h>

// This is the most relevant internal kernel-function of this module.
// It is implemented in dms_scheduler.c
ProcessBase dms_schedule(BOOL invokedFromTimer);

#endif
