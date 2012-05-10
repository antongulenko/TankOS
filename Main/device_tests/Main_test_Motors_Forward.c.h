
// Obsolete.

#define PUFFER 3000
#define CHANGE_INTERVAL 20 // ms
uint16_t speed = PUFFER;
byte motor = 1;
byte direction = 1;
byte growing = 1;

uint16_t next = 0;

int main() {
	while (1) {
		
		while (next > milliseconds_running) ;
		
		if (growing) speed += 260;
		else speed -= 260;
		
		PMotor theMotor;
		if (motor) theMotor = LeftMotorBase;
		else theMotor = RightMotorBase;
		if (direction) {
			setSpeedForward(theMotor, speed);
		} else {
			setSpeedBackward(theMotor, speed);
		}
		if (motor) stopMotor(RightMotorBase);
		else stopMotor(LeftMotorBase);
		
		if (speed >= 0xFFFF - PUFFER || speed <= PUFFER) {
			if (!growing) {
				speed = PUFFER;
				if (!direction) motor = !motor;
				direction = !direction;
				stopMotor(LeftMotorBase);
				stopMotor(RightMotorBase);
				_delay_ms(100);
			}
			growing = !growing;
		}
		
		next = milliseconds_running + CHANGE_INTERVAL;
	}	
}
