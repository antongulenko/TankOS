
#include "kernel.h"
#include <stdio.h>

int main() {
    if (!IsValid(tank_arm_step_motor)) {
        printf("BAD\n");
    } else {
        printf("OK\n");
    }
}
