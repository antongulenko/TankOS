SimpleAvrOS
===========

Simple compile-time configured OS for AVR-microcontrollers. AVR Studio 6 solution and projects.
The Kernel-* projects use files/functionality from AntonAvrLib to describe and initialize the hardware on different
systems.
The Main-*projects contain different programs that are linked against the according kernel-libraries.
The whole thing is build either by the AVR Studio projects, or by the Makefile. See the comments in the Makefile and the configure script.

The following are some notes for the developers.

Ubuntu packages:
sudo apt-get install gcc-avr gdb-avr avrp avrprog avr-libc usbprog usbprog-gui simulavr

== Timers Master
Timer0: Left Motor
Timer1 (A and B): Unused
Timer2: Right Motor
Timer3: Interrupt source for Software. A: scheduler/milliseconds-counter B: smooth regulation of motors

== Timers I/O
no Timers used

==== Fuses MASTER

BODLEVEL = DISABLED
OCDEN = [X]
JTAGEN = [X]
SPIEN = [ ]
WDTON = [ ]
EESAVE = [X]
BOOTSZ = 4096W_F000
BOOTRST = [ ]
CKDIV8 = [ ]
CKOUT = [X]
SUT_CKSEL = EXTXOSC_8MHZ_XX_16KCK_4MS1

EXTENDED = 0xFF (valid)
HIGH = 0x31 (valid)
LOW = 0xAF (valid)

==== Fuses I/O

BODLEVEL = DISABLED
OCDEN = [X]
JTAGEN = [X]
SPIEN = [ ]
WDTON = [ ]
EESAVE = [X]
BOOTSZ = 4096W_F000
BOOTRST = [ ]
CKDIV8 = [ ]
CKOUT = [ ]
SUT_CKSEL = EXTCLK_6CK_65MS

EXTENDED = 0xFF (valid)
HIGH = 0x31 (modified)
LOW = 0xE0 (valid)
