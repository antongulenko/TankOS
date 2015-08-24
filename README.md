# TankOS

Configurable OS for AVR-microcontrollers. Makefile system with selective linking. Atmel Studio solution and projects.
See Makefile for comments on building.
Most of the main code is platform independent.
Tests run on native x86 platform (or anything with gcc).
Every folder is a separate "project". TankOS is the core project, TankOS-Tests contains tests.
Tank-Shared, Tank-IO and Tank-Driver are example projects for a AVR-powered robot.
Tank-Simulator is intended for debugging in the Atmel Studio Simulator.

### Ubuntu packages
```sudo apt-get install gcc make gcc-avr```

The build system also uses the ```find``` command.

For colored build output put [this script](https://ansi-color.googlecode.com/files/ansi-color-0.6.tar.gz) on your path or add ```IGNORE_COLORS := true``` to the ```make_parameters``` file.

~~Other Ubuntu packages: ```sudo apt-get install gdb-avr avrp avrprog avr-libc usbprog usbprog-gui simulavr```~~

### Building
#### Tests
```make CONFIG=tests```
#### Example project Tank-IO
```make CONFIG=io```

### Platforms
Compiled and used on the following platforms:
- Ubuntu: GNU make 4.0, GNU find 4.4.2, gcc 4.9.2, avr-gcc 4.8.1
- Windows & Cygwin: GNU make 4.1, GNU find 4.5.12, gcc 4.9.3, avr-gcc avr-gcc 4.8.0
- BeagleBone Black (Angstrom Linux): GNU make 3.81, GNU find 4.4.2, gcc 4.6.3
- ATmega 1284P
