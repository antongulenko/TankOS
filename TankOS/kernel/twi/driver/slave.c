
#include "internal.h"
#include "slave.h"

// TODO -- Implement configuration of GC calls (TWGCE bit, LSB in TWAR)

void twi_init_slave() {
	TWAR = TwiSlaveAddress;
	twi_init();

	// Enable acknowledging of Master-requests (Slave-mode).
	// We are ALWAYS setting the TWEA flag. This is only valid because of the strategy
	// described in the long comments in the switch below.
	TWCR |= _BV(TWEA);
	twi_defaultControlFlags |= _BV(TWEA);
}

// The callback functions called by this module.
static TWIBuffer (*twi_handleMasterRequest)();
static TWIBuffer (*twi_masterTransmissionStarting)();
static void (*twi_masterTransmissionEnded)(TWIBuffer twi_buffer);

void twi_init_slave_callbacks(
		TWIBuffer (*new_twi_handleMasterRequest)(),
		TWIBuffer (*new_twi_masterTransmissionStarting)(),
		void (*new_twi_masterTransmissionEnded)(TWIBuffer twi_buffer))
{
	twi_handleMasterRequest = new_twi_handleMasterRequest;
	twi_masterTransmissionStarting = new_twi_masterTransmissionStarting;
	twi_masterTransmissionEnded = new_twi_masterTransmissionEnded;
}

static inline void startSlaveOperation() {
	twi_error = TWI_No_Error;
	twi_running = TRUE;
	handledBytes = 0;
}

TwiHandlerStatus twi_handle_slave(TwiStatus status) {
	switch (status) {
// Slave Transmitter
		case TW_ST_SLA_ACK:
		case TW_ST_ARB_LOST_SLA_ACK:
			startSlaveOperation();
			twi_buffer = twi_handleMasterRequest();
			/* no break */
		case TW_ST_DATA_ACK:
			if (handledBytes < twi_buffer.size) {
				// Either there is at least one more byte to send, or we are now sending
				// the last byte. In the second case, we actually should NOT set the TWEA
				// bit, because we expect the Master to return a NACK after this byte.
				// But: This way we could not definitely say whether the TWI slave operation
				// is finished after this, because we might enter TW_ST_LAST_DATA state,
				// if the Master wants more data and returns ACK. To avoid this, we continue
				// expecting ACKs, until the Master sends a NACK and we enter the TW_ST_DATA_NACK
				// state. This state is supposed to be a kind of error-state, but we use it
				// as regular last state so we definitely know when the TWI operation is over.
				return twi_send(twi_buffer.data[handledBytes++]);
			} else {
				// Following the strategy described in above comment, we have to give the
				// Master some data until it gives us the NACK we are waiting for (in case
				// we don't have enough data in our send-buffer). If we would have terminated
				// the TWI operation already, the Master would receive all ones, because the
				// TWI lines are pulled up. We imitate this by explicitely sending all ones.
				twi_error = TWI_Slave_NotEnoughDataTransmitted;
				return twi_send(TwiIllegalByte);
			}
		case TW_ST_LAST_DATA:
			// Because of the strategy described above, this state should NEVER be entered,
			// because we tell the TWI hardware to always expect an ACK from the Master.
			// We still handle this, just in case.
			twi_error = TWI_Slave_NotEnoughDataTransmitted;
			return twi_end();
		case TW_ST_DATA_NACK:
			if (handledBytes < twi_buffer.size) {
				twi_error = TWI_Slave_TooMuchDataTransmitted;
			}
			return twi_end();
// Slave Receiver
		case TW_SR_SLA_ACK:
		case TW_SR_ARB_LOST_SLA_ACK:
		case TW_SR_GCALL_ACK:
		case TW_SR_ARB_LOST_GCALL_ACK:
			startSlaveOperation();
			twi_buffer = twi_masterTransmissionStarting();
			return twi_continue();
		case TW_SR_DATA_ACK:
		case TW_SR_GCALL_DATA_ACK:
			if (handledBytes < twi_buffer.size) {
				twi_read_byte();
			} else {
				twi_error = TWI_Slave_TooMuchDataReceived;
			}
			// Following the same strategy as in Slave Transmitter mode, we always
			// acknowledge received data, even if we already stopped copying it into
			// the receive buffer because it is full. We wait for the Master to give
			// us a STOP condition and send us to the TW_SR_STOP state.
			return twi_continue();
		case TW_SR_DATA_NACK:
		case TW_SR_GCALL_DATA_NACK:
			// Following the strategy described above, this state should never be entered,
			// because we never return a NACK to the Master. We still handle this, to be sure.
			if (handledBytes < twi_buffer.size) {
				twi_read_byte();
			}
			/* no break */
		case TW_SR_STOP:
			if (handledBytes < twi_buffer.size) {
				// Transmission ended early.
				twi_error = TWI_Slave_NotEnoughDataReceived;
			}
			// Invoke application-code before releasing the bus.
			// This event should be handled quickly.
			twi_masterTransmissionEnded((TWIBuffer) { twi_buffer.data, handledBytes } );
			return twi_end();
		default:
			return twi_handle(status);
	}
}
