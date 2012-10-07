

int main() {
	
	DDRD = 0xFF;
	PORTD = 1 << PORTD7;
	
	if (1) return 1;
	
	int a = 0;
	if (a) {
		TCCR2A = 0b10100001;
		TCCR2B = 0b00000001;
		
		OCR2A = 0xFF;
		OCR2B = 0;
		
		_delay_ms(3000);
		
		uint8_t speed = 0xFF;
		#define STEP 1
		while (speed > STEP) {
			OCR2A = speed;
			speed -= STEP;
			_delay_ms(20);
		}
		OCR2A = 0xFF;
		
	} else {	
		
		setPinOutput(PinD7);
		setPinOne(PinD7);
		
		setTimerClockSelect(Timer2, prescale_1);
		setWaveformGenerationMode(Timer2, pwm_phase_correct);
	
		setCompareMatchOutputMode(Timer2A, clear_on_match);
		setCompareMatchOutputMode(Timer2B, clear_on_match);
		//setTimerCompareValue(Timer2A, 0);
		setTimerCompareValue(Timer2B, 0);
	
		setTimerCompareValue(Timer2A, 0xFFFF);
		
		_delay_ms(10000);
		
		uint16_t speed = 0xFFFF;
		#define STEP2 13
		while (speed > STEP2) {
			setTimerCompareValue(Timer2A, speed);
			speed -= STEP2;
			_delay_ms(1);
		}
	}
}
