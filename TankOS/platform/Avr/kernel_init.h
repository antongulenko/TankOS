#ifndef __KERNEL_INIT_Avr__
#define __KERNEL_INIT_Avr__

// KERNEL_INIT registers a function to be executed in .init8, after all
// other of gcc's initialization-code, and before jumping to main().
// The actual code is put into a separate implementation-function, which is passed as parameter.
// The reason is, that we must attribute the .ini8-function with "naked" to skip the
// ret-instruction at the end (because the .initN-code is packed directly in one
// single sequence, and we are in the initial context, so we cannot return anywhere).
// We still have to store used registers etc, which is why we have this separate short function calling the actual one.

#define KERNEL_INIT(functionName)                                  \
    void __attribute__ ((noinline)) functionName();                \
    __attribute__((naked, section(".init8")))                      \
            void functionName##_kernel_init() { functionName(); }

#define EARLY_KERNEL_INIT(functionName)                            \
	void __attribute__ ((noinline)) functionName();                \
	__attribute__((naked, section(".init3")))                      \
            void functionName##_kernel_init() { functionName(); }

#endif // __KERNEL_INIT_Avr__
