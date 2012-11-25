
#include <kernel.h>

int main() {
	setSpeedBackward(LeftMotorBase, 0xFFFF);
	setSpeedBackward(RightMotorBase, 0xFFFF);
	while (1) ;
}
