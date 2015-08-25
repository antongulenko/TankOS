#define RPC_CLIENT_IMPLEMENTATION
#include "tank_driver_service.h"

int tank_driver_get_motor_speed_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length) {
    if (results_length != sizeof(MotorStatus)) return 0;
    MotorStatus *status = (MotorStatus*) results;
    int res = print("Motor ");
    switch ((TankMotorNum) status->motorNum) {
        case MOTOR_LEFT:
            res += print("left");
            break;
        case MOTOR_RIGHT:
            res += print("right");
            break;
        default:
            res += print("(invalid TankMotorNum %i)", status->motorNum);
    }
    res += print(": ");
    switch ((MotorDirection) status->direction) {
        case MotorStopped:
            res += print("stopped");
            break;
        case MotorForward:
            res += print("forward");
            break;
        case MotorBackward:
            res += print("backward");
            break;
        default:
            res += print("(invalid MotorDirection %i)", status->direction);
    }
    double speedPercent = (double) status->speed / ((double) (uint16_t) 0xFFFF / (double) 100);
    res += print(" %.2f%% (%u)", speedPercent, status->speed);
    return res;
}
