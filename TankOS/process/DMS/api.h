/*
 * Created: 16.02.2012 00:33:32
 *  Author: Anton
 */

#ifndef DMS_API_H_
#define DMS_API_H_

#include <process/process.h>

typedef void JobEntryPoint(/* void *jobArgument */);

// See createPeriodicJob3, jobArgument = NULL, userPriority = 0
Process createPeriodicJob(JobEntryPoint entryPoint, uint32_t period);

// See createPeriodicJob3, userPriority = 0
Process createPeriodicJob2(JobEntryPoint entryPoint, uint32_t period, void *jobArgument);

// Create a periodic job. Will be triggered every <period> milliseconds.
// Will run until it is ready.
// If processes created like this follow the semantics of DMS (regarding runtime and deadline),
// the scheduler will find a correct scheduling for them.
// The processes are sorted inverted by their period. For processes with the same period,
// the userPriority is the second sorting-criterion.
// The entryPoint must be a function, that executed a single job-period (without loops etc.)
// Each time the job is triggered, the function is executed from its beginning!
// jobArgument will be passed as argument to the entryPoint function every time the job is invoked.
Process createPeriodicJob3(JobEntryPoint entryPoint, uint32_t period, void *jobArgument, uint8_t userPriority);

// See createAperiodicJob3, jobArgument = NULL, userPriority = 0
Process createAperiodicJob(JobEntryPoint entryPoint, uint32_t minimalPeriod);

// See createAperiodicJob3, userPriority = 0
Process createAperiodicJob2(JobEntryPoint entryPoint, uint32_t minimalPeriod, void *jobArgument);

// See createPeriodicJob3.
// These jobs are not triggered autmatically, but can be triggered with triggerAperiodicJob().
// All other semantics are the same. The frequency of triggerAperiodicJob() must be less then
// minimalPeriod to ensure DMS-semantics.
Process createAperiodicJob3(JobEntryPoint entryPoint, uint32_t minimalPeriod, void *jobArgument, uint8_t userPriority);

// Mark the job as ready to execute. Will be executed as soon as possible.
void triggerAperiodicJob(Process job);

// Free the memory occupied by the job and stop scheduling it.
// This required process_ext.kernel.o linked.
void freeJob(Process job);

#endif /* DMS_API_H_ */
