SimpleAvrOS
===========

Simple compile-time configured OS for AVR-microcontrollers. AVR Studio 5/6 solution and projects.
The Kernel-* projects use files/functionality from AntonAvrLib to describe and initialize the hardware on different
systems.
The Main project contains target-system-independent application source files.
The Main-*projects include the single Main.c file from the Main projects and set up different include/Linker directories to link and include the files from the different Kernel-projects with the Main-code.
