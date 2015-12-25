

#include "usb-hid-data.h"
#include <stdio.h>

int main() {
    usbDevice_t *usb_dev;
    int err = usbhidOpenConfiguredDevice(&usb_dev);
    if (err != 0 || usb_dev == NULL) {
        printf("Failed to open USB device: %s\n", usbhidErrorMessage(err));
    }
    
    char buf[512];
    int len = sizeof(buf);
    int res = usbhidGetReport(usb_dev, 0, buf, &len);

    if (res != 0) {
        printf("Request failed: %s\n", usbhidErrorMessage(res));
        return 1;
    }
    
    printf("Received %i byte:\n", len);
    for (int i = 0; i < len; i++) {
        printf("%x ", buf[i]);
    }
}
