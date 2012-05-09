
// Funktioniert.

int main() {
	while (1) {
		setLed(LeftYellow, buttonStatus(ButtonLeftBackward));
		setLed(LeftRed, buttonStatus(ButtonLeftForward));
		setLed(RightYellow, buttonStatus(ButtonRightBackward));
		setLed(RightRed, buttonStatus(ButtonRightForward));
	}
}
