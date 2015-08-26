#ifndef __MEMORY_MOCK__
#define __MEMORY_MOCK__

extern char *__brkval;
extern char *__malloc_heap_start;
extern char *__malloc_heap_end;
extern char __heap_start;

#define DYNAMIC_MEMORY_START (&__heap_start)
#define ALLOCATED_HEAP_END __brkval
#define MALLOC_START __malloc_heap_start
#define MALLOC_END __malloc_heap_end

#endif // __MEMORY_MOCK__
