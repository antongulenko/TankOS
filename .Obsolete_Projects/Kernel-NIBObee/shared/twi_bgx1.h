#ifndef TWI_BGX1_H_
#define TWI_BGX1_H_

#include <kernel/TWI/twi_raw.h>
#ifdef _KERNEL_
TWIDevice bgx1 = { 11 << 1 };
#else
extern TWIDevice bgx1;
#endif
#ifdef TWI_DEVICE
#undef TWI_DEVICE
#endif
#define TWI_DEVICE bgx1

#include <kernel/TWI/twi_rpc_client.h>
#include <avr/pgmspace.h>

#define BGX1_VERSION 0x0103

// This enum is copied from bgx1_protocol.h in the NIBObeeLib.
enum {
  // System:
  CMD_Reset           = 0x00, // () -> ()
  CMD_GetVersion      = 0x01, // () -> (uint16_t version)
  CMD_GetStatus       = 0x02, // () -> (uint8_t status)
  CMD_SetStatus       = 0x03, // (uint8_t status) -> ()
  //CMD_ReadEEPROM      = 0x04, // (uint16_t address, uint8_t size) -> (uint8_t[] data)
  //CMD_WriteEEPROM     = 0x05, // (uint16_t address, uint8_t size, uint8_t[] data) -> ()
  
  // Display:
  CMD_Move            = 0x10, // (uint8_t x, uint8_t y) -> ()
  CMD_Mode            = 0x11, // (uint8_t mode) -> ()
  CMD_FillAll         = 0x12, // (uint8_t pattern) -> ()
  CMD_Print           = 0x13, // (char text[]) -> (uint8_t x, uint8_t y)
  CMD_TextWidth       = 0x14, // (char text[]) -> (uint8_t width)
  CMD_SelectFont      = 0x15, // (uint8_t id) -> ()
  CMD_HLine           = 0x16, // (uint8_t length) -> (uint8_t x, uint8_t y)
  CMD_VLine           = 0x17, // (uint8_t length) -> (uint8_t x, uint8_t y)
  CMD_Box             = 0x18, // (uint8_t width, uint8_t height) -> (uint8_t x, uint8_t y)
  CMD_Bitmap          = 0x19, // (uint8_t width, uint8_t height, uint8_t bitmap[]) -> (uint8_t x, uint8_t y)
  CMD_EmbeddedImage   = 0x1a, // (uint8_t id) -> (uint8_t x, uint8_t y)
  CMD_LineTo          = 0x1b, // (uint8_t x, uint8_t y) -> ()

  // Terminal:
  CMD_TermClear       = 0x30, // () -> ()
  CMD_TermGoto        = 0x31, // (uint8_t col, uint8_t row) -> ()
  CMD_TermScroll      = 0x32, // (uint8_t lines) -> ()
  CMD_TermPrint       = 0x33, // (char text[]) -> ()

  // IO:
  CMD_SyncPort        = 0x40, // (uint8_t ddr, uint8_t port) -> (uint8_t pin)
  CMD_GetAnalog       = 0x41, // (uint8_t idx) -> (uint16_t value)
  CMD_SyncInterface   = 0x42, // (uint8_t leds) -> (uint8_t keys)
  CMD_SetIllumination = 0x43, // (uint16_t value) -> ()
  
  CMD_INVALID         = 0xff 
};

// System
TWI_RPC_FUNCTION_PNOTIFY(bgx1_reset, CMD_Reset)
TWI_RPC_FUNCTION_NOARGS	(bgx1_getVersion_base, CMD_GetVersion, uint16_t)
TWI_RPC_FUNCTION_NOARGS	(bgx1_getStatus, CMD_GetStatus, uint8_t)
TWI_RPC_FUNCTION_PVOID	(bgx1_setStatus, CMD_SetStatus, uint8_t)

typedef struct {
	uint8_t x;
	uint8_t y;
} Point, *PPoint, Rect, *PRect;

typedef struct {
	uint8_t width;
	uint8_t height;
	// The rest of the arguments is uint8_t bitmap[],
	// which cannot be directly embedded here.
} BitmapArguments, *PBitmapArguments;

// Indicates, that a whole string with variable length has to be sent.
typedef char StringArg;

