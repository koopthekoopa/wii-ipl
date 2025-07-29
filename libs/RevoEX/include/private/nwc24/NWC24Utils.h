#ifndef PRIVATE_NWC24_UTILS_H
#define PRIVATE_NWC24_UTILS_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>
#include <revolution/nwc24/NWC24Types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NWC24Date {
    u16 year;       // 0x00
    u8  month;      // 0x02
    u8  day;        // 0x03
    u8  hour;       // 0x04
    u8  sec;        // 0x05
    u8  min;        // 0x06
    u8  unk_0x07;
} NWC24Date;

void        NWC24Date_Init(NWC24Date* date);

void        NWC24iConvIdToStr(NWC24UserId addr, char* out);

NWC24Err    NWC24iCheckStringLength(const char* str, int minLen, int maxLen);
s32         NWC24iStrLCpy(char* dest, const char* src, s32 len);

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NWC24_UTILS_H
