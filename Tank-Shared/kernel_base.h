/*
 * kernel_base.h
 *
 * Created: 02.05.2012 15:44:37
 *  Author: Anton
 */ 

#ifndef KERNEL_BASE_H_
#define KERNEL_BASE_H_

#include <kernel/millisecond_clock.h>
#include <kernel/early_init.h>
#include <kernel/processes/mutex/mutex.h>
#include <kernel/devices/analog_m1284P.h>
#include <kernel/devices/timer_m1284P.h>
#include <tank_os_common.h>

#include <kernel/processes/process.h>
#include <kernel/processes/scheduler.h>
#include <kernel/processes/DMS/dms_api.h>
#include <kernel/processes/RoundRobin/rr_api.h>

#endif