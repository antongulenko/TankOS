SimpleAvrOS
===========

Simple compile-time configured OS for AVR-microcontrollers. AVR Studio 6 solution and projects.
The Kernel-* projects use files/functionality from AntonAvrLib to describe and initialize the hardware on different
systems.
The Main-*projects contain different programs that are linked against the according kernel-libraries.
The whole thing is build either by the AVR Studio projects, or by the Makefile. See the comments in the Makefile and the configure script.
