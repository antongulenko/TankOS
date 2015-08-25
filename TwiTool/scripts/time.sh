#!/bin/bash
set -e
source common.sh
device=$1

ASSUMED_FREQ=8

function get_values() {
    device_time=`twi_call query_milliseconds $1`
    current_time=`date +%T.%3N`
    device_time=${device_time:9} # Strip "Running: " prefix
    device_millis=`date -d $device_time +%s%3N`
    current_millis=`date -d $current_time +%s%3N`
    diff_millis=$((device_millis-current_millis))
}

get_values
start_diff=$diff_millis
start_device_millis=$device_millis
start_millis=$current_millis
echo "Assumed device frequency: $ASSUMED_FREQ MHz"
while true; do
    get_values
    passed_millis=$((current_millis-start_millis))
    passed_device_millis=$((device_millis-start_device_millis))
    new_diff=$((diff_millis-start_diff))
    if [ "$passed_device_millis" ]; then
        freq=$(bc -l <<< "$ASSUMED_FREQ * $passed_millis / $passed_device_millis")
    else
        freq="(not available)"
    fi
    #freq=$(($ASSUMED_FREQ * passed_millis / passed_device_millis))
    echo "$current_time ($passed_millis) <=> $device_time ($passed_device_millis) = $new_diff. Freq: $freq"
    if read -t 0.3; then break; fi
done
