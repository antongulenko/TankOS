
#include <kernel.h>

int main() {
	setSpeedForward(LeftMotorBase, 0xFFFF);
	setSpeedForward(RightMotorBase, 0xFFFF);
	while (1) ;
}
