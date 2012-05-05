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

// #define Main_test_AllLeds
// #define Main_test_blink_AllLeds
#define Main_test_blink_reset_condition
// #define Main_test_NIBObee_Buttons

// #define Main_test_switchProcess
// #define Main_test_switchProcess_many
// #define Main_test_rr_two
// #define Main_test_rr_many
// #define Main_test_DMS_rr_two
// #define Main_test_DMS_with_idle

#include "device_tests/Main_test_blink_AllLeds.c"
#include "device_tests/Main_test_blink_reset_condition.c"
#include "device_tests/Main_test_AllLeds.c"
#include "device_tests/Main_test_NIBObee_Buttons.c"

#include "simulator_tests/Main_test_switchProcess.c"
#include "simulator_tests/Main_test_switchProcess_many.c"
#include "simulator_tests/Main_test_rr_two.c"
#include "simulator_tests/Main_test_rr_many.c"
#include "simulator_tests/Main_test_DMS_rr_two.c"
#include "simulator_tests/Main_test_DMS_with_idle.c"
