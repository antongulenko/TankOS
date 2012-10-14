
#define DELAY_CHANGE _delay_ms(3000);

void regulateBoth() {
	while (1) {
		regulateSpeed(RightMotor, 0xFFFF, FORWARD);
		regulateSpeed(LeftMotor, 0xFFFF, BACKWARD);
		DELAY_CHANGE
		regulateStopMotor(RightMotor);
		regulateStopMotor(LeftMotor);
		DELAY_CHANGE
		regulateSpeed(RightMotor, 0xFFFF, BACKWARD);
		regulateSpeed(LeftMotor, 0xFFFF, FORWARD);
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
		regulateSpeed(RightMotor, 0xFFFF, FORWARD);
		DELAY_CHANGE
		regulateStopMotor(RightMotor);
		DELAY_CHANGE
		regulateSpeed(RightMotor, 0xFFFF, BACKWARD);
		DELAY_CHANGE
		regulateStopMotor(RightMotor);
		DELAY_CHANGE
		
		regulateSpeed(LeftMotor, 0xFFFF, FORWARD);
		DELAY_CHANGE
		regulateStopMotor(LeftMotor);
		DELAY_CHANGE
		regulateSpeed(LeftMotor, 0xFFFF, BACKWARD);
		DELAY_CHANGE
		regulateStopMotor(LeftMotor);
		DELAY_CHANGE
	}	
}

void bothSimple(MotorDirection dir) {
	uint16_t speed = 0;
	while (1) {
		setSpeed(LeftMotorBase, speed, dir);
		setSpeed(RightMotorBase, speed, dir);
		speed += 13; // 0 to 0xFFFF in ca 5 seconds (excl. computation)
		_delay_ms(1);
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
		regulateTestMotor(TestMotorLeftBase);
		stopMotor(TestMotorLeftBase);
		regulateTestMotor(TestMotorRightBase);
		stopMotor(TestMotorRightBase);
	}
}

int main() {
	// regulateOneAtATime();
	// regulateBoth();
	// regulateOne(RightMotor);
	// regulateOne(LeftMotor);
	// regulateOneLoop(LeftMotor);
	// bothSimple(FORWARD);
	// bothSimple(BACKWARD);
	
	regulateOneForeverLoop(LeftMotor, 0xFFFF, FORWARD);
	
	// simpleTestMotors();
	
	// setSpeedForward(LeftMotorBase, 0xFFFF);
	// setSpeedBackward(RightMotorBase, 0x8000);
}
