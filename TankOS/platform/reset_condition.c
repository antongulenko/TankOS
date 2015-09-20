
#include <platform/reset_condition.h>
#include <stdio.h>

// Maximal buffer
static char buf[] = "0xFF: Power On Reset, Watchdog Reset, Brown Out Reset, JTAG Reset, External Reset, Unclean ResetXXXXX";
static BOOL printed;
static int pos;

static int addprint(char *str) {
    if (printed)
        pos += snprintf(buf+pos, sizeof(buf)-pos, ", ");
    pos += snprintf(buf+pos, sizeof(buf)-pos, "%s", str);
    printed = TRUE;
    return pos;
}

char *resetConditionString(ResetCondition condition) {
    printed = FALSE;
    pos = snprintf(buf, sizeof(buf), "0x%.2x: ", condition);
    if (condition & PowerOnReset) {
        addprint("Power On Reset");
    }
    if (condition & WatchDogReset) {
        addprint("Watchdog Reset");
    }
    if (condition & BrownOutReset) {
        addprint("Brown Out Reset");
    }
    if (condition & JtagReset) {
        addprint("JTAG Reset");
    }
    if (condition & ExternalReset) {
        addprint("External Reset");
    }
    if (condition & UncleanReset) {
        addprint("Unclean Reset");
    }
    if (!printed) {
        addprint("UNKNOWN Reset");
    }
    return buf;
}
