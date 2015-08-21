/*
 * Created: 28.04.2012 18:31:06
 *  Author: Anton
 */

#include "api.h"
#include <kernel/klib.h>

#define NUM_PRIOS 7

typedef struct struct_ThreadQueueElement {
	Thread thread;
	struct struct_ThreadQueueElement *next;
} ThreadQueueElement, *PThreadQueueElement;

typedef struct ThreadQueue {
	PThreadQueueElement first;
	PThreadQueueElement current;
	uint8_t count;
    ThreadPriority priority;
} ThreadQueue, *PThreadQueue;

ThreadPriority highestPrio = PrioLowest;
ThreadQueue queues[NUM_PRIOS];

static PThreadQueue getThreadQueue(Thread thread) {
    if (!IsValid(thread)) return NULL;
    void *extra = getProcessExtra(Cast(Process, thread));
    return (PThreadQueue) extra;
}

void insertThreadIntoQueue(Thread thread, ThreadPriority prio) {
    if (!IsValid(thread)) return;
	PThreadQueue queue = &queues[prio];
    PThreadQueueElement elem = (PThreadQueueElement) kcalloc(1, sizeof(ThreadQueueElement));
    if (!elem) return;
    elem->thread = thread;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		elem->next = queue->first;
		queue->first = elem;
		if (queue->count == 0)
			queue->current = elem;
		queue->count++;
		if (prio > highestPrio) highestPrio = prio;
	}
    setProcessExtra(Cast(Process, thread), (void*) queue);
}

void removeThreadFromQueue(Thread thread) {
    PThreadQueue queue = getThreadQueue(thread);
    PThreadQueueElement prev = NULL;
    PThreadQueueElement elem = queue->first;
    while (elem != NULL) {
        if (Equal(elem->thread, thread)) {
            if (prev)
                prev->next = elem->next;
            else
                queue->first = elem->next;
            if (Equal(queue->current->thread, thread))
                queue->current = queue->first;
            queue->count--;
            return;
        }
        prev = elem;
        elem = elem->next;
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
	Thread thread = Cast(Thread, createProcess3(entry, threadParameter, stackSize));
	insertThreadIntoQueue(thread, prio);
	return thread;
}

Thread destroyThread(Thread thread) {
    if (!IsValid(thread))
        return Invalid(Thread);
    if (Equal(thread, getCurrentThread()))
        return thread;
    removeThreadFromQueue(thread);
    destroyProcess(Cast(Process, thread));
    return Invalid(Thread);
}

ProcessBase rr_schedule(BOOL invokedFromTimer) {
	PThreadQueueElement current;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		// Lower the top-priority, if necessary. It must be increased at all relevant places!
		while (highestPrio > 0 && queues[highestPrio].count == 0) highestPrio--;

		PThreadQueue queue = &queues[highestPrio];

		// Nothing to schedule?
		if (queue->count == 0)
			return Invalid(ProcessBase);

		current = queue->current;
		current = current->next == NULL ? queue->first : current->next;
		queue->current = current;
	}
    Process proc = Cast(Process, current->thread);
	return getProcessBase(proc);
}

void init_round_robin_scheduler() {
    for (int i = 0; i < NUM_PRIOS; i++) {
        queues[i].priority = i;
        queues[i].first = queues[i].current = NULL;
        queues[i].count = 0;
    }
    highestPrio = PrioLowest;
}

void rr_captureMainThread(ThreadPriority mainThreadPriority) {
    Process mainProcess = getCurrentProcess();
    if (IsValid(mainProcess))
        insertThreadIntoQueue(Cast(Thread, mainProcess), mainThreadPriority);
    else
        klog("imT\n"); // Illegal main Thread
}

Thread getCurrentThread() {
	return Cast(Thread, getCurrentProcess());
}

ThreadPriority getThreadPriority(Thread thread) {
    PThreadQueue queue = getThreadQueue(thread);
    if (queue)
        return queue->priority;
    else
        return PrioLowest;
}
