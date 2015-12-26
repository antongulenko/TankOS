
#include <tank_arm_service.h>

#include <twi/rpc/server.h>
#include <twi/rpc/client.h>
#include <twi/rpc/strings.h>
#include <mocks/rpc_client.h>
#include <mocks/printf.h>
#include <twi/rpc/client_functions_registry.h>

#include <unity.h>
#include <mocks/assertions.h>
#include <string.h>

// arm.c
extern struct TankArm tank_arm;
extern void init_test_tank_arm();
extern void tear_down_test_tank_arm();

byte clientLibraryBuffer[100];
byte serverLibraryBuffer[100];

void setUp() {
    memset(clientLibraryBuffer, 0, sizeof(clientLibraryBuffer));
    memset(serverLibraryBuffer, 0, sizeof(serverLibraryBuffer));
    twi_rpc_client_init((TWIBuffer) { clientLibraryBuffer, sizeof(clientLibraryBuffer) });
    twi_rpc_server_init((TWIBuffer) { serverLibraryBuffer, sizeof(serverLibraryBuffer) });

    init_test_tank_arm();
}

void tearDown() {
	tear_down_test_tank_arm();
}

TWI_RPC_FUNCTION_NOTIFY(tank_arm_calibrate, TANK_ARM_CALIBRATE)
TWI_RPC_FUNCTION_NOTIFY(tank_arm_recalibrate, TANK_ARM_RECALIBRATE)
TWI_RPC_FUNCTION_NOARGS(tank_arm_state, TANK_ARM_GET_STATE, TankArmState)
TWI_RPC_FUNCTION_VOID(tank_arm_move, TANK_ARM_MOVE, arm_pos_t)

void test_test_service() {
	assert_correct_status(tank_arm_calibrate(test_device));
	assert_correct_status(tank_arm_recalibrate(test_device));
	TankArmState state = {0};
	assert_correct_status(tank_arm_state(test_device, &state));
	assert_correct_status(tank_arm_move(test_device, 100));
}

void test_format_results() {
    ClientFunctionRegistryEntry f = lookupClientFunction("tank_arm_state");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_NOT_NULL(f->format_results);

    TankArmState state;
    memset(&state, 0, sizeof(state));
	assert_correct_status(tank_arm_state(test_device, &state));

    init_mock_printf();
    f->format_results(mock_printf, &state, sizeof(state));
    TEST_ASSERT_EQUAL_STRING(
    		"Pos 0 (Encoder 0, Motor 0) (not calibrated, motor swing: 0, encoder swing: 0)", 
    		mock_printf_buffer);
}
