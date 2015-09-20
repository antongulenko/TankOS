#ifndef __RESET_CONDITION_H__
#define __RESET_CONDITION_H__

#include <tank_os_common.h>

typedef enum {
    PowerOnReset = _BV(15),
    WatchDogReset = _BV(14),
    BrownOutReset = _BV(13),
    ExternalReset = _BV(12),
    JtagReset = _BV(11),
    OtherReset = _BV(10)
} ResetConditionBit;

typedef uint16_t ResetCondition;

char *resetConditionString(ResetCondition condition);

#endif //__RESET_CONDITION_H__
