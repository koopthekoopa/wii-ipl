#ifndef REVOLUTION_SYSCONF_H
#define REVOLUTION_SYSCONF_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct SCIdleModeInfo {
    u8 mode;    // 0x00
    u8 led;     // 0x01
} SCIdleModeInfo;

typedef struct SCParentalControlsInfo {
    u8  enable;             // 0x00
    u8  org;                // 0x01

    u8  ageRating;          // 0x02

    u8  pin[4];             // 0x03

    u8  secretQuestion;     // 0x07
    u16 secretAnswer[32];   // 0x08
    u16 secretAnswerLen;    // 0x48
} SCParentalControlsInfo;

BOOL    SCGetIdleMode(SCIdleModeInfo* info);

BOOL    SCGetEULA();

#define SC_ASPECT_RATIO_4x3         0
#define SC_ASPECT_RATIO_16x9        1

u8      SCGetAspectRatio();

#define SC_EURGB60_MODE_OFF         0
#define SC_EURGB60_MODE_ON          1

u8      SCGetEuRgb60Mode();

#define SC_PROGRESSIVE_MODE_OFF     0
#define SC_PROGRESSIVE_MODE_ON      1

u8      SCGetProgressiveMode();

#define SC_SCREEN_SAVER_MODE_OFF    0
#define SC_SCREEN_SAVER_MODE_ON     1

u8      SCGetScreenSaverMode();

#define SC_LANG_JAPANESE            0
#define SC_LANG_ENGLISH             1
#define SC_LANG_GERMAN              2
#define SC_LANG_FRENCH              3
#define SC_LANG_SPANISH             4
#define SC_LANG_ITALIAN             5
#define SC_LANG_DUTCH               6
#define SC_LANG_SIMP_CHINESE        7
#define SC_LANG_TRAD_CHINESE        8
#define SC_LANG_KOREAN              9
#define SC_LANG_MAX                 10

u8      SCGetLanguage();

#define SC_PRODUCT_AREA_UNKNOWN     -1
#define SC_PRODUCT_AREA_JPN         0   /* Japan */
#define SC_PRODUCT_AREA_USA         1   /* United states of America */
#define SC_PRODUCT_AREA_EUR         2   /* Europe */
#define SC_PRODUCT_AREA_AUS         3   /* Austrailia */
#define SC_PRODUCT_AREA_BRA         4   /* Brazil */
#define SC_PRODUCT_AREA_TWN         5   /* Taiwan */
#define SC_PRODUCT_AREA_KOR         6   /* Korea */
#define SC_PRODUCT_AREA_HKG         7   /* Hong kong */
#define SC_PRODUCT_AREA_ASI         8   /* Asia */
#define SC_PRODUCT_AREA_LTN         9   /* Latin */
#define SC_PRODUCT_AREA_SAF         10  /* South Africa */
#define SC_PRODUCT_AREA_CHN         11  /* China */

s8      SCGetProductArea();
s8      SCGetRegion();

u64     SCGetTmpTitleID();
void    SCSetTmpTitleID(u64 titleId);

s8      SCGetProductGameRegion();

u32     SCGetSimpleAddressID();

void    SCInit();
void    SCFlush();
u32     SCCheckStatus();

BOOL    SCGetParentalControl(SCParentalControlsInfo* pcInfo);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_SYSCONF_H
