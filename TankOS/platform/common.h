#ifndef __PLATFORM_COMMON__
#define __PLATFORM_COMMON__

#if defined(PLATFORM_Avr)
#    include "platform_Avr/common.h"
#elif defined(PLATFORM_Native)
#    include "platform_Native/common.h"
#else
#    error No valid PLATFORM_* symbol defined
#endif

#endif // __PLATFORM_COMMON__
