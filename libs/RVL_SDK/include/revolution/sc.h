#ifndef REVOLUTION_SYSCONF_H
#define REVOLUTION_SYSCONF_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

/* SC System */

typedef int SCStatus;

#define SC_STATUS_OK    0
#define SC_STATUS_BUSY  1
#define SC_STATUS_FATAL 2
#define SC_STATUS_PARSE 3

typedef void (*SCFlushCallback)(int status);

void    SCInit();

u32     SCFlush();
void    SCFlushAsync(SCFlushCallback callback);

u32     SCCheckStatus();

/* Product Configuration (setting.txt) */

#define SC_PRODUCT_AREA_UNKNOWN -1
#define SC_PRODUCT_AREA_JPN     0   /* Japan */
#define SC_PRODUCT_AREA_USA     1   /* United states of America */
#define SC_PRODUCT_AREA_EUR     2   /* Europe */
#define SC_PRODUCT_AREA_AUS     3   /* Austrailia */
#define SC_PRODUCT_AREA_BRA     4   /* Brazil */
#define SC_PRODUCT_AREA_TWN     5   /* Taiwan */
#define SC_PRODUCT_AREA_KOR     6   /* Korea */
#define SC_PRODUCT_AREA_HKG     7   /* Hong kong */
#define SC_PRODUCT_AREA_ASI     8   /* Asia */
#define SC_PRODUCT_AREA_LTN     9   /* Latin */
#define SC_PRODUCT_AREA_SAF     10  /* South Africa */
#define SC_PRODUCT_AREA_CHN     11  /* China */

BOOL    SCGetProductAreaString(char* buf, u32 sz);
s8      SCGetProductArea();
char*   SCGetProductCode();

#define SC_PRODUCT_VIDEO_UNKNOWN    -1
#define SC_PRODUCT_VIDEO_NTSC       0
#define SC_PRODUCT_VIDEO_PAL        1
#define SC_PRODUCT_VIDEO_MPAL       2

BOOL    SCGetProductVideoModeString(char* buf, u32 sz);
s8      SCGetProductVideoMode();

#define SC_PRODUCT_GAME_REGION_UNKNOWN  -1
#define SC_PRODUCT_GAME_REGION_JP       0
#define SC_PRODUCT_GAME_REGION_US       1
#define SC_PRODUCT_GAME_REGION_EU       2
// #define SC_PRODUCT_GAME_REGION_ALL      3   /* Not a thing */
#define SC_PRODUCT_GAME_REGION_KR       4
#define SC_PRODUCT_GAME_REGION_CN       5

BOOL    SCGetProductGameRegionString(char* buf, u32 sz);
s8      SCGetProductGameRegion();

BOOL    SCGetProductSNString(char* buf, u32 sz);

/* System Configuration (SYSCONF) */

#define SC_ASPECT_RATIO_4x3     0
#define SC_ASPECT_RATIO_16x9    1

u8      SCGetAspectRatio();
BOOL    SCSetAspectRatio(u8 aspectRatio);

s8      SCGetDisplayOffsetH();
BOOL    SCSetDisplayOffsetH(s8 displayOffsetH);

#define SC_EURGB60_MODE_OFF 0
#define SC_EURGB60_MODE_ON  1

u8      SCGetEuRgb60Mode();
BOOL    SCSetEuRgb60Mode(u8 eurgb60Mode);

typedef struct SCIdleModeInfo {
    u8 mode;    // 0x00
    u8 led;     // 0x01
} SCIdleModeInfo;

BOOL    SCGetIdleMode(SCIdleModeInfo* info);
BOOL    SCSetIdleMode(SCIdleModeInfo* info);

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

u8      SCGetLanguage();
BOOL    SCSetLanguage(u8 language);

typedef struct SCParentalControlsInfo {
    u8  enable;             // 0x00
    u8  org;                // 0x01

    u8  ageRating;          // 0x02

    u8  pin[4];             // 0x03

    u8  secretQuestion;     // 0x07
    u16 secretAnswer[32];   // 0x08
    u16 secretAnswerLen;    // 0x48
} SCParentalControlsInfo;

BOOL    SCGetParentalControl(SCParentalControlsInfo* pcInfo);
BOOL    SCSetParentalControl(SCParentalControlsInfo* pcInfo);

#define SC_PROGRESSIVE_MODE_OFF 0
#define SC_PROGRESSIVE_MODE_ON  1

u8      SCGetProgressiveMode();
BOOL    SCSetProgressiveMode(u8 progressiveMode);

#define SC_SCREEN_SAVER_MODE_OFF    0
#define SC_SCREEN_SAVER_MODE_ON     1

u8      SCGetScreenSaverMode();
BOOL    SCSetScreenSaverMode(u8 screenSaverMode);

#define SC_SOUND_MODE_MONO      0
#define SC_SOUND_MODE_STEREO    1
#define SC_SOUND_MODE_SURROUND  2

u8      SCGetSoundMode();
BOOL    SCSetSoundMode(u8 soundMode);

u32     SCGetCounterBias();
BOOL    SCSetCounterBias(u32 counterBias);

