#include "klib.h"
#include <stdarg.h>
#include <stdio.h>

// This is a kernel module in order to allow relinking the klog function.
// Symbols inside archives cannot be relinked or references in linker expressions.

// Hidden switch to make kalloc/kcalloc fail. Used for tests.
BOOL __kalloc_fail = FALSE;

size_t klib_allocated = 0;
size_t klib_allocation_failed = 0;

void *kalloc(size_t bytes) {
    void *res = __kalloc_fail ? NULL : malloc(bytes);
    if (!res) {
        klib_allocation_failed += bytes;
        klog("kf\n"); // kalloc failed
    } else {
        klib_allocated += bytes;
    }
    return res;
}

void *kcalloc(size_t elems, size_t bytes) {
    void *res = __kalloc_fail ? NULL : calloc(elems, bytes);
    if (!res) {
        klog("cf\n"); // kcalloc failed
        klib_allocation_failed += bytes;
    } else {
        klib_allocated += bytes;
    }
    return res;
}

int klog(const char *__fmt, ...) WEAK_FUNCTION;
int klog(const char *__fmt, ...) {
    // No-op by default, can be linked to klog_printf.
    return 0;
}

int klog_printf(const char *__fmt, ...) {
    va_list args;
    va_start(args, __fmt);
    int result = vprintf(__fmt, args);
    va_end(args);
    return result;
}
