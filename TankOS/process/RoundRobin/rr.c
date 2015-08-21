/*
 * Created: 28.04.2012 18:31:06
 *  Author: Anton
 */

#include "api.h"
#include <kernel/klib.h>
#include <uthash/utlist.h>

#define NUM_PRIOS 7

struct ThreadQueue;

typedef struct ThreadQueueElement {
	struct ThreadQueue *queue;
    Thread thread;
	struct ThreadQueueElement *prev;
    struct ThreadQueueElement *next;
    BOOL suspended;
} *ThreadQueueElement;

typedef struct ThreadQueue {
	ThreadQueueElement head;
	uint8_t count;
    ThreadPriority priority;
} *ThreadQueue;

ThreadPriority highestPrio = PrioLowest;
struct ThreadQueue queues[NUM_PRIOS];

static Thread initThread(ThreadPriority prio, Process process) {
    if (prio < PrioLowest || prio > PrioHighest)
        return Invalid(Thread);
    if (!IsValid(process))
        return Invalid(Thread);
    if (getProcessExtra(process) != NULL) // Already in use
        return Invalid(Thread);
    Thread thread = Cast(Thread, process);
    ThreadQueueElement elem = kalloc(sizeof(struct ThreadQueueElement));
    if (!elem) return Invalid(Thread);
    elem->prev = elem->next = NULL;
    elem->thread = thread;
    elem->queue = &queues[prio];
    elem->suspended = TRUE;
    setProcessExtra(process, (void*) elem);
    return thread;
}

static inline ThreadQueueElement getQueueElement(Thread thread) {
    if (!IsValid(thread)) return NULL;
    void *extra = getProcessExtra(getThreadProcess(thread));
    return (ThreadQueueElement) extra;
}

static ThreadQueue getThreadQueue(Thread thread) {
    ThreadQueueElement elem = getQueueElement(thread);
    if (elem)
        return elem->queue;
    else
        return NULL;
}

Thread newThread(ThreadPriority priority, Process process) {
    Thread thread = initThread(priority, process);
    resumeThread(thread);
	return thread;
}

inline Process getThreadProcess(Thread thread) {
    return Cast(Process, thread);
}

Thread destroyThread(Thread thread) {
    if (!IsValid(thread))
        return Invalid(Thread);
    if (Equal(thread, getCurrentThread()))
        return thread;
    suspendThread(thread);
    destroyProcess(getThreadProcess(thread));
    return Invalid(Thread);
}

ProcessBase rr_schedule(BOOL invokedFromTimer) {
	ThreadQueueElement current;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		ThreadQueue queue = &queues[highestPrio];
		if (queue->count == 0) // Nothing to schedule?
			return Invalid(ProcessBase);

		current = queue->head;
        queue->head = current->next;
	}
    Process proc = getThreadProcess(current->thread);
	return getProcessBase(proc);
}

void init_round_robin_scheduler() {
    for (int i = 0; i < NUM_PRIOS; i++) {
        queues[i].priority = i;
        queues[i].head = NULL;
        queues[i].count = 0;
    }
    highestPrio = PrioLowest;
}

void rr_captureMainThread(ThreadPriority mainThreadPriority) {
    Process mainProcess = getCurrentProcess();
    Thread mainThread = newThread(mainThreadPriority, mainProcess);
    if (!IsValid(mainThread))
        klog("fmT\n"); // Failed to create main Thread
}

Thread getCurrentThread() {
	return Cast(Thread, getCurrentProcess());
}

ThreadPriority getThreadPriority(Thread thread) {
    ThreadQueue queue = getThreadQueue(thread);
    if (queue)
        return queue->priority;
    else
        return PrioLowest;
}

BOOL suspendThread(Thread thread) {
    if (!IsValid(thread)) return FALSE;
    ThreadQueueElement elem = getQueueElement(thread);
    if (!elem) return FALSE;
    ThreadQueue queue = elem->queue;
    if (!queue) return FALSE;
    if (elem->suspended) return FALSE;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        CDL_DELETE(queue->head, elem);
        queue->count--;
        while (highestPrio > 0 && queues[highestPrio].count == 0)
            highestPrio--;
        elem->suspended = TRUE;
    }
    return TRUE;
}

BOOL resumeThread(Thread thread) {
    if (!IsValid(thread)) return FALSE;
    ThreadQueueElement elem = getQueueElement(thread);
    if (!elem) return FALSE;
    ThreadQueue queue = elem->queue;
    if (!queue) return FALSE;
    if (!elem->suspended) return FALSE;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        CDL_PREPEND(queue->head, elem);
		queue->count++;
		if (queue->priority > highestPrio) highestPrio = queue->priority;
        elem->suspended = FALSE;
	}
    return TRUE;
}
