
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "usb-hid-data.h"

static void usage(char *myName)
{
    fprintf(stderr, "usage:\n");
    fprintf(stderr, "  %s read\n", myName);
    fprintf(stderr, "  %s write <listofbytes>\n", myName);
}

int main(int argc, char **argv)
{
usbDevice_t *dev;
char        buffer[128];
int         err;
unsigned char reportId = 0; // TODO parse from parameter

    if(argc < 2){
        usage(argv[0]);
        exit(1);
    }
    if((err = usbhidOpenConfiguredDevice(&dev)) != 0) {
        fprintf(stderr, "error opening usb device: %s\n", usbhidErrorMessage(err));
        exit(1);
    }
    if(strcasecmp(argv[1], "read") == 0){
        int len = sizeof(buffer);
        if((err = usbhidGetReport(dev, reportId, buffer, &len)) != 0){
            fprintf(stderr, "error reading data: %s\n", usbhidErrorMessage(err));
        }else{
            printf("%s\n", buffer);
        }
    }else if(strcasecmp(argv[1], "write") == 0){
        int i, pos;
        memset(buffer, 0, sizeof(buffer));
        for(pos = 0, i = 2; i < argc && pos < sizeof(buffer); i++){
            size_t len = strlen(argv[i]);
            if (len > sizeof(buffer) - pos) {
                fprintf(stderr, "Input too long\n");
                exit(1);
            }
            memcpy(buffer + pos, argv[i], len);
            pos += len;
            buffer[pos++] = ' ';
        }
        fprintf(stderr, "Sending: %s\n", buffer);
        if((err = usbhidSetReport(dev, reportId, buffer, pos)) != 0)
            fprintf(stderr, "error writing data: %s\n", usbhidErrorMessage(err));
    }else{
        usage(argv[0]);
        exit(1);
    }
    usbhidCloseDevice(dev);
    return 0;
}
