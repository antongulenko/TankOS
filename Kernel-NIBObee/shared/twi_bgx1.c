
#include "twi_bgx1.h"
#include <alloca.h>
#include <string.h>

#define PREPARED_STRING_CALL(strlen, memcpy)						\
	uint8_t size = strlen(argument);								\
	uint8_t argSize = sizeof(StringArg) + size;						\
	StringArg *args = (StringArg*) alloca(argSize);					\
	args->len = size;												\
	memcpy(((uint8_t*) args) + sizeof(StringArg), argument, size);

#define PREPARED_BITMAP_CALL(memcpy)									\
	uint8_t size = height * ((width - 1)/8 + 1);						\
	uint8_t argSize = sizeof(BitmapArguments) + size;					\
	BitmapArguments *args = (BitmapArguments*) alloca(argSize);			\
	args->width = width;												\
	args->height = height;												\
	memcpy(((uint8_t*) args) + sizeof(BitmapArguments), argument, size);\
	return bgx1_drawBitmap_base(args, argSize);	

// Functions for normal RAM arguments

Point bgx1_print(char *argument) {
	PREPARED_STRING_CALL(strlen, memcpy)
	return bgx1_print_base(args, argSize);
}

uint8_t bgx1_textWidth(char *argument) {
	PREPARED_STRING_CALL(strlen, memcpy)
	return bgx1_textWidth_base(args, argSize);
}

void bgx1_termPrint(char *argument) {
	PREPARED_STRING_CALL(strlen, memcpy)
	bgx1_termPrint_base(args, argSize);
}

Point bgx1_drawBitmap(uint8_t width, uint8_t height, uint8_t *argument) {
	PREPARED_BITMAP_CALL(memcpy)
}

// Function for FLASH arguments

Point bgx1_print_P(PGM_P argument) {
	PREPARED_STRING_CALL(strlen_P, memcpy_P)
	return bgx1_print_base(args, argSize);
}

uint8_t bgx1_textWidth_P(PGM_P argument) {
	PREPARED_STRING_CALL(strlen_P, memcpy_P)
	return bgx1_textWidth_base(args, argSize);
}

void bgx1_termPrint_P(PGM_P argument) {
	PREPARED_STRING_CALL(strlen_P, memcpy_P)
	bgx1_termPrint_base(args, argSize);
}

Point bgx1_drawBitmap_P(uint8_t width, uint8_t height, PGM_P argument) {
	PREPARED_BITMAP_CALL(memcpy_P)
}
