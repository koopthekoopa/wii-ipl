#ifndef REVOLUTION_SYSCONF_H
#define REVOLUTION_SYSCONF_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define SC_LANG_JAPANESE            0
#define SC_LANG_ENGLISH             1
#define SC_LANG_GERMAN              2
#define SC_LANG_FRENCH              3
#define SC_LANG_SPANISH             4
#define SC_LANG_ITALIAN             5
#define SC_LANG_DUTCH               6
#define SC_LANG_SIMPLE_CHINESE      7
#define SC_LANG_TRADITIONAL_CHINESE 8
#define SC_LANG_KOREAN              9

u8  SCGetLanguage();

#define SC_AREA_JAPAN               0
#define SC_AREA_NORTH_AMERICA       1
#define SC_AREA_EUROPE              2
#define SC_AREA_AUSTRALIA           3
#define SC_AREA_BRAZIL              4
#define SC_AREA_TAIWAN              5
#define SC_AREA_KOREA               6
#define SC_AREA_HONG_KONG           7
#define SC_AREA_ASIA                8
#define SC_AREA_LATIN               9
#define SC_AREA_SOUTH_AFRICA        10
#define SC_AREA_CHINA               11

s8  SCGetRegion();

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_SYSCONF_H


