#ifndef _KERNEL_INIT_H_
#define _KERNEL_INIT_H_

// Include this for convenience, since most kernel-modules include the init-module.
#include <tank_os_common.h>

#include <stdio.h>

#ifdef AVR

// This makro registers a function to be executed in .init8, after all
// other of gcc's initialization-code, and before jumping to main().
// The actual code is put into a separate implementation-function, which is passed as parameter.
// The reason is, that we must attribute the .ini8-function with "naked" to skip the
// ret-instruction at the end (because the .initN-code is packed directly in one
// single sequence, and we are in the initial context, so we cannot return anywhere).
// We still have to store used registers etc, which is why we have this separate short function calling the actual one.
#define KERNEL_INIT(functionName)													\
    void __attribute__ ((noinline)) functionName();                                 \
	void functionName##_kernel_init() __attribute__((naked, section(".init8")));	\
	void functionName##_kernel_init() { functionName(); }

#else

// On non-AVR systems, .init8 might not be available, the constructor attribute is a
// more general way to express the same thing.
#define KERNEL_INIT(functionName)										                \
	__attribute__ ((constructor)) void functionName##_kernel_init() { functionName(); }

#endif // AVR

#endif
