
#include <tank_arm_service.h>
#include <Arm/test_arm.h>

#include <twi/rpc/server.h>
#include <twi/rpc/client.h>
#include <twi/rpc/strings.h>
#include <mocks/rpc_client.h>
#include <mocks/pin_change.h>
#include <mocks/printf.h>
#include <twi/rpc/client_functions_registry.h>

#include <unity.h>
#include <mocks/assertions.h>
#include <string.h>

byte clientLibraryBuffer[100];
byte serverLibraryBuffer[100];

void setUp() {
    memset(clientLibraryBuffer, 0, sizeof(clientLibraryBuffer));
    memset(serverLibraryBuffer, 0, sizeof(serverLibraryBuffer));
    twi_rpc_client_init((TWIBuffer) { clientLibraryBuffer, sizeof(clientLibraryBuffer) });
    twi_rpc_server_init((TWIBuffer) { serverLibraryBuffer, sizeof(serverLibraryBuffer) });

    initPinChangeInterrupts();
    init_test_tank_arm();
}

void tearDown() {
	tear_down_test_tank_arm();
    tearDownPinChangeInterrupts();
}

TWI_RPC_FUNCTION_NOTIFY(tank_arm_calibrate, TANK_ARM_CALIBRATE)
TWI_RPC_FUNCTION_NOTIFY(tank_arm_recalibrate, TANK_ARM_RECALIBRATE)
TWI_RPC_FUNCTION_NOARGS(tank_arm_state, TANK_ARM_GET_STATE, TankArmState)
TWI_RPC_FUNCTION_VOID(tank_arm_move, TANK_ARM_MOVE, arm_pos_t)

void test_service() {
    // Cannot move before calibrate
    RpcClientResult res = tank_arm_move(test_device, 100);
    TEST_ASSERT_EQUAL(TWI_RPC_handler_error + 1, res.handler_status);

    // Initiate calibration
	assert_correct_status(tank_arm_calibrate(test_device));
    TEST_ASSERT_EQUAL(NotCalibrated, tank_arm.calibration);

    // Trigger back hall sensor (omit preceeding movement)
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(BACK_PIN_CHANGE));
    TEST_ASSERT_EQUAL(CalibratedOne, tank_arm.calibration);

    // Still cannot move
    res = tank_arm_move(test_device, 100);
    TEST_ASSERT_EQUAL(TWI_RPC_handler_error + 1, res.handler_status);

    // 4 motor ticks, 5 encoder ticks (forward)
    motor_step_tick();
    motor_step_tick();
    motor_step_tick();
    motor_step_tick();
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(ENC_A_PIN_CHANGE));
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(ENC_A_PIN_CHANGE) | _BV(ENC_B_PIN_CHANGE));
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(ENC_B_PIN_CHANGE));
    invokePinChangeInterrupt(PORT_PIN_CHANGE, 0);
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(ENC_A_PIN_CHANGE));

    TEST_ASSERT_EQUAL(4, stepMotorPosition(tank_arm.motor));
    TEST_ASSERT_EQUAL(5, encoderState(tank_arm.encoder));

    // Trigger front hall sensor (finish calibration)
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(FRONT_PIN_CHANGE));
    TEST_ASSERT_EQUAL(CalibratedFull, tank_arm.calibration);

    // Move backwards a bit, since we are already at the front hall-sensor
	assert_correct_status(tank_arm_move(test_device, -100));
    motor_step_tick();
    motor_step_tick();
    invokePinChangeInterrupt(PORT_PIN_CHANGE, 0);
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(ENC_B_PIN_CHANGE));

    TankArmState state = {0};
    assert_correct_status(tank_arm_state(test_device, &state));
    TEST_ASSERT_EQUAL(2, state.motorPos);
    TEST_ASSERT_EQUAL(3, state.encoderPos);
    TEST_ASSERT_EQUAL(CalibratedFull, state.calibration);
    TEST_ASSERT_EQUAL(FALSE, state.frontSensor);
    TEST_ASSERT_EQUAL(FALSE, state.backSensor);
    TEST_ASSERT_EQUAL(4, state.fullMotorSwing);
    TEST_ASSERT_EQUAL(5, state.fullEncoderSwing);
    TEST_ASSERT_EQUAL(128 * 3 / 5, state.armPos);

    // Cannot move forward when front sensor is triggered
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(FRONT_PIN_CHANGE));
    res = tank_arm_move(test_device, 100);
    TEST_ASSERT_EQUAL(TWI_RPC_handler_error + 1, res.handler_status);
    assert_correct_status(tank_arm_move(test_device, -100));

    // Cannot move backward when back sensor is triggered
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(BACK_PIN_CHANGE));
    res = tank_arm_move(test_device, -100);
    TEST_ASSERT_EQUAL(TWI_RPC_handler_error + 1, res.handler_status);
    assert_correct_status(tank_arm_move(test_device, 100));

    // Recalibrate
    assert_correct_status(tank_arm_recalibrate(test_device));
    TEST_ASSERT_EQUAL(NotCalibrated, tank_arm.calibration);
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

    state.encoderPos = 100;
    state.motorPos = 200;
    state.armPos = 55;
    state.frontSensor = TRUE;
    state.fullMotorSwing = 500;
    state.fullEncoderSwing = 400;
    state.calibration = CalibratedOne;
    state.encoder_error.errors = 4;
    state.encoder_error.errorMask = 0x0a;
    init_mock_printf();
    f->format_results(mock_printf, &state, sizeof(state));
    TEST_ASSERT_EQUAL_STRING(
            "Pos 55 (Encoder 100, Motor 200) [FRONT] "
            "(half calibrated, motor swing: 500, encoder swing: 400) 4 encoder errors: 0x0a", 
            mock_printf_buffer);
}
