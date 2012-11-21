#ifndef _MOTOR_SMOOTH_PAIR_H_
#define _MOTOR_SMOOTH_PAIR_H_

#include "motor_smooth.h"

// This function must be invoked by another module on a regular basis to control
// the smooth steering of a motor pair.
// The same module must implement another function controlling whether this ticking
// should be enabled or disabled (see motor_smooth_pair.kernel.c)
void motor_smooth_pair_tick();

// Set these variables to the smooth motors that should be controlled by the
// motor_smooth_pair.kernel module.
extern PSmoothMotor SmoothMotor1;
extern PSmoothMotor SmoothMotor2;

#endif