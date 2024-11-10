#ifndef REVOLUTION_SYSCONF_H
#define REVOLUTION_SYSCONF_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define SC_ASPECT_RATIO_4x3     0
#define SC_ASPECT_RATIO_16x9    1

#define SC_LANG_JAPANESE        0
#define SC_LANG_ENGLISH         1
#define SC_LANG_GERMAN          2
#define SC_LANG_FRENCH          3
#define SC_LANG_SPANISH         4
#define SC_LANG_ITALIAN         5
#define SC_LANG_DUTCH           6
#define SC_LANG_SIMP_CHINESE    7
#define SC_LANG_TRAD_CHINESE    8
#define SC_LANG_KOREAN          9
#define SC_LANG_MAX             10

u8  SCGetLanguage();

#define SC_PRODUCT_AREA_UNKNOWN     -1
#define SC_PRODUCT_AREA_JPN         0
#define SC_PRODUCT_AREA_USA         1
#define SC_PRODUCT_AREA_EUR         2
#define SC_PRODUCT_AREA_AUS         3
#define SC_PRODUCT_AREA_BRA         4
#define SC_PRODUCT_AREA_TWN         5
#define SC_PRODUCT_AREA_KOR         6
#define SC_PRODUCT_AREA_HKG         7
#define SC_PRODUCT_AREA_ASI         8
#define SC_PRODUCT_AREA_LTN         9
#define SC_PRODUCT_AREA_SAF         10
#define SC_PRODUCT_AREA_CHN         11

s8  SCGetRegion();

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_SYSCONF_H


