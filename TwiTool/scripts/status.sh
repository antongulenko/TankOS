#!/bin/bash
set -e
source common.sh
device=$1

twi_call query_init_status $device
twi_call query_eeprom_resets $device
twi_call query_milliseconds $device
twi_call query_reset_condition $device
twi_call query_memory_info $device
twi_call query_stdout_buffer_status $device
twi_call flush_stdout_buffer $device -p 40 -p 00 -v 66 # Flush 64 bytes of stdout
