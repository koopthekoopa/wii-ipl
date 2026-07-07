#ifndef REVOLUTION_WD_H
#define REVOLUTION_WD_H

#include <revolution/types.h>

#include <private/ios/types.h>

/* thanks to Dolphin emulator and WiiBrew */

#define WD_VENDOR_LENGTH 3

enum {
    WD_ERR_OK = 0,
    WD_ERR_FATAL = -1, /* unknown fatal */
    WD_ERR_WL_ERROR = -2,
    WD_ERR_BAD_ARGUMENTS = -3,
    WD_ERR_4 = -4,
    WD_ERR_5 = -5, /* currently loaded IOS does not have WD module */
    WD_ERR_6 = -6,
    WD_ERR_7 = -7,
};

enum {
    WD_PRIVACY_MODE_NONE = 0,
    WD_PRIVACY_MODE_DS_COMMUNICATION,
    WD_PRIVACY_MODE_2,
    WD_PRIVACY_MODE_AOSS_ACCESS,
    WD_PRIVACY_MODE_4,
    WD_PRIVACY_MODE_5,
    WD_PRIVACY_MODE_6,
    WD_PRIVACY_MODE_7,
    WD_PRIVACY_MODE_8,
};

typedef struct WDInformationElement_ {
    u8 id;      // 0x00
    u8 length;  // 0x01
} WDInfoElement;

typedef struct WDVendorInfoElement_ {
    u8 id;                      // 0x00
    u8 length;                  // 0x01
    u8 data[WD_VENDOR_LENGTH];  // 0x02
    u8 mode;                    // 0x03
} WDVendorInfoElement;

#define WD_BSSID_LENGTH 6
#define WD_SSID_LENGTH 32

typedef struct WDScanParam_ {
    u16 channelBit;               // 0x00
    u16 maxChannelTime;           // 0x02
    u8 bssid[WD_BSSID_LENGTH];    // 0x04
    u16 type;                     // 0x0A
    u16 ssidLength;               // 0x0C
    u8 ssid[WD_SSID_LENGTH];      // 0x0E
    u8 ssidMask[WD_SSID_LENGTH];  // 0x2E
} PACKED WDScanParam;

typedef struct WDBssDesc_ {
    u16 length;                 // 0x00
    u16 rssi;                   // 0x02
    u8 bssid[WD_BSSID_LENGTH];  // 0x04
    u16 ssidLength;             // 0x0A
    u8 ssid[WD_SSID_LENGTH];    // 0x0C
    u16 capabilities;           // 0x2C
    struct {
        u16 basic;      // 0x00
        u16 support;    // 0x02
    } rateSet;          // 0x2E
    u16 beaconPeriod;   // 0x32
    u16 dtimPeriod;     // 0x34
    u16 channel;        // 0x36
    u16 cfPeriod;       // 0x38
    u16 cfMaxDuration;  // 0x3A
    u16 ieLength;       // 0x3C
} WDBssDesc;

typedef struct WD_Info_ {
    u8 MAC[6];              // 0x00
    u16 enableChannel;      // 0x06
    u16 NTRallowedChannel;  // 0x08
    u8 countryCode[4];      // 0x0A
    u8 channel;             // 0x0E
    u8 initialized;         // 0x0F
    u8 version[80];         // 0x10
    u8 unk_0x60[0x30];      // 0x60 (is it padding???)
} PACKED WD_Info;

s32 WDCheckEnableChannel(u16* enableChannel);
s32 WDScanOnce(u8* scanBuffer, u32 scanBufferLen, WDScanParam* param);
s32 WDGetPrivacyMode(WDBssDesc* bssDesc);

BOOL WDFindInformationElement(WDInfoElement** outIE, u32* outIELength, WDBssDesc* bssDesc, int id);
BOOL WDiFindVendorSpecificIE(WDVendorInfoElement** outIE, u32* outIELength, WDBssDesc* bssDesc, int id, u8* data, u8 mode);

#endif  // REVOLUTION_WD_H
