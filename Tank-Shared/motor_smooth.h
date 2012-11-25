#ifndef MOTOR_SMOOTH_SHARED_H_
#define MOTOR_SMOOTH_SHARED_H_

// If motor_smooth_interrupt.kernel.h is NOT included,
// this function should be called once every millisecond by the
// application code!
void motor_smooth_pair_tick();

// This calls motor_smooth_pair_tick and waits until a millisecond is over.
void smooth_motor_full_tick();

// Perform 'number' smooth-motor-ticks. This takes 'number' milliseconds.
void smooth_motor_full_ticks(uint16_t number);

// Call smooth_motor_full_tick() forever.
void smooth_motor_tick_forever();

#endif