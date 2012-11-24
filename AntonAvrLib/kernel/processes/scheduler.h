/*
 * scheduler.h
 *
 * Created: 11.02.2012 12:10:15
 *  Author: Anton
 */ 

#ifndef SCHEDULER_H_
#define SCHEDULER_H_

// This can be invoked to switch to the next process chosen by the scheduler.
void schedule_next();

// Put the processor in sleeping-mode, until the current quantum has expired.
// This call will return as soon as the current process is scheduled again.
// During the current quantum, no other processes will be running. This is used to ensure
// correct semantics when using multiple scheduler-algorithms together, like DMS and RR.
void yield_quantum();

#endif /* SCHEDULER_H_ */