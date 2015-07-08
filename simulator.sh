#!/bin/bash
TYPE="atmega128"
CLOCK="20000000"
simulavr -g -P simulavr-disp -d "$TYPE" -c "$CLOCK"
