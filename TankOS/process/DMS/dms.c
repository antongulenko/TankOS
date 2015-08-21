/*
 * Created: 28.04.2012 18:27:00
 *  Author: Anton
 */

#include "api.h"
#include "scheduler.h"
#include <process/scheduler.h>
#include <process/process.h>
#include <kernel/millisecond_clock.h>

enum JobType {
	Periodic,
	Aperiodic
};

typedef struct Job_t {
	// Each job is assigned a distinct priority, by sorting them by their period.
	// Two jobs with the same period have to be decided, the second sorting parameter is
	// a priority given by the user.
	uint8_t userPriority;

	// This function will be executed each time the job is invoked.
	JobEntryPoint *entryPoint;

	// Single-Linked list link
	Process nextJob;

	// For the aperiodic job, this is the minimum period. It is not checked, but if the
	// job is scheduled more often, the DMS semantics are broken. For periodic jobs, this
	// is the milliseconds interval between two invokations of the job.
	uint32_t period;

	void *jobArgument;

	enum JobType jobType;
} Job, *PJob;

typedef struct PeriodicJob {
	Job job;
	uint32_t nextPeriod;
} PeriodicJob, *PPeriodicJob;

typedef struct AperiodicJob {
	Job job;
	BOOL wantsToRun;
} AperiodicJob, *PAperiodicJob;

#define JobMem(proc) ((PJob)getProcessExtra(proc))

typedef void RealJobEntryPoint(void *jobArgument);

void schedule_next_dms_job() {
	// When a DMS job is finished, we try to use the rest of the current CPU-quantum.
	// We cannot scheduler other Processes than DMS-jobs, because by switching the context
	// to a non-DMS-Process, the current DMS-job would 'become' that other Process and never
	// return to the PeriodicJobWrapper/AperiodicJobWrapper function.
	// So we try to schedule another DMS-job that needs to run right now.
	ProcessBase next = dms_schedule(FALSE);
	if (IsValid(next))
		switchProcessBase(next);
	else
		yield_quantum();
}

void PeriodicJobWrapper(Process process) {
	PJob job = JobMem(process);
	PPeriodicJob periodicJob = (PPeriodicJob) job;
	while (1) {
		job->entryPoint(job->jobArgument);
		periodicJob->nextPeriod += job->period;
		schedule_next_dms_job();
	}
}

void AperiodicJobWrapper(Process process) {
	PJob job = JobMem(process);
	PAperiodicJob aperiodicJob = (PAperiodicJob) job;
	while (1) {
		job->entryPoint(job->jobArgument);
		aperiodicJob->wantsToRun = FALSE;
		schedule_next_dms_job();
	}
}

// The first element in the job list, the job with the highest priority.
Process processListHead;

ProcessBase dms_schedule(BOOL invokedFromTimer) {
	// invokedFromTimer parameter is ignored - if a Job calls schedule_next,
	// we schedule again; if a higher-prio aperiodic job has woken up, it will be scheduled;
	// else, the same job should scheduled again, because other periodic threads did not wake up yet.
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		Process current = processListHead;
		while (IsValid(current)) {
			PJob job = JobMem(current);
			switch(job->jobType) {
				case (Periodic):
					if (((PPeriodicJob) job)->nextPeriod <= milliseconds_running) {
						return getProcessBase(current);
					}
					break;
				case (Aperiodic):
					if (((PAperiodicJob) job)->wantsToRun == TRUE) {
						return getProcessBase(current);
					}
					break;
			}
			current = job->nextJob;
		}
	}
	return Invalid(ProcessBase);
}

void insertJobIntoList(Process process, PJob job) {
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		if (!IsValid(processListHead)) {
			processListHead = process;
			job->nextJob = Invalid(Process);
		} else {
			Process current = processListHead;
			Process predecessor = Invalid(Process);
			while (IsValid(current)) {
				const PJob currentJob = JobMem(current);
				if (currentJob->period > job->period)
					break;
				if (currentJob->period == job->period && currentJob->userPriority < job->userPriority)
					break;
				predecessor = current;
				current = currentJob->nextJob;
			}
			job->nextJob = current;
			if (IsValid(predecessor)) {
				JobMem(predecessor)->nextJob = process;
			} else {
				processListHead = process;
			}
		}
	}
}

void initializeJob(Process process, PJob job, JobEntryPoint entryPoint, uint32_t period, uint8_t userPriority) {
	job->entryPoint = entryPoint;
	job->userPriority = userPriority;
	job->period = period;
	insertJobIntoList(process, job);
}

Process createPeriodicJob(JobEntryPoint entryPoint, uint32_t period) {
	return createPeriodicJob3(entryPoint, period, NULL, 0);
}

Process createPeriodicJob2(JobEntryPoint entryPoint, uint32_t period, void *jobArgument) {
	return createPeriodicJob3(entryPoint, period, jobArgument, 0);
}

Process createPeriodicJob3(JobEntryPoint entryPoint, uint32_t period, void *jobArgument, uint8_t userPriority) {
	Process process = createProcess3(&PeriodicJobWrapper, NULL, __default_stack_size);
	if (!IsValid(process))
		return Invalid(Process);
	PPeriodicJob job = (PPeriodicJob) JobMem(process);
	job->job.jobType = Periodic;
	job->job.jobArgument = jobArgument;
	job->nextPeriod = get_milliseconds_running() + period;
	initializeJob(process, (PJob) job, entryPoint, period, userPriority);
	return process;
}

Process createAperiodicJob(JobEntryPoint entryPoint, uint32_t minimalPeriod) {
	return createAperiodicJob3(entryPoint, minimalPeriod, NULL, 0);
}

Process createAperiodicJob2(JobEntryPoint entryPoint, uint32_t minimalPeriod, void *jobArgument) {
	return createAperiodicJob3(entryPoint, minimalPeriod, jobArgument, 0);
}

Process createAperiodicJob3(JobEntryPoint entryPoint, uint32_t minimalPeriod, void *jobArgument, uint8_t userPriority) {
	Process process = createProcess3(&AperiodicJobWrapper, NULL, __default_stack_size);
	if (!IsValid(process))
		return Invalid(Process);
	PAperiodicJob job = (PAperiodicJob) JobMem(process);
	job->job.jobType = Aperiodic;
	job->job.jobArgument = jobArgument;
	job->wantsToRun = FALSE;
	initializeJob(process, (PJob) job, entryPoint, minimalPeriod, userPriority);
	return process;
}

void triggerAperiodicJob(Process proc) {
	((PAperiodicJob) JobMem(proc))->wantsToRun = TRUE;
}

void freeJob(Process job) {
	if (!IsValid(job)) return;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		Process before = Invalid(Process);
		while (1) {
			Process next;
			if (!IsValid(before))
				next = processListHead;
			else
				next = JobMem(before)->nextJob;
			if (Equal(next, job)) break;
			if (!IsValid(next)) {
				// Process not found in list.
				job = Invalid(Process);
				break;
			}
			before = next;
		}
		if (!IsValid(job)) return;
		if (!IsValid(before)) {
			processListHead = JobMem(job)->nextJob;
		} else {
			JobMem(before)->nextJob = JobMem(job)->nextJob;
		}
	}
	destroyProcess(job);
}
