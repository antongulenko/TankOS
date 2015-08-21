#ifndef _KERNEL_HELPERS___H_
#define _KERNEL_HELPERS___H_

#include <tank_os_common.h>

void *kalloc(size_t bytes);
void *kcalloc(size_t elems, size_t bytes);

// The strings printed here are usually short codes to save memory on the limited target device.
// The codes can then be analysed to find out what happened on the device.
int klog(const char *__fmt, ...);

#endif // _KERNEL_HELPERS___H_