// Display
TWI_RPC_FUNCTION_PVOID	(bgx1_move_base, CMD_Move, Point)
TWI_RPC_FUNCTION_PVOID	(bgx1_mode, CMD_Mode, uint8_t)
TWI_RPC_FUNCTION_PVOID	(bgx1_fillAll, CMD_FillAll, uint8_t)
TWI_RPC_FUNCTION_VARARGS(bgx1_print_base, CMD_Print, StringArg, Point)
TWI_RPC_FUNCTION_VARARGS(bgx1_textWidth_base, CMD_TextWidth, StringArg, uint8_t)
TWI_RPC_FUNCTION_PVOID	(bgx1_selectFont, CMD_SelectFont, uint8_t)
TWI_RPC_FUNCTION		(bgx1_hLine, CMD_HLine, uint8_t, Point)
TWI_RPC_FUNCTION		(bgx1_vLine, CMD_VLine, uint8_t, Point)
TWI_RPC_FUNCTION		(bgx1_box_base, CMD_Box, Rect, Point)
TWI_RPC_FUNCTION_VARARGS(bgx1_drawBitmap_base, CMD_Bitmap, BitmapArguments, Point)
TWI_RPC_FUNCTION		(bgx1_embeddedImage, CMD_EmbeddedImage, uint8_t, Point)
TWI_RPC_FUNCTION		(bgx1_lineTo_base, CMD_LineTo, Point, Point)

// Terminal
TWI_RPC_FUNCTION_PNOTIFY(bgx1_termClear, CMD_TermClear)
TWI_RPC_FUNCTION_PVOID	(bgx1_termGoto_base, CMD_TermGoto, Point)
TWI_RPC_FUNCTION_PVOID	(bgx1_termScroll, CMD_TermScroll, int8_t)

// The NIBObee lib receives an extra byte when executing this, don't know why
TWI_RPC_FUNCTION_VARARGS(bgx1_termPrint_base, CMD_TermPrint, StringArg, byte)

typedef struct {
	uint8_t ddr;
	uint8_t port;
} SyncPortArgs, *PSyncPortArgs;

// IO
TWI_RPC_FUNCTION		(bgx1_syncPort_base, CMD_SyncPort, SyncPortArgs, uint8_t)
TWI_RPC_FUNCTION		(bgx1_getAnalog_base, CMD_GetAnalog, uint8_t, uint16_t)
TWI_RPC_FUNCTION		(bgx1_syncInterface, CMD_SyncInterface, uint8_t, uint8_t)
TWI_RPC_FUNCTION_PVOID	(bgx1_setIllumination, CMD_SetIllumination, uint16_t)

#define BGX1_BTN_1 _BV(0)
#define BGX1_BTN_2 _BV(1)
#define BGX1_BTN_3 _BV(2)
#define BGX1_BTN_4 _BV(3)

#define BGX1_LED_1 _BV(0)
#define BGX1_LED_2 _BV(1)
#define BGX1_LED_3 _BV(2)
#define BGX1_LED_4 _BV(3)

Point bgx1_print(char *argument);
Point bgx1_print_P(PGM_P argument);
uint8_t bgx1_textWidth(char *argument);
uint8_t bgx1_textWidth_P(PGM_P argument);
byte bgx1_termPrint(char *argument);
byte bgx1_termPrint_P(PGM_P argument);

// Max 18 bytes bitmap-data
Point bgx1_drawTile(uint8_t width, uint8_t height, const uint8_t *bitmap);
Point bgx1_drawTile_P(uint8_t width, uint8_t height, PGM_P bitmap);

// Iterates the bitmap data and prints it in chunks.
// The result-value will be zero, if height is zero.
Point bgx1_drawBitmap(uint8_t width, uint8_t height, const uint8_t *bitmap);
Point bgx1_drawBitmap_P(uint8_t width, uint8_t height, PGM_P bitmap);

void bgx1_move(uint8_t x, uint8_t y);
Point bgx1_box(uint8_t width, uint8_t height);
void bgx1_lineTo(uint8_t x, uint8_t y);
void bgx1_termGoto(uint8_t x, uint8_t y);
uint8_t bgx1_syncPort(uint8_t ddr, uint8_t port);

uint16_t bgx1_getAnalog(uint8_t index);
uint16_t bgx1_getVersion();

// Query the version from the bgx1 and check whether the transmission
// went alright.
BOOL bgx1_initialized();

#endif