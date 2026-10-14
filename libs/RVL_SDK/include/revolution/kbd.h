#ifndef REVOLUTION_KBD_H
#define REVOLUTION_KBD_H

#include <revolution/kbd/hidtypes.h>
#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum _KBDEc {
    KBD_EC_SET_LED = 7,
} KBDEc;

typedef struct _KBDKeyEvent {
    u8 devIdx;          // 0x00
    u8 key;             // 0x01
    u32 flags;          // 0x04
    u8 unk_0x08[0x18];  // 0x08
} KBDKeyEvent;

typedef struct _KBDDevEvent {
    u8 devIdx;
    u8 unk_0x01[0x1F];
} KBDDevEvent;

void KBDInit();
void KBDInitRegionUS();

typedef void (*KBDSetLedsCB)(KBDEc, void*);
typedef void (*KBDAttachCB)(KBDDevEvent*);
typedef void (*KBDDetachCB)(KBDDevEvent*);
typedef void (*KBDKeyCB)(KBDKeyEvent*);

int KBDSetLedsAsync(u8, u32, KBDSetLedsCB, u32);
void KBDSetLockProcessing(u32 devIdx, BOOL);

void KBDSetAttachCallback(KBDAttachCB);
void KBDSetDetachCallback(KBDDetachCB);
void KBDSetKeyCallback(KBDKeyCB);

void KBDSetCountry(int idx, int country);

void KBDSetModState(u8, u32);
int KBDSetLeds(u8, u8);

u16 KBDTranslateHidCode(u8 key, u32 modifierState, u32 country);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_KBD_H
