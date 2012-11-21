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

// #include "bgx1_tests/"
// #include "bgx1_tests/Main_bgx1_byte_order.c.h"
// #include "bgx1_tests/Main_bgx1_term.c.h"
// #include "bgx1_tests/Main_bgx1_gfx.c.h"
// #include "bgx1_tests/Main_bgx1_io.c.h"

// #include "../Main-NIBObee/main/Main_test_NIBObee_Buttons.c.h"
// #include "../Main-NIBObee/main/Main_test_NIBObee_Buttons_Loop.c.h"
// #include "../Main-NIBObee/main/Main_test_Motors_NIBObee.c.h"
// #include "../Main-NIBObee/main/Main_test_Motors_NIBObee_Steps.c.h"
// #include "../Main-NIBObee/main/Main_test_NIBObee_SmoothMotors_Steps.c.h"
// #include "../Main-NIBObee/main/Main_test_NIBObee_SmoothMotors.c.h"
