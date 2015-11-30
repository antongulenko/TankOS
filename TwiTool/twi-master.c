
#include "twi-master.h"
#include <stdio.h>

BOOL print_buffer_contents = FALSE;

TwiError twi_error = TWI_No_Error;
char *twi_error_description;

void twiWaitForCompletion() {
    // No-op. TODO no multi threading.
}

void printTwiBuffer(char *comment, TWIBuffer buffer) {
    printRawBuffer(comment, buffer.data, buffer.size);
}

void printRawBuffer(char *comment, byte *buf, size_t len) {
	if (!print_buffer_contents) return;
    fprintf(stderr, "Buffer (%s): ", comment);
    for (int i = 0; i < len; i++) {
        fprintf(stderr, "%02x ", buf[i]);
    }
    fprintf(stderr, "\n");
}
