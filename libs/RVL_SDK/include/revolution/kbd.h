#ifndef REVOLUTION_KBD_H
#define REVOLUTION_KBD_H

#include <revolution/types.h>

#include <wchar.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum _KBDReservedChars {
    KBD_RESERVED_CTRL = 0xF000,
    KBD_RESERVED_SHIFT,
    KBD_RESERVED_ALT,
    KBD_RESERVED_GUI,
    KBD_RESERVED_UNK_4,  // Modifier key
    KBD_RESERVED_ALTGR,
    KBD_RESERVED_CYCLE_LANGS,
    KBD_RESERVED_NUMLOCK,
    KBD_RESERVED_CAPSLOCK,

    KBD_RESERVED_PRINTSCREEN = 0xF020,
    KBD_RESERVED_SCROLLLOCK = 0xF021,
    KBD_RESERVED_PAUSE = 0xF022,
    KBD_RESERVED_APPLICATION = 0xF02F,

    KBD_RESERVED_INTL_A = 0xF040,
    KBD_RESERVED_INTL_B,
    KBD_RESERVED_INTL_C,
    KBD_RESERVED_TOGGLE_IME,

    KBD_RESERVED_F1 = 0xF061,
    KBD_RESERVED_F2,
    KBD_RESERVED_F3,
    KBD_RESERVED_F4,
    KBD_RESERVED_F5,
    KBD_RESERVED_F6,
    KBD_RESERVED_F7,
    KBD_RESERVED_F8,
    KBD_RESERVED_F9,
    KBD_RESERVED_F10,
    KBD_RESERVED_F11,
    KBD_RESERVED_F12,

    KBD_RESERVED_NPD_OFFSET = 0xF100,

    KBD_RESERVED_DELETE = 0xF1AE,

    KBD_RESERVED_INSERT = 0xF1B0,
    KBD_RESERVED_END = 0xF1B1,
    KBD_RESERVED_DOWNARROW = 0xF1B2,
    KBD_RESERVED_PAGEDOWN = 0xF1B3,
    KBD_RESERVED_LEFTARROW = 0xF1B4,
    KBD_RESERVED_RIGHTARROW = 0xF1B6,
    KBD_RESERVED_HOME = 0xF1B7,
    KBD_RESERVED_UPARROW = 0xF1B8,
    KBD_RESERVED_PAGEUP = 0xF1B9,

    KBD_RESERVED_ENTER = 0xF1CD,
    KBD_RESERVED_ESC = 0xF1DB,
    KBD_RESERVED_BACKSPACE = 0xF1C8,
    KBD_RESERVED_TAB = 0xF1C9,
} KBDReservedChars;

typedef enum _KBDSupportedModifierFlag {
    KBD_KEYHAS_LANG1 = 1 << 0,
    KBD_KEYHAS_LANG1_SHIFT = 1 << 1,
    KBD_KEYHAS_LANG2 = 1 << 2,
    KBD_KEYHAS_LANG2_SHIFT = 1 << 3,
    KBD_KEYHAS_LANG3 = 1 << 4,
    KBD_KEYHAS_LANG3_SHIFT = 1 << 5,
    KBD_KEYHAS_ALTGR = 1 << 6,
    KBD_KEYHAS_ALTGR_SHIFT = 1 << 7,
} KBDSupportedModifierFlag;

typedef enum _KBDMapSupportFlag {
    KBD_MAPHAS_NONE = 0,
    KBD_MAPHAS_LANG2 = 1 << 0,
    KBD_MAPHAS_LANG2_SHIFT = 1 << 1,
    KBD_MAPHAS_LANG3 = 1 << 2,
    KBD_MAPHAS_LANG3_SHIFT = 1 << 3,
    KBD_MAPHAS_ALTGR = 1 << 4,
    KBD_MAPHAS_ALTGR_SHIFT = 1 << 5,
    KBD_MAPHAS_UNKTYPE = 1 << 6,
    KBD_MAPHAS_UNKTYPE_SHIFT = 1 << 7,
} KBDMapSupportFlag;

typedef enum _KBDEc {
    KBD_EC_OK = 0,
    KBD_EC_FATAL = 1,
    KBD_EC_NOT_INIT = 2,
    KBD_EC_ALREADY_INIT = 3,
    KBD_EC_OUT_OF_RANGE = 4,
    KBD_EC_DEVICE_ERR = 5,
    KBD_EC_SET_LED = 7,
} KBDEc;

typedef struct _KBDKeyEvent {
    u8 devIdx;          // 0x0
    u8 keyCode;         // 0x1
    u32 flags;          // 0x4
    u32 modifierState;  // 0x8
    wchar_t chr;        // 0xC
} KBDKeyEvent;

typedef struct _KBDDevEvent {
    u8 devIdx;
} KBDDevEvent;

void KBDInitRegionUS();
void KBDInitRegionEU();
void KBDInitRegionJP();

KBDEc KBDInit();

typedef void (*KBDSetLedsCB)(KBDEc, void*);
typedef void (*KBDAttachCB)(KBDDevEvent*);
typedef void (*KBDDetachCB)(KBDDevEvent*);
typedef void (*KBDKeyCB)(KBDKeyEvent*);

int KBDSetLedsAsync(u8 bitIdx, u32, KBDSetLedsCB cb, void* cmdData);
int KBDSetLeds(u8, u32);

KBDEc KBDSetLockProcessing(u8 devIdx, BOOL);

KBDAttachCB KBDSetAttachCallback(KBDAttachCB);
KBDDetachCB KBDSetDetachCallback(KBDDetachCB);
KBDKeyCB KBDSetKeyCallback(KBDKeyCB);

KBDEc KBDSetCountry(u8 devIdx, int country);
KBDEc KBDSetModState(u8 devIdx, u32 modifierState);
KBDEc KBDGetModState(u8 devIdx, u32* modifierStateOut);

wchar_t KBDTranslateHidCode(u8 key, int modifierState, int country);

KBDEc KBDResetChannel(u8 devIdx);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_KBD_H
