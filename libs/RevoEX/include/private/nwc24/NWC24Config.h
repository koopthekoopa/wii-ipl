#ifndef PRIVATE_NWC24_CONFIG_H
#define PRIVATE_NWC24_CONFIG_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>
#include <revolution/nwc24/NWC24Types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NWC24_CONFIG_MAGIC              'WcCf'
#define NWC24_CONFIG_CURRENT_VERSION    8

#define NWC24_CONFIG_MAX_ID_COUNT       32

typedef enum NWC24IdCreationStage {
    NWC24_IDCS_INITIAL = 0,
    NWC24_IDCS_GENERATED,
    NWC24_IDCS_REGISTERED,
} NWC24IdCreationStage;

typedef struct NWC24ConfigData {
    u32         magic;                      // 0x00
    u32         version;                    // 0x04

    NWC24UserId userId;                     // 0x08

    u32         idCreationCount;            // 0x10
    u32         idCreationStage;            // 0x14

    char        accountDomain[64];          // 0x18
    char        password[32];               // 0x58

    char        mailCheckId[36];            // 0x78
    char        accMgtServerURL[128];       // 0x9C

    char        mailChkServerURL[128];      // 0x11C
    char        mailRcvServerURL[128];      // 0x19C
    char        mailDelServerURL[128];      // 0x21C
    char        mailTrsServerURL[128];      // 0x29C

    char        unk_0x31C[0x3F8 - 0x31C];

    BOOL        allowBootWC24Title;         // 0x3F8

    u32         checksum;                   // 0x3FC
} NWC24ConfigData;

NWC24Err    NWC24iConfigInit(BOOL deleteSomeFile);
NWC24Err    NWC24iConfigOpen();
NWC24Err    NWC24iConfigReload();
NWC24Err    NWC24iConfigFlush();

void        NWC24SetIdCreationCount(u32 idCreationCount);
u32         NWC24GetIdCreationCount();

NWC24Err    NWC24GetIdCreationStage(NWC24IdCreationStage* idCreationStage);

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NWC24_CONFIG_H
