#ifndef __HIDDATA_H_INCLUDED__
#define __HIDDATA_H_INCLUDED__

/*
General Description:
This module implements an abstraction layer for data transfer over HID feature
requests. The implementation uses libusb on Unix. You must link the
appropriate libraries: `libusb-config --libs`
*/

#define USBOPEN_SUCCESS         0   /* no error */
#define USBOPEN_ERR_ACCESS      1   /* not enough permissions to open device */
#define USBOPEN_ERR_IO          2   /* I/O error */
#define USBOPEN_ERR_NOTFOUND    3   /* device not found */

/* Opaque data type representing the USB device. This can be a Windows handle
 * or a libusb handle, depending on the backend implementation.
 */
typedef struct usbDevice usbDevice_t;

/* This function opens a USB device. 'vendorID' and 'productID' are the numeric
 * Vendor-ID and Product-ID of the device we want to open. If 'vendorName' and
 * 'productName' are both not NULL, only devices with matching manufacturer-
 * and product name strings are accepted. If the device uses report IDs,
 * 'usesReportIDs' must be set to a non-zero value.
 * Returns: If a matching device has been found, USBOPEN_SUCCESS is returned
 * and '*device' is set to an opaque pointer representing the device. The
 * device must be closed with usbhidCloseDevice(). If the device has not been
 * found or opening failed, an error code is returned.
 */
int usbhidOpenDevice(usbDevice_t **device, int vendorID, char *vendorName, int productID, char *productName);

// Use configuration from <usbconfig.h>
int usbhidOpenConfiguredDevice();

// Every device opened with usbhidOpenDevice() must be closed with this function.
void usbhidCloseDevice(usbDevice_t *device);

/* This function sends a feature report to the device. reportID can be 0.
 * Returns: 0 on success, an error code otherwise.
 */
int usbhidSetReport(usbDevice_t *device, unsigned char reportID, char *buffer, int len);

/* This function obtains a feature report from the device. The requested
 * report-ID is passed in 'reportID'. The caller must pass a buffer of the size
 * of the expected report in 'buffer' and initialize the variable pointed to by
 * 'len' to the total size of this buffer. Upon successful return, the report
 * is in 'buffer' and the actual length of the report is returned in '*len'.
 * Returns: 0 on success, an error code otherwise.
 */
int usbhidGetReport(usbDevice_t *device, unsigned char reportID, char *buffer, int *len);

// Turn a result error code into a string
char *usbhidErrorMessage(int errCode);

#endif /* __HIDDATA_H_INCLUDED__ */
