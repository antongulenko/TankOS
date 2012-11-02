#ifndef _MOTOR_SMOOTH_LOOP_KERNEL_KERNEL_
#define _MOTOR_SMOOTH_LOOP_KERNEL_KERNEL_

// Nothing to do here, motor_smooth_pair_tick() can be called safely,
// regardless of whether this was called with TRUE or FALSE before.
void motor_smooth_pair_enable_tick(BOOL enabled) {
}	

#endif