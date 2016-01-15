
#include <platform/twi/master.h>

#include "../Tank-Arm/tank_arm_address.h"
#include <twi/services/hardware.h>
#include <twi/rpc/strings.h>

#include <kernel/klib.h>
#include <stdio.h>

// TankOS/twi/services/hardware.c
int query_memory_info_format(ClientResultPrinter print, void *results, uint16_t results_length);
int query_init_status_format(ClientResultPrinter print, void *results, uint16_t results_length);

int main() {
	printf("Waiting...\n");
	delay_ms(2000);
	printf("Starting...\n");

	TWIDevice dev = (TWIDevice) { TANK_ARM_ADDRESS };
	
	InitStatus status;
	RpcClientResult res = query_init_status(dev, &status);
	printf("Info Res: %s\n", RpcClientResult_string(res));
	query_init_status_format(klog, &status, sizeof(status));
	printf("\n");

	MemoryInfo info;
	res = query_memory_info(dev, &info);
	printf("Mem Res: %s\n", RpcClientResult_string(res));
	printf("Mem: ");
	query_memory_info_format(klog, &info, sizeof(info));
	printf("\n");

	printf("Done.\n");
}
