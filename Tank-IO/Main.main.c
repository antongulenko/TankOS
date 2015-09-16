
#include "kernel.h"

// Just say Hi go to sleep.
// Everything handled through interrupts.
int main() {
	controlLeds(allLedsC, LedsGroupRun);
}
