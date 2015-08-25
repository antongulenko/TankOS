#!/bin/bash
set -e
source common.sh
device=$1

# This will always fail
twi_call do_hardware_reset $device &> /dev/null || true

