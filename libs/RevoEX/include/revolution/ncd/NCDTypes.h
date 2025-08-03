#ifndef REVOLUTION_NCD_TYPES_H
#define REVOLUTION_NCD_TYPES_H

#include <revolution/types.h>

typedef s32 NCDErr;

#define PACKED __attribute__((packed))

enum {
    NCD_LINKSTATUS_WIRED = 3, // ?
};

enum {
    NCD_RESULT_SUCCESS = 0,
    NCD_RESULT_INPROGRESS = -8,
};

enum {
    NCD_NWC24_PERMISSION_NONE = 0,
    NCD_NWC24_PERMISSION_SEND_MAIL = 1,
    NCD_NWC24_PERMISSION_RECEIVE_MAIL = 2,
    NCD_NWC24_PERMISSION_MESSAGE = (NCD_NWC24_PERMISSION_RECEIVE_MAIL | NCD_NWC24_PERMISSION_SEND_MAIL),
    NCD_NWC24_PERMISSION_DOWNLOAD = 4,
    NCD_NWC24_PERMISSION_ALL = 7
};

#define NCD_MAC_ADDRESS_LENGTH  6

typedef struct NCDProxyServerProfile {
    u8      mode;           // 0x00
    u8      authType;       // 0x01
    u8      reserved[2];    // 0x02

    char    server[256];    // 0x04
    u16     port;           // 0x104

    char    username[33];   // 0x106
    char    password[33];   // 0x127
} NCDProxyServerProfile;

typedef struct NCDProxyProfile {
    NCDProxyServerProfile   http;   // 0x00
    NCDProxyServerProfile   ssl;    // 0x148

    struct {
        u32     isEnabled;          // 0x00
        char    servers[1024];      // 0x04
    } noProxy;                      // 0x290

    struct {
        u32     isEnabled;          // 0x00
        u32     isAutomaticEnabled; // 0x04
        char    automatic[256];     // 0x08
    } browser;                      // 0x694
} NCDProxyProfile;

typedef struct NCDIpAdjustProfile {
    s32 maxTransferUnit;    // 0x00
    s32 tcpRetransTimeout;  // 0x04
    s32 dhcpRetransCount;   // 0x08
} NCDIpAdjustProfile;

typedef struct NCDIpProfile {
    u8  addr[4];    // 0x00
    u8  netmask[4]; // 0x04
    u8  gateway[4]; // 0x08
    u8  dns1[4];    // 0x0C
    u8  dns2[4];    // 0x10
} NCDIpProfile;

typedef struct NCDIpConfig {
    BOOL                useDhcp;    // 0x00
    BOOL                useProxy;   // 0x04

    NCDIpProfile        ip;         // 0x08

    NCDIpAdjustProfile  adjust;     // 0x1C
    NCDProxyProfile     proxy;      // 0x28
} NCDIpConfig;

typedef struct NCDWiredProfile {
    u8  reserved[4];    // 0x00
} NCDWiredProfile;

typedef struct NCDPrivacy {
    u16 mode;           // 0x00
    u8  reserved[2];    // 0x02
    union { 
        struct {
            u16 keyId;      // 0x00
            union { 
                u16 option;         // 0x02
                u8  reserved[2];    // 0x02
            };
            u8 key[4][5];   // 0x04
        } wep40;
        struct {
            u16 keyId;      // 0x00
            union { 
                u16 option;         // 0x02
                u8  reserved[2];    // 0x02
            };
            u8 key[4][13];  // 0x04
        } wep104;
        struct {
            u16 keyLen;         // 0x00
            u8  reserved[2];    // 0x02
            u8  key[64];        // 0x04
        } tkip;
        struct {
            u16 keyLen;         // 0x00
            u8  reserved[2];    // 0x02
            u8  key[64];        // 0x04
        } aes;
    };
} NCDPrivacy;

typedef struct NCDApConfig {
    u8          ssid[32];       // 0x00
    u16         ssidLength;     // 0x20

    u8          reserved[2];    // 0x22

    NCDPrivacy  privacy;        // 0x24
} NCDApConfig;

typedef struct NCDUsbapConfig {
    u16 nickname[11];   // 0x00
    u8  reserved[2];    // 0x16
} NCDUsbapConfig;

typedef struct NCDAossConfig {
    struct {
        u8  ssid[32];   // 0x00
        u16 ssidLength; // 0x20
        u16 keyId;      // 0x22
        u8  key[4][5];  // 0x24
    } wep40;    // 0x00
    struct {
        u8  ssid[32];   // 0x00
        u16 ssidLength; // 0x20
        u16 keyId;      // 0x22
        u8  key[4][13]; // 0x24
    } wep104;   // 0x38
    struct {
        u8  ssid[32];   // 0x00
        u16 ssidLength; // 0x20
        u16 keyLen;     // 0x22
        u8  key[64];    // 0x24
    } tkip;     // 0x90
    struct {
        u8  ssid[32];   // 0x00
        u16 ssidLength; // 0x20
        u16 keyLen;     // 0x22
        u8  key[64];    // 0x24
    } aes;  // 0xF4
} NCDAossConfig;

typedef struct NCDWirelessProfile {
    u16 rateset;        // 0x00
    u8  configMethod;   // 0x02
    u8  retryLimit;     // 0x03
    union {
        NCDApConfig     manual;
        NCDUsbapConfig  usbap;
        NCDAossConfig   aoss;
        NCDApConfig     rakuraku;
    } config;   // 0x04
} NCDWirelessProfile;

typedef struct NCDIfConfig {
    u8  selectedMedia;  // 0x00
    u8  linkTimeout;    // 0x01
    union {
        NCDWiredProfile     wired;
        NCDWirelessProfile  wireless;
    } netif;    // 0x02
} NCDIfConfig;

typedef struct NCDProfile {
    u8                  flags;          // 0x00
    u8                  reserved[3];    // 0x01
    NCDIpProfile        ip;             // 0x04
    NCDIpAdjustProfile  adjust;         // 0x18
    NCDProxyProfile     proxy;          // 0x24
    union {
        NCDWiredProfile     wired;
        NCDWirelessProfile  wireless;
    } netif;                            // 0x7C0
} NCDProfile;

typedef struct NCDConfig {
    u32         version;            // 0x00
    u8          selectedMedia;      // 0x04
    u8          nwc24Permission;    // 0x05
    u8          linkTimeout;        // 0x06
    u8          reserved[1];        // 0x07
    NCDProfile  profiles[3];        // 0x08
} PACKED NCDConfig;

#endif // REVOLUTION_NCD_TYPES_H
