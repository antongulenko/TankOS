/*
 * Main.c
 *
 * Created: 14.02.2012 12:01:22
 *  Author: Anton
 */ 

#define UNUSED_NIBOBEE_LIB_C_FILE

#define FIRST_TEST
// #define CALIBRATION

// #define PROGRAM1		// --
// #define PROGRAM2		//   |-- test LEDs
// #define PROGRAM3		// --
// #define PROGRAM4		// Test sensors
// #define PROGRAM5		// Ping Pong
// #define PROGRAM6		// Test odometry
// #define PROGRAM7		// Test only motors with the sensors
// #define PROGRAM8		// Nibo-bee drives around on its own
// #define PROGRAM9		// Show line-sensor-values

// #define BGX1_GFX
// #define BGX1_IO
// #define BGX1_TERM

#ifdef FIRST_TEST
#include <test/first/first.c>
#endif

#ifdef CALIBRATION
#include <test/calibration/calibration.c>
#endif

#ifdef PROGRAM1
#include <tutorial/program1/program1.c>
#endif

#ifdef PROGRAM2
#include <tutorial/program2/program2.c>
#endif

#ifdef PROGRAM3
#include <tutorial/program3/program3.c>
#endif

#ifdef PROGRAM4
#include <tutorial/program4/program4.c>
#endif

#ifdef PROGRAM5
#include <tutorial/program5/program5.c>
#endif

#ifdef PROGRAM6
#include <tutorial/program6/program6.c>
#endif

#ifdef PROGRAM7
#include <tutorial/program7/program7.c>
#endif

#ifdef PROGRAM8
#include <tutorial/program8/program8.c>
#endif

#ifdef PROGRAM9
#include <tutorial/program9/program9.c>
#endif

#ifdef BGX1_GFX
#include <examples/bgx1_test_gfx/bgx1_test_gfx.c>
#endif

#ifdef BGX1_IO
#include <examples/bgx1_test_io/bgx1_test_io.c>
#endif

#ifdef BGX1_TERM
#include <examples/bgx1_test_term/bgx1_test_term.c>
#endif
