#ifndef IDLE_H_
#define IDLE_H_

// Set processor in idle-state. It will wake up from the 
// next interrupt (of any kind).
void processor_idle();

// Loop infinitely, setting the processor idle. Should be used as 
// a guard, if a certain context should never be continued,
// e.g. when waiting for a timer-interrupt. Reason: after waking 
// up from any (non-timer) interrupt, the processor will also continue
// the context, that called processor_idle().
void processor_loop_idle();

#endif