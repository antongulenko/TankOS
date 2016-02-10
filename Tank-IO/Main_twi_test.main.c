
#include <platform/twi/master.h>

#include "../Tank-Arm/tank_arm_address.h"
#include <twi/services/hardware.h>
#include <twi/rpc/strings.h>
#include <devices/led.h>
#include <platform/platform_Avr/port.h>

#include <kernel/klib.h>
#include <stdio.h>

TWIDevice dev = { TANK_ARM_ADDRESS };

// TankOS/twi/services/hardware.c
int query_memory_info_format(ClientResultPrinter print, void *results, uint16_t results_length);
int query_init_status_format(ClientResultPrinter print, void *results, uint16_t results_length);

int main() {
	Led led = newLed(pinD7);
	enableLed(led);
	delay_ms(130);
	disableLed(led);
	delay_ms(130);
	enableLed(led);
	delay_ms(130);
	
	printf("hello1\n");
	while (1) {
		disableLed(led);
		delay_ms(130);
		printf("start\n");

		InitStatus status;
		RpcClientResult res = query_init_status(dev, &status);
		setLed(led, res.status == TWI_RPC_call_success);

		ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
			printf("Info Res: %s\n", RpcClientResult_string(res));
		}
		ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
			query_init_status_format(klog, &status, sizeof(status));
			printf("\n");
		}

		delay_ms(130);
	}
}

void ___get_memory_info() {
	MemoryInfo info;
	RpcClientResult res = query_memory_info(dev, &info);
	printf("Mem Res: %s\n", RpcClientResult_string(res));
	printf("Mem: ");
	query_memory_info_format(klog, &info, sizeof(info));
	printf("\n");
}
