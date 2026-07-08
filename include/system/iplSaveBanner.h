#ifndef IPL_SAVE_BANNER_H
#define IPL_SAVE_BANNER_H

#include <revolution/types.h>
#include <wchar.h>

// uhh idk :P

#define WII_SAVE_BANNER_SIGNATURE 'WIBN' /* WIi save BaNner? */
#define WII_SAVE_BANNER_LENGTH 32

#define WII_SAVE_BANNER_ICON_COUNT 8

#define WII_SAVE_BANNER_ICON_TEXSIZE 0x1200
#define WII_SAVE_BANNER_ICON_WIDTH 48
#define WII_SAVE_BANNER_ICON_HEIGHT 48

#define WII_SAVE_BANNER_BNR_TEXSIZE 0x6000
#define WII_SAVE_BANNER_BNR_WIDTH 192
#define WII_SAVE_BANNER_BNR_HEIGHT 64

#define WII_SAVE_BANNER_FRAME_TICK 4

#define WII_SAVE_BANNER_NORMAL_SIZE offsetof(WIISaveBannerFile, iconData1)
#define WII_SAVE_BANNER_FULL_SIZE sizeof(WIISaveBannerFile)

#define WII_SAVE_BANNER_FLAG_NOCOPY 0x01
#define WII_SAVE_BANNER_FLAG_ALTERNATE 0x10

typedef struct WIISaveBannerFile {
    u32 signature;  // 0x00
    u32 flags;      // 0x04
    u16 speed;      // 0x08
    u8 padding[22];

    wchar_t name[WII_SAVE_BANNER_LENGTH];     // 0x20
    wchar_t subName[WII_SAVE_BANNER_LENGTH];  // 0x60

    u8 bannerData[WII_SAVE_BANNER_BNR_TEXSIZE];  // 0xA0

    u8 iconData[WII_SAVE_BANNER_ICON_TEXSIZE];   // 0x60A0
    u8 iconData1[WII_SAVE_BANNER_ICON_TEXSIZE];  // 0x72A0
    u8 iconData2[WII_SAVE_BANNER_ICON_TEXSIZE];  // 0x84A0
    u8 iconData3[WII_SAVE_BANNER_ICON_TEXSIZE];  // 0x96A0
    u8 iconData4[WII_SAVE_BANNER_ICON_TEXSIZE];  // 0xA8A0
    u8 iconData5[WII_SAVE_BANNER_ICON_TEXSIZE];  // 0xBAA0
    u8 iconData6[WII_SAVE_BANNER_ICON_TEXSIZE];  // 0xCCA0
    u8 iconData7[WII_SAVE_BANNER_ICON_TEXSIZE];  // 0xDEA0
} WIISaveBannerFile;

#endif  // IPL_SAVE_BANNER_H
