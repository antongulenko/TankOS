#!/bin/bash
set -e

TWI_TOOL="../build-Native-speed/twi-tool.main.out"
test -x "$TWI_TOOL" || { echo "TwiTool not found: $TWI_TOOL"; exit 1; }
TWI_BUS=2

declare -A TWI_DEVICES
TWI_DEVICES=(
    [io]=2c
    [driver]=2e
)

function twi_call() {
    func="$1"
    device="$2"
    device_address=${TWI_DEVICES[$device]}
    test -n "$device_address" || { echo "Address of device $device not registered."; exit 1; }
    shift 2
    "$TWI_TOOL" -b $TWI_BUS -d $device_address -f $func $@
}

