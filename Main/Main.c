/*
 * Main.c
 * 
 * This file chooses the actual Main-file by defining the correct Macro.
 * This enables to use multiple Main-files and always execute one of them.
 * Also, std.h is included by default.
 * 
 * Created: 10.02.2012 13:08:01
 *  Author: Anton
 */ 

// This header is resolved differently, depending on the include-path. Each kernel-project has this header.
#include <kernel.h>

// #include "../Main-Tank-IO/tank_IO/Main.c.h"

// #include "device_tests/Main_test_NIBObee_SmoothMotors_Steps.c.h"
// #include "device_tests/Main_test_NIBObee_SmoothMotors.c.h"
#include "device_tests/Main_bgx1_print.c.h"
// #include "device_tests/Main_bgx1_gfx.c.h"

// #include "device_tests/Main_test_blink_AllLeds.c.h"
// #include "device_tests/Main_test_blink_reset_condition.c.h"
// #include "device_tests/Main_test_AllLeds.c.h"
// include "device_tests/Main_test_NIBObee_Buttons.c.h"
// #include "device_tests/Main_test_NIBObee_Buttons_Loop.c.h"

// #include "device_tests/Main_test_Motors_NIBObee.c.h"
// #include "device_tests/Main_test_Motors_NIBObee_Steps.c.h"
// #include "device_tests/Main_test_Motors_Forward.c.h"
// #include "device_tests/Main_test_Motors_Changing.c.h"

// #include "simulator_tests/Main_test_switchProcess.c.h"
// #include "simulator_tests/Main_test_switchProcess_many.c.h"
// #include "simulator_tests/Main_test_rr_two.c.h"
// #include "simulator_tests/Main_test_rr_many.c.h"
// #include "simulator_tests/Main_test_DMS_rr_two.c.h"
// #include "simulator_tests/Main_test_DMS_with_idle.c.h"
