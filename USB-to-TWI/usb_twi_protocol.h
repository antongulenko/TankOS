#ifndef TANKOS_USB_TWI_PROTOCOL
#define TANKOS_USB_TWI_PROTOCOL

typedef enum {
	USB_TWI_SEND, // + addr + len + data
	USB_TWI_RECEIVE, // + addr + len
	USB_TWI_SEND_RECEIVE, // + addr + len + data + len
	USB_TWI_INVALID_COMMAND
} USB_TWI_COMMAND;

typedef enum {
	USB_TWI_OK, // + twi_error + (optional) data
	USB_TWI_ERR_INVALID_COMMAND,
	USB_TWI_ERR_SMALL_BUFFER,
	USB_TWI_ERR_MISSING_DATA,
	USB_TWI_ERR_TOO_MUCH_DATA,
	USB_TWI_ERR_STANDALONE_READ, // Data was requested without a previous write operation
	USB_TWI_INVALID_STATUS
} USB_TWI_STATUS;

#endif // TANKOS_USB_TWI_PROTOCOL
