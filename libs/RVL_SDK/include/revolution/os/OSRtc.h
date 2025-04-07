#ifndef REVOLUTION_OS_RTC_H
#define REVOLUTION_OS_RTC_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

u16     OSGetGbsMode();
void    OSSetGbsMode(u16 mode);

u32     OSGetSoundMode();
void    OSSetSoundMode(u32 mode);

u32     OSGetProgressiveMode();
void    OSSetProgressiveMode(u32 mode);

void    OSSetVideoMode(u32 mode);

u8      OSGetLanguage();
void    OSSetLanguage(u8 language);

u32     OSGetEuRgb60Mode();
void    OSSetEuRgb60Mode(u32 on);

u16     OSGetWirelessID(s32 chan);
void    OSSetWirelessID(s32 chan, u16 id);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_RTC_H
