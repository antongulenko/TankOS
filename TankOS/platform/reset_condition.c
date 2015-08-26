
#include <platform/reset_condition.h>

char *resetConditionString(ResetCondition condition) {
    if (condition & PowerOnReset) {
        return "Power On Reset";
    } else if (condition & WatchDogReset) {
        return "Watchdog Reset";
    } else if (condition & BrownOutReset) {
        return "Brown Out Reset";
    } else {
        return "Other";
    }
}
