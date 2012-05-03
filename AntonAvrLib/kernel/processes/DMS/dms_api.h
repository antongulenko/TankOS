/*
 * dms_api.h
 *
 * Created: 16.02.2012 00:33:32
 *  Author: Anton
 */ 

// #define USE_DMS

#ifndef DMS_API_H_
#define DMS_API_H_

#include "../process.h"

typedef void JobEntryPoint();

// TODO allow defining additionalMemory for these jobs + getAdditionalDmsMemory(Process)

// Create a periodic job. Will be triggered every <period> milliseconds.
// Will run until it is ready.
// If processes created like this follow the semantics of DMS (regarding runtime and deadline),
// the scheduler will find a correct scheduling for them.
// The processes are sorted inverted by their period. For processes with the same period,
// the userPriority is the second sorting-criterion.
// The entryPoint must be a function, that executed a single job-period (without loops etc.)
// Each time the job is triggered, the function is executed from its beginning!
Process createPeriodicJob(JobEntryPoint entryPoint, uint32_t period, uint8_t userPriority);

// See createPeriodicJob.
// These jobs are not triggered autmatically, but can be triggered with triggerAperiodicJob().
// All other semantics are the same. The frequency of triggerAperiodicJob() must be less then
// minimalPeriod to ensure DMS-semantics.
Process createAperiodicJob(JobEntryPoint entryPoint, uint32_t minimalPeriod, uint8_t userPriority);

// Mark the job as ready to execute. Will be executed as soon as possible.
void triggerAperiodicJob(Process job);

#endif /* DMS_API_H_ */