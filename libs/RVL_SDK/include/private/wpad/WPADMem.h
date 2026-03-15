#ifndef PRIVATE_WPAD_MEMORY_H
#define PRIVATE_WPAD_MEMORY_H

#include <revolution/types.h>

#include <revolution/wpad.h>

#ifdef __cplusplus
extern "C" {
#endif

#define WM_MEM_ADDR(ADDR) ((ADDR) & 0xFFFF)
#define WM_EXT_REG_ADDR(TYPE, ADDR) (((ADDR) & 0xFFFF) | ((WPAD_EXT_REG_##TYPE) << 16) | (1 << 26))

typedef enum {
    WPAD_EXT_REG_SPEAKER = 0xA2,
    WPAD_EXT_REG_EXTENSION = 0xA4,
    WPAD_EXT_REG_MOTION_PLUS = 0xA6,
    WPAD_EXT_REG_DPD = 0xB0
} WPADExtRegType;

typedef struct WPADMemBlock {
    int unk_0x00;           // 0x00
    int unk_0x04;           // 0x04
    s16 unk_0x08;           // 0x08
    int unk_0x0c;           // 0x0C
    WPADCallback unk_0x10;  // 0x10
} WPADMemBlock;

typedef struct WPADGameInfo {
    s64 timestamp;         // 0x00
    u16 gameName[16 + 1];  // 0x08
    char gameID[4];        // 0x2A
    u8 gameType;           // 0x2E
    u8 checksum;           // 0x2F
    u8 UNK_0x30[8];
} WPADGameInfo;

extern WPADMemBlock _wmb[WPAD_MAX_CONTROLLERS];

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_WPAD_MEMORY_H
