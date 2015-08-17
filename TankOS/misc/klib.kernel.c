#include "klib.h"
#include <stdarg.h>
#include <stdio.h>

// This is a kernel module in order to allow relinking the klog function.
// Symbols inside archives cannot be relinked or references in linker expressions.

// Hidden switch to make kalloc/kcalloc fail. Used for tests.
BOOL __kalloc_fail = FALSE;

void *kalloc(size_t bytes) {
    void *res = __kalloc_fail ? NULL : malloc(bytes);
    if (!res)
        klog("kf\n"); // kalloc failed
    return res;
}

void *kcalloc(size_t elems, size_t bytes) {
    void *res = __kalloc_fail ? NULL : calloc(elems, bytes);
    if (!res)
        klog("cf\n"); // kcalloc failed
    return res;
}

int klog(const char *__fmt, ...) __attribute__((weak));
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