#define SC_MAX_DEV_ENTRY_FOR_STD    10
#define SC_MAX_DEV_ENTRY_FOR_CMP    6
#define SC_MAX_DEV_ENTRY            (SC_MAX_DEV_ENTRY_FOR_STD + SC_MAX_DEV_ENTRY_FOR_CMP)

typedef struct SCBtDeviceInfo {
    u8  addr[6];    // 0x00
    u8  name[64];   // 0x06
} SCBtDeviceInfo;

typedef struct SCBtDeviceInfoArray {
    u8              numRegist;                  // 0x00
    SCBtDeviceInfo  devices[SC_MAX_DEV_ENTRY];  // 0x01
} SCBtDeviceInfoArray;

BOOL    SCGetBtDeviceInfoArray(SCBtDeviceInfoArray* devInfo);
BOOL    SCSetBtDeviceInfoArray(SCBtDeviceInfoArray* devInfo);

typedef struct SCBtCmpDevInfo {
    u8  addr[6];        // 0x00
    u8  name[64];       // 0x06
    u8  linkKey[16];    // 0x30
} SCBtCmpDevInfo;

typedef struct SCBtCmpDevInfoArray {
    u8              numRegist;                          // 0x00
    SCBtCmpDevInfo  devices[SC_MAX_DEV_ENTRY_FOR_CMP];  // 0x01
} SCBtCmpDevInfoArray;

BOOL    SCGetBtCmpDevInfoArray(SCBtCmpDevInfoArray* devInfo);
BOOL    SCSetBtCmpDevInfoArray(SCBtCmpDevInfoArray* devInfo);

u32     SCGetBtDpdSensibility();
BOOL    SCSetBtDpdSensibility(u32 dpdSensibility);

BOOL    SCGetWwwRestriction();
BOOL    SCSetWwwRestriction(BOOL wwwRestrictFlag);

#define SC_WPAD_MOTOR_MODE_OFF  0
#define SC_WPAD_MOTOR_MODE_ON   1

u8      SCGetWpadMotorMode();
BOOL    SCSetWpadMotorMode(u8 motorMode);

#define SC_WPAD_SENSOR_BAR_POSITION_BOTTOM  0
#define SC_WPAD_SENSOR_BAR_POSITION_TOP     1

u8      SCGetWpadSensorBarPosition();
BOOL    SCSetWpadSensorBarPosition(u8 sensorBarPosition);

u8      SCGetWpadSpeakerVolume();
BOOL    SCSetWpadSpeakerVolume(u8 speakerVolume);

typedef struct SCOwnerNickname {
    u16 name[10];   // 0x00
    u16 length;     // 0x14
} SCOwnerNickname;

BOOL    SCGetOwnerNickName(SCOwnerNickname* ownerNickname);
BOOL    SCSetOwnerNickName(SCOwnerNickname* ownerNickname);

#define SC_SIMPLE_ADDRESS_ID_COUNTRY    24
#define SC_SIMPLE_ADDRESS_ID_REGION     16
#define SC_SIMPLE_ADDRESS_ID_CITY       0

u32     SCGetSimpleAddressID();

typedef struct SCSimpleAddress {
    u32 id;                     // 0x00
    u16 countryName[16][64];    // 0x04
    u16 regionName[16][64];     // 0x804
    u16 latitude;               // 0x1004
    u16 longitude;              // 0x1006
} SCSimpleAddress;

BOOL    SCGetSimpleAddressData(SCSimpleAddress* address);
BOOL    SCSetSimpleAddressData(SCSimpleAddress* address);

#define SC_NET_RESTRICTIONS_NONE        0
#define SC_NET_RESTRICTIONS_OPERA       (1 << 0)
#define SC_NET_RESTRICTIONS_MSG_BOARD   (1 << 1)
#define SC_NET_RESTRICTIONS_SHOPPING    (1 << 2)

u32     SCGetNetContentRestrictions();
BOOL    SCSetNetContentRestrictions(u32 netRestrictions);

BOOL    SCGetConfigDoneFlag();
BOOL    SCSetConfigDoneFlag(BOOL configDoneFlag);

BOOL    SCGetConfigDoneFlag2();
BOOL    SCSetConfigDoneFlag2(BOOL configDone2Flag);

#define SC_UPDATE_TYPE_NONE     0
#define SC_UPDATE_TYPE_DISC     1
#define SC_UPDATE_TYPE_NETWORK  2

u8      SCGetUpdateType();
BOOL    SCSetUpdateType(u8 updateType);

BOOL    SCGetEULA();
BOOL    SCSetEULA(BOOL eulaFlag);

#define SC_WC_FLAGS_DISABLED    0
#define SC_WC_FLAGS_ENABLED     1

u32     SCGetWCFlags();
BOOL    SCSetWCFlags(u32 wcFlags);

BOOL    SCGetFreeChannelAppCount(u32* count);
BOOL    SCSetFreeChannelAppCount(u32 count);

BOOL    SCGetInstalledChannelAppCount(u32* count);
BOOL    SCSetInstalledChannelAppCount(u32 count);

u64     SCGetTmpTitleID();
BOOL    SCSetTmpTitleID(u64 titleId);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_SYSCONF_H
