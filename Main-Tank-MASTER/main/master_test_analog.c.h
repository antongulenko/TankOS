
#define USE_ANALOG_INTERRUPT

uint8_t ana_result = 0;
BOOL ana_res_ready = FALSE;

void ana_callback(uint8_t result) {
	ana_result = result;
	ana_res_ready = TRUE;
}	

BOOL ana_read(PAnalogInput input) {
	ana_res_ready = FALSE;
	#ifdef USE_ANALOG_INTERRUPT
		if (!analogRead(input, ana_callback)) return FALSE;
		while (!ana_res_ready) ;
	#else
		if (!analogReadLoop(input, &ana_result))
			return FALSE;
	#endif
	return TRUE;
}

void initMotor_2Speed(PMotor2Speed);
Motor2Speed AnalogTestMotor_;
PMotor AnalogTestMotor;

int main() {
	
	// Copy the analog input from Pin A0 as PWM to the
	// output-compare pin of Timer 2A
	AnalogTestMotor_ =
		(Motor2Speed) { { MOTOR_NORMAL, motor2Speed_setDirSpeed,
			motor2Speed_getDirSpeed, 0, 0xFFFF},
			Timer2B, Timer2B };
	AnalogTestMotor = (PMotor) &AnalogTestMotor_;
	initMotor_2Speed(&AnalogTestMotor_);
	while (1) {
		while (!ana_read(Analog0)) ;
		setSpeedForward(AnalogTestMotor, MAKE_WORD(ana_result, 0));
	}
}
