#!/bin/bash
set -e
source common.sh
leftRight=$1
forwardBackward=$2
speed1=$3
speed2=$4

if [ "$leftRight" == "left" ]; then
    motornum=00
else
    motornum=01
fi

if [ "$leftRight" == "forward" ]; then
    dirnum=00
else
    dirnum=01
fi

twi_call tank_driver_set_motor driver -p $motornum -p 00 -p $dirnum -p 00 -p $speed1 -p $speed1

