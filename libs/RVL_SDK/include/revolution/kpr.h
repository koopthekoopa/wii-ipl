#ifndef REVOLUTION_KPR_H
#define REVOLUTION_KPR_H

#include <revolution/types.h>
#include <wchar.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum _KPRMode {
    KPR_MODE_NONE = 0,
    KPR_MODE_ALT_KEYPAD = (1 << 0),
    KPR_MODE_DEADKEY = (1 << 1),
    KPR_MODE_JP_ROMAJI_HIRAGANA = (1 << 2),
    KPR_MODE_JP_ROMAJI_KATAKANA = (1 << 3)
} KPRMode;

typedef struct _KPRQueue {
    wchar_t text[5];  // 0x00
    KPRMode mode;     // 0x0C
    u8 oCount;        // 0x10
    u8 iCount;        // 0x11
    u32 altVal;       // 0x14
} KPRQueue;

void KPRInitRegionUS();
void KPRInitRegionEU();
void KPRInitRegionJP();

void KPRInitQueue(KPRQueue* queue);
void KPRClearQueue(KPRQueue* queue);
void KPRSetMode(KPRQueue* queue, KPRMode mode);

u8 KPRPutChar(KPRQueue* queue, wchar_t);
wchar_t KPRGetChar(KPRQueue* queue);

u8 KPRLookAhead(const KPRQueue* queue, wchar_t* outBuf, u32 outBufLen);

BOOL KPRProcessAltKeypad(KPRQueue* queue, wchar_t ch);
void KPRProcessDeadKeys(KPRQueue* queue);
void KPRProcessRomaji(KPRQueue* queue);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_KPR_H
