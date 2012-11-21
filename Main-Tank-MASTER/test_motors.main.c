
#include <kernel.h>

#define MotL LeftMotor
#define MotR RightMotor
#define MotLBase LeftMotorBase
#define MotRBase RightMotorBase

#define DELAY_CHANGE _delay_ms(3000);

void regulateBoth() {
	while (1) {
		regulateSpeed(MotR, 0xFFFF, FORWARD);
		regulateSpeed(MotL, 0xFFFF, BACKWARD);
		DELAY_CHANGE
		regulateStopMotor(MotR);
		regulateStopMotor(MotL);
		DELAY_CHANGE
		regulateSpeed(MotR, 0xFFFF, BACKWARD);
		regulateSpeed(MotL, 0xFFFF, FORWARD);
		DELAY_CHANGE
	}
}

void regulateOne(PSmoothMotor motor) {
	while (1) {
		regulateSpeed(motor, 0xFFFF, FORWARD);
		DELAY_CHANGE
		regulateStopMotor(motor);
		DELAY_CHANGE
		regulateSpeed(motor, 0xFFFF, BACKWARD);
		DELAY_CHANGE
	}
}

void regulateOneAtATime() {
	while (1) {
		regulateSpeed(MotR, 0xFFFF, FORWARD);
		DELAY_CHANGE
		regulateStopMotor(MotR);
		DELAY_CHANGE
		regulateSpeed(MotR, 0xFFFF, BACKWARD);
		DELAY_CHANGE
		regulateStopMotor(MotR);
		DELAY_CHANGE
		
		regulateSpeed(MotL, 0xFFFF, FORWARD);
		DELAY_CHANGE
		regulateStopMotor(MotL);
		DELAY_CHANGE
		regulateSpeed(MotL, 0xFFFF, BACKWARD);
		DELAY_CHANGE
		regulateStopMotor(MotL);
		DELAY_CHANGE
	}	
}

void bothSimple(MotorDirection dir) {
	uint16_t speed = 300;
	while (1) {
		setSpeed(MotLBase, speed, dir);
		setSpeed(MotRBase, speed, dir);
		speed += 13; // 0 to 0xFFFF in ca 5 seconds (excl. computation)
		_delay_ms(1);
	}
}

void bothSimpleSteps(MotorDirection dir) {
	uint16_t speed;
	while (1) {
		speed = 13071; // 1/5
		setSpeed(MotLBase, speed, dir);
		setSpeed(MotRBase, speed, dir);
		_delay_ms(1500);
		speed = 26142; // 2/5
		setSpeed(MotLBase, speed, dir);
		setSpeed(MotRBase, speed, dir);
		_delay_ms(1500);
		speed = 39213; // 3/5
		setSpeed(MotLBase, speed, dir);
		setSpeed(MotRBase, speed, dir);
		_delay_ms(1500);
		speed = 52284; // 4/5
		setSpeed(MotLBase, speed, dir);
		setSpeed(MotRBase, speed, dir);
		_delay_ms(1500);
		speed = 65355; // bit less than 5/5
		setSpeed(MotLBase, speed, dir);
		setSpeed(MotRBase, speed, dir);
		_delay_ms(1500);
		speed = 65535; // 5/5
		setSpeed(MotLBase, speed, dir);
		setSpeed(MotRBase, speed, dir);
		_delay_ms(1500);
	}
}

void loopMotorTick() {
	motor_smooth_pair_tick();
	_delay_us(935); // the motors_smooth_pair_tick takes ~1320 cycles = ~65us
}	

void loopDelay() {
	uint16_t t = 3000;
	while (t > 1) {
		t--;
		loopMotorTick();
	}
}	

void regulateOneLoop(PSmoothMotor motor) {
	while (1) {
		regulateSpeed(motor, 0xFFFF, FORWARD);
		loopDelay();
		regulateStopMotor(motor);
		loopDelay();
		regulateSpeed(motor, 0xFFFF, BACKWARD);
		loopDelay();
	}
}

void regulateOneForeverLoop(PSmoothMotor motor, uint16_t speed, MotorDirection dir) {
	regulateSpeed(motor, speed, dir);
	while (1) {
		loopMotorTick();
	}
}

void regulateTestMotor(PMotor m) {
	uint16_t speed = 0;
	uint16_t step = 13;
	while (speed < 0xffff - step) {
		setSpeedForward(m, speed);
		speed += step;
		_delay_us(500);
	}
	
	speed = 0xffff;
	step = 13;
	while (speed > step) {
		setSpeedForward(m, speed);
		speed -= step;
		_delay_us(500);
	}
}

int simpleTestMotors() {
	while (1) {
		regulateTestMotor(MotLBase);
		stopMotor(MotLBase);
		regulateTestMotor(MotRBase);
		stopMotor(MotRBase);
	}
}

void randomTest(PSmoothMotor motor) {
	srand(24593);
	while (1) {
		regulateDirSpeed(motor, (int16_t) rand());
		_delay_ms(2500);
	}
}

int16_t randomSpeed() {
	// Min speed 20%: 13107
	int16_t speed = rand() % (0xFFFF - 13107) + 13107;
	if (rand() > (RAND_MAX / 2)) speed *= -1;
	return speed;
}

void randomTestBoth() {
	srand(24593);
	while (1) {
		regulateDirSpeed(LeftMotor, randomSpeed());
		regulateDirSpeed(RightMotor, randomSpeed());
		_delay_ms(2500);
	}
}



int main() {
	
	// regulateOneAtATime();
	// regulateBoth();
	// regulateOne(MotR);
	// regulateOne(MotL);
	// regulateOneLoop(MotL);
	// bothSimple(FORWARD);
	// bothSimple(BACKWARD);
	
	// bothSimpleSteps(FORWARD);
	
	// regulateOneForeverLoop(MotL, 0xFFFF, FORWARD);
	// regulateSpeed(MotL, 0xFFFF, FORWARD);
	// simpleTestMotors();
	
	randomTestBoth();
	// randomTest(MotL);
	
	// setSpeedForward(MotLBase, 0xFFFF);
	// setSpeedForward(MotRBase, 0xFFFF);
	
	while (1) ;
}
