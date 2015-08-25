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
twi_call tank_io_button_status $device
twi_call flush_stdout_buffer $device -p 40 -p 00 -v 66 # Flush 64 bytes of stdout

# * 003/do_hardware_reset(0)->(0)
# * 033/tank_io_set_leds(4)->(0)
# * 010/test_write_value(4)->(0)
# * 011/test_read_value(0)->(4)
# * 012/test_increment_value(0)->(0)
# * 013/test_reset_value(0)->(0)

