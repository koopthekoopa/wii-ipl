#ifndef REVOLUTION_OS_RTC_H
#define REVOLUTION_OS_RTC_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

u16     OSGetGbsMode();
void    OSSetGbsMode(u16 mode);

#define OS_SOUND_MODE_MONO          0
#define OS_SOUND_MODE_STEREO        1

u32     OSGetSoundMode();
void    OSSetSoundMode(u32 mode);

#define OS_PROGRESSIVE_MODE_OFF     0
#define OS_PROGRESSIVE_MODE_ON      1

u32     OSGetProgressiveMode();
void    OSSetProgressiveMode(u32 mode);

#define OS_VIDEO_MODE_NTSC          0
#define OS_VIDEO_MODE_PAL           1
#define OS_VIDEO_MODE_MPAL          2

void    OSSetVideoMode(u32 mode);

#define OS_LANG_ENGLISH         0
#define OS_LANG_ENGLISH         0
#define OS_LANG_GERMAN          1
#define OS_LANG_FRENCH          2
#define OS_LANG_SPANISH         3
#define OS_LANG_ITALIAN         4
#define OS_LANG_DUTCH           5
#define OS_LANG_SIMP_CHINESE    6
#define OS_LANG_TRAD_CHINESE    7
#define OS_LANG_KOREAN          8
#define OS_LANG_MAX             9

u8      OSGetLanguage();
void    OSSetLanguage(u8 language);

#define OS_EURGB60_OFF              0
#define OS_EURGB60_ON               1

u32     OSGetEuRgb60Mode();
void    OSSetEuRgb60Mode(u32 on);

u16     OSGetWirelessID(s32 chan);
void    OSSetWirelessID(s32 chan, u16 id);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_RTC_H
