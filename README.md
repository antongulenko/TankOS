# TankOS

Configurable OS for AVR-microcontrollers. Makefile system with selective linking. Atmel Studio solution and projects.
See Makefile for comments on building.
Most of the main code is platform independent.
Tests run on native x86 platform (or anything with gcc).
Every folder is a separate "project". TankOS is the core project, TankOS-Tests contains tests.
Tank-Shared, Tank-IO and Tank-Driver are example projects for a AVR-powered robot.
Tank-Simulator is intended for debugging in the Atmel Studio Simulator.

### Ubuntu packages
sudo apt-get install gcc-avr gdb-avr avrp avrprog avr-libc usbprog usbprog-gui simulavr

### Building
#### Tests
```make CONFIG=tests```
#### Example project Tank-IO
```make CONFIG=io```
