
#include "twi-master.h"
#include <stdio.h>

BOOL print_buffer_contents = FALSE;

TwiError twi_error = TWI_No_Error;
char *twi_error_description;

void twiWaitForCompletion() {
    // No-op. TODO no multi threading.
}

void printTwiBuffer(char *comment, TWIBuffer buffer) {
    if (!print_buffer_contents) return;
    fprintf(stderr, "Buffer (%s): ", comment);
    for (int i = 0; i < buffer.size; i++) {
        fprintf(stderr, "%02x ", buffer.data[i]);
    }
    fprintf(stderr, "\n");
}
