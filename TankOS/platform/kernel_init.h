#ifndef _KERNEL_INIT_H_
#define _KERNEL_INIT_H_

#if defined(PLATFORM_Avr)
#    include "platform_Avr/kernel_init.h"
#elif defined(PLATFORM_Native)
#    include "platform_Native/kernel_init.h"
#else
#    error No valid PLATFORM_* symbol defined
#endif

#endif // _KERNEL_INIT_H_
