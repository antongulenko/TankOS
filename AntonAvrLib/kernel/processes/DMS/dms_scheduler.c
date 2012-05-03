/*
 * dms_scheduler.c
 *
 * Created: 28.04.2012 18:27:00
 *  Author: Anton
 */ 

#include "dms_api.h"
#include "../scheduler.h"
#include "../process_internal.h"
#include "../../millisecond_clock.h"

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
	
	enum JobType jobType;
} Job, *PJob;

typedef struct {
	Job job;
	uint32_t nextPeriod;
} PeriodicJob, *PPeriodicJob;

typedef struct {
	Job job;
	BOOL wantsToRun;
} AperiodicJob, *PAperiodicJob;

#define JobMem(proc) ((PJob)getProcessMemory(proc))

void PeriodicJobWrapper(Process process) {
	PJob job = JobMem(process);
	PPeriodicJob periodicJob = (PPeriodicJob) job;
	while (1) {
		job->entryPoint();
		periodicJob->nextPeriod += job->period;
		schedule_next();
	}
}

void AperiodicJobWrapper(Process process) {
	PJob job = JobMem(process);
	PAperiodicJob aperiodicJob = (PAperiodicJob) job;
	while (1) {
		job->entryPoint();
		aperiodicJob->wantsToRun = FALSE;
		schedule_next();
	}
}

// The first element in the job list, the job with the highest priority.
Process processListHead;

Process dms_schedule(BOOL invokedFromTimer) {
	// invokedFromTimer parameter is ignored - if a Job calls schedule_next,
	// we schedule again; if a higher-prio aperiodic job has woken up, it will be scheduled;
	// else, the same job should scheduled again, because other periodic threads did not wake up yet.
	Process current = processListHead;
	while (current) {
		PJob job = JobMem(current);
		switch(job->jobType) {
			case (Periodic):
				if (((PPeriodicJob) job)->nextPeriod <= milliseconds_running) {
					return current;
				}
				break;
			case (Aperiodic):
				if (((PAperiodicJob) job)->wantsToRun == TRUE) {
					return current;
				}
				break;
		}
		current = job->nextJob;
	}
	return InvalidProcess;
}

void insertJobIntoList(Process process, PJob job) {
	if (!processListHead) {
		processListHead = process;
		job->nextJob = NULL;
	} else {
		Process current = processListHead;
		Process predecessor = NULL;
		while (current) {
			PJob currentJob = JobMem(current);
			if (currentJob->period > job->period)
				break;
			if (currentJob->period == job->period && currentJob->userPriority < job->userPriority)
				break;
			current = currentJob->nextJob;
		}
		job->nextJob = JobMem(predecessor)->nextJob;
		JobMem(predecessor)->nextJob = process;
	}
}

PJob initializeJob(Process process, JobEntryPoint entryPoint, uint32_t period, uint8_t userPriority) {
	PJob job = JobMem(process);
	job->entryPoint = entryPoint;
	job->userPriority = userPriority;
	job->period = period;
	insertJobIntoList(process, job);
	return job;
}

Process createPeriodicJob(JobEntryPoint entryPoint, uint32_t period, uint8_t userPriority) {
	Process process = createProcess3(&PeriodicJobWrapper, NULL, __default_stack_size, sizeof(PeriodicJob));
	PPeriodicJob job = (PPeriodicJob) initializeJob(process, entryPoint, period, userPriority);
	job->job.jobType = Periodic;
	job->nextPeriod = milliseconds_running + period;
	return process;
}

Process createAperiodicJob(JobEntryPoint entryPoint, uint32_t minimalPeriod, uint8_t userPriority) {
	Process process = createProcess3(&AperiodicJobWrapper, NULL, __default_stack_size, sizeof(AperiodicJob));
	PAperiodicJob job = (PAperiodicJob) initializeJob(process, entryPoint, minimalPeriod, userPriority);
	job->job.jobType = Aperiodic;
	job->wantsToRun = FALSE;
	return process;
}

void triggerAperiodicJob(Process proc) {
	((PAperiodicJob) JobMem(proc))->wantsToRun = TRUE;
}
