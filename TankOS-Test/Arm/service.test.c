
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

void test_service() {
    byte default_pins = _BV(BACK_PIN_CHANGE) | _BV(FRONT_PIN_CHANGE);
    // Initial state: hall sensors not triggered
    invokePinChangeInterrupt(PORT_PIN_CHANGE, default_pins);

    // Cannot move before calibrate
    RpcClientResult res = tank_arm_move(test_device, (TankArmWordParameter) { TANK_JOINT, 100 });
    TEST_ASSERT_EQUAL(TWI_RPC_handler_error + 1, res.handler_status);

    // Initiate calibration
	assert_correct_status(tank_arm_calibrate(test_device, TANK_JOINT));
    TEST_ASSERT_EQUAL(CalibratingFirst, tank_joint.calibration);

    // Trigger back hall sensor (omit preceeding movement)
    // Hall sensors are inverted, so only the front sensor pin is up.
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(FRONT_PIN_CHANGE));
    TEST_ASSERT_EQUAL(CalibratingSecond, tank_joint.calibration);

    // Still cannot move
    res = tank_arm_move(test_device, (TankArmWordParameter) { TANK_JOINT, 100 });
    TEST_ASSERT_EQUAL(TWI_RPC_handler_error + 1, res.handler_status);

    // 4 motor ticks, 5 encoder ticks (forward)
    // Will rotate automatically because of calibration
    motor_step_tick();
    motor_step_tick();
    motor_step_tick();
    motor_step_tick();
    invokePinChangeInterrupt(PORT_PIN_CHANGE, default_pins | _BV(ENC_A_PIN_CHANGE));
    invokePinChangeInterrupt(PORT_PIN_CHANGE, default_pins | _BV(ENC_A_PIN_CHANGE) | _BV(ENC_B_PIN_CHANGE));
    invokePinChangeInterrupt(PORT_PIN_CHANGE, default_pins | _BV(ENC_B_PIN_CHANGE));
    invokePinChangeInterrupt(PORT_PIN_CHANGE, default_pins);
    invokePinChangeInterrupt(PORT_PIN_CHANGE, default_pins | _BV(ENC_A_PIN_CHANGE));

    TEST_ASSERT_EQUAL(4, stepMotorPosition(tank_joint.motor));
    TEST_ASSERT_EQUAL(5, encoderState(tank_joint.encoder));

    // Trigger front hall sensor (finish calibration)
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(BACK_PIN_CHANGE));
    TEST_ASSERT_EQUAL(CalibratedFull, tank_joint.calibration);

    // Move backwards a bit, since we are already at the front hall-sensor
	assert_correct_status(tank_arm_move(test_device, (TankArmWordParameter) { TANK_JOINT, -100 }));
    motor_step_tick();
    motor_step_tick();
    invokePinChangeInterrupt(PORT_PIN_CHANGE, default_pins);
    invokePinChangeInterrupt(PORT_PIN_CHANGE, default_pins | _BV(ENC_B_PIN_CHANGE));

    TankArmState state = {0};
    assert_correct_status(tank_arm_state(test_device, TANK_JOINT, &state));
    TEST_ASSERT_EQUAL(2, state.motorPos);
    TEST_ASSERT_EQUAL(3, state.encoderPos);
    TEST_ASSERT_EQUAL(CalibratedFull, state.calibration);
    TEST_ASSERT_EQUAL(FALSE, state.frontSensor);
    TEST_ASSERT_EQUAL(FALSE, state.backSensor);
    TEST_ASSERT_EQUAL(4, state.fullMotorSwing);
    TEST_ASSERT_EQUAL(5, state.fullEncoderSwing);
    TEST_ASSERT_EQUAL(128 * 3 / 5, state.armPos);

    // Cannot move forward when front sensor is triggered
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(BACK_PIN_CHANGE));
    res = tank_arm_move(test_device, (TankArmWordParameter) { TANK_JOINT, 100 });
    TEST_ASSERT_EQUAL(TWI_RPC_handler_error + 1, res.handler_status);
    assert_correct_status(tank_arm_move(test_device, (TankArmWordParameter) { TANK_JOINT, -100 }));

    // Cannot move backward when back sensor is triggered
    invokePinChangeInterrupt(PORT_PIN_CHANGE, _BV(FRONT_PIN_CHANGE));
    res = tank_arm_move(test_device, (TankArmWordParameter) { TANK_JOINT, -100 });
    TEST_ASSERT_EQUAL(TWI_RPC_handler_error + 1, res.handler_status);
    assert_correct_status(tank_arm_move(test_device, (TankArmWordParameter) { TANK_JOINT, 100 }));

    // Recalibrate
    assert_correct_status(tank_arm_recalibrate(test_device, TANK_JOINT));
    TEST_ASSERT_EQUAL(CalibratingFirst, tank_joint.calibration);
}

void test_format_results() {
    ClientFunctionRegistryEntry f = lookupClientFunction("tank_arm_state");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_NOT_NULL(f->format_results);

    TankArmState state;
    memset(&state, 0, sizeof(state));
	assert_correct_status(tank_arm_state(test_device, TANK_JOINT, &state));

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
    state.calibration = CalibratingSecond;
    state.encoder_error.errors = 4;
    state.encoder_error.errorMask = 0x0a;
    init_mock_printf();
    f->format_results(mock_printf, &state, sizeof(state));
    TEST_ASSERT_EQUAL_STRING(
            "Pos 55 (Encoder 100, Motor 200) [FRONT] "
            "(calibrating second, motor swing: 500, encoder swing: 400) 4 encoder errors: 0x0a", 
            mock_printf_buffer);
}
