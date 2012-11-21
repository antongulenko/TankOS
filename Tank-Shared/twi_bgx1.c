
#include "twi_bgx1.h"
#include <alloca.h>
#include <string.h>

// The memcpy-operations in these wrapper-functions have 2 purposes:
// - for bitmaps, the width/height has be prepended, so we need a buffer
//		to hold the bitmap itself and this additional data
// - for strings in program-memory (_P functions), we need to fetch the
//		string into RAM before handing it to the TWI engine.
// The buffer is allocated on the stack to save malloc-calls.
// This is ok, since we do not return before the completion of the operation.

// Max bytes to send per bitmap image
#define BITMAP_MAX 18

#define ROW_LENGTH(width) ((width - 1)/8 + 1)

#define FETCH_PROGRAM_STRING()								\
	uint8_t argSize = strlen_P(argument);					\
	StringArg *ramString = (StringArg*) alloca(argSize);	\
	memcpy_P((uint8_t*) ramString, argument, argSize);

#define PREPARED_BITMAP_CALL(MEMCPY)									\
	uint8_t size = height * ROW_LENGTH(width);							\
	uint8_t argSize = sizeof(BitmapArguments) + size;					\
	BitmapArguments *args = (BitmapArguments*) alloca(argSize);			\
	args->width = width;												\
	args->height = height;												\
	MEMCPY(((uint8_t*) args) + sizeof(BitmapArguments), argument, size);\
	return bgx1_drawBitmap_base(args, argSize);	

// ==
// Functions for normal RAM arguments
// ==

Point bgx1_print(char *argument) {
	return bgx1_print_base(argument, strlen(argument));
}

uint8_t bgx1_textWidth(char *argument) {
	return bgx1_textWidth_base(argument, strlen(argument));
}

byte bgx1_termPrint(char *argument) {
	return bgx1_termPrint_base(argument, strlen(argument));
}

Point bgx1_drawTile(uint8_t width, uint8_t height, const uint8_t *argument) {
	PREPARED_BITMAP_CALL(memcpy)
}

// ==
// Functions for FLASH arguments
// ==

Point bgx1_print_P(PGM_P argument) {
	FETCH_PROGRAM_STRING();
	return bgx1_print_base(ramString, argSize);
}

uint8_t bgx1_textWidth_P(PGM_P argument) {
	FETCH_PROGRAM_STRING();
	return bgx1_textWidth_base(ramString, argSize);
}

byte bgx1_termPrint_P(PGM_P argument) {
	FETCH_PROGRAM_STRING();
	return bgx1_termPrint_base(ramString, argSize);
}

Point bgx1_drawTile_P(uint8_t width, uint8_t height, PGM_P argument) {
	PREPARED_BITMAP_CALL(memcpy_P)
}

// ==
// Functions to fix byte-order
// ==

uint16_t bgx1_getVersion() {
	uint16_t result = bgx1_getVersion_base();
	turn_word(&result);
	return result;
}

uint16_t bgx1_getAnalog(uint8_t index) {
	uint16_t result = bgx1_getAnalog_base(index);
	turn_word(&result);
	return result;
}

// ==
// Convenience functions for 2 parameters
// ==

void bgx1_move(uint8_t x, uint8_t y) {
	bgx1_move_base((Point) { x, y });
}

Point bgx1_box(uint8_t width, uint8_t height) {
	return bgx1_box_base((Rect) { width, height });
}

void bgx1_lineTo(uint8_t x, uint8_t y) {
	bgx1_lineTo_base((Point) { x, y });
}

void bgx1_termGoto(uint8_t x, uint8_t y) {
	bgx1_termGoto_base((Point) { x, y });
}

uint8_t bgx1_syncPort(uint8_t ddr, uint8_t port) {
	return bgx1_syncPort_base((SyncPortArgs) { ddr, port });
}

BOOL bgx1_initialized() {
	uint16_t version = bgx1_getVersion();
	return (twi_error == TWI_No_Error) && (version == BGX1_VERSION);
}

#define DRAW_BITMAP(DRAW_TILE)											\
	uint8_t row_size = ROW_LENGTH(width);								\
	uint8_t rows_per_tile = BITMAP_MAX / row_size;						\
	Point newPos = {0};													\
	while (height) {													\
		uint8_t h = (height > rows_per_tile) ? rows_per_tile : height;	\
		newPos = DRAW_TILE(width, h, data);								\
		data += row_size * h;											\
		height -= h;													\
		/* Dont know why, but we have to add +2 here... */				\
		if (height)														\
			bgx1_move(newPos.x - row_size + 2, newPos.y);				\
	}																	\
	return newPos;

Point bgx1_drawBitmap(uint8_t width, uint8_t height, const uint8_t bytes[]) {
	const uint8_t *data = bytes;
	DRAW_BITMAP(bgx1_drawTile)
}

Point bgx1_drawBitmap_P(uint8_t width, uint8_t height, PGM_P data) {
	DRAW_BITMAP(bgx1_drawTile_P)
}
