#ifndef __KERNEL_INIT_Native__
#define __KERNEL_INIT_Native__

// On non-AVR systems, .init8 might not be available, the constructor attribute is a
// more general way to express the same thing.

#define KERNEL_INIT(functionName) \
	__attribute__ ((constructor)) void functionName##_kernel_init() { functionName(); }

#define EARLY_KERNEL_INIT(functionName) \
	__attribute__ ((constructor)) void functionName##_kernel_init() { functionName(); }

#endif // __KERNEL_INIT_Native__
