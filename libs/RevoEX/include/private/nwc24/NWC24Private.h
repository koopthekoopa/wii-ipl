#ifndef PRIVATE_NWC24_PRIVATE_H
#define PRIVATE_NWC24_PRIVATE_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NWC24Data {
    const void* ptr;    // 0x00
    u32         size;   // 0x04
} NWC24Data;

typedef struct NWC24Work NWC24Work;

extern struct NWC24Work {
    char    stringWork[1024];   // 0x00
    char    mainWork[1024];     // 0x400
    char    pathWork[256];      // 0x800

    u8      readBuffer[512];    // 0x900
    u8      writeBuffer[2048];  // 0xB00

    u8      configData[1024];   // 0x1300

    u8      unk_0x1700[128];    // 0x1700
    u8      unk_0x1780[128];    // 0x1780
    u8      unk_0x1800[256];    // 0x1800
    u8      base64Work[256];    // 0x1900
    u8      unk_0x1A00[4096];   // 0x1A00

    u8      flHead[1024];       // 0x2A00
    u8      secretFlHead[2048]; // 0x2E00

    u8      dlHead[2048];       // 0x3600
    u8      dlTask[512];        // 0x3E00
} *NWC24WorkP;

void    NWC24Data_Init(NWC24Data* data);
void    NWC24Data_SetDataP(NWC24Data* data, const void* ptr, u32 size);

enum {
    NWC24_IOCTL_SUSPEND_SCHEDULER = 1,
    NWC24_IOCTL_TRY_SUSPEND_SCHEDULER = 2,
    NWC24_IOCTL_RESUME_SCHEDULER = 3,
    NWC24_IOCTL_GENERATE_USER_ID = 15,

    NWC24_IOCTL_SET_RTC_COUNTER = 23,
    NWC24_IOCTL_GET_TIME_DIFFERENCE = 24,

    NWC24_IOCTL_SHUTDOWN = 40,
};

#define nwc24Work  (NWC24WorkP)

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NWC24_PRIVATE_H
