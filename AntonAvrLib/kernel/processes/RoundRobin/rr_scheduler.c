/*
 * rr_scheduler.c
 *
 * Created: 28.04.2012 18:31:06
 *  Author: Anton
 */ 

#include "rr_api.h"

#define NUM_PRIOS 7

typedef struct struct_ThreadQueueElement {
	Thread thread;
	struct struct_ThreadQueueElement *next;
} ThreadQueueElement, *PThreadQueueElement;

typedef struct {
	PThreadQueueElement first;
	PThreadQueueElement current;
	uint8_t count;
} ThreadQueue, *PThreadQueue;

ThreadPriority highestPrio = PrioLowest;
ThreadQueue queues[NUM_PRIOS];

void insertThreadIntoQueue(Thread thread, ThreadPriority prio) {
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		PThreadQueue queue = &queues[prio];
		PThreadQueueElement elem = (PThreadQueueElement) calloc(1, sizeof(ThreadQueueElement));
		elem->thread = thread;
		elem->next = queue->first;
		queue->first = elem;
		if (queue->count == 0)
			queue->current = elem;
		queue->count++;
		if (prio > highestPrio) highestPrio = prio;
	}	
}

Thread createThread(ThreadEntryPoint entry) {
	return createThread2(entry, PrioNormal);
}

Thread createThread2(ThreadEntryPoint entry, ThreadPriority prio) {
	Thread thread = Cast(Thread, createProcess(entry));
	insertThreadIntoQueue(thread, prio);
	return thread;
}

Thread createThread3(ThreadEntryPoint entry, ThreadPriority prio, void *threadParameter) {
	Thread thread = Cast(Thread, createProcess2(entry, threadParameter));
	insertThreadIntoQueue(thread, prio);
	return thread;
}

Thread createThread4(ThreadEntryPoint entry, ThreadPriority prio, void *threadParameter, uint16_t stackSize) {
	Thread thread = Cast(Thread, createProcess3(entry, threadParameter, stackSize, 0));
	insertThreadIntoQueue(thread, prio);
	return thread;
}

Process rr_schedule(BOOL invokedFromTimer) {
	PThreadQueueElement current;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		// Lower the top-priority, if necessary. It must be increased at all relevant places!
		while (highestPrio > 0 && queues[highestPrio].count == 0) highestPrio--;
		
		PThreadQueue queue = &queues[highestPrio];
		
		// Nothing to schedule?
		if (queue->count == 0)
			return Invalid(Process);
		
		current = queue->current;
		current = current->next == NULL ? queue->first : current->next;
		queue->current = current;
	}
	return Cast(Process, current->thread);
}

void rr_captureMainProcess(ThreadPriority prio) {
	insertThreadIntoQueue(Cast(Thread, getCurrentProcess()), prio);
}

Thread getCurrentThread() {
	return Cast(Thread, getCurrentProcess());
}
