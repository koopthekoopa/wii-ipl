#ifndef BS2_UPDATE_H
#define BS2_UPDATE_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct BS2UpdateEntry {
    u32  type;          // 0x00
    u32  attr;          // 0x04
    u32  size;          // 0x08
    u32  depend;        // 0x0C

    char path[64];      // 0x10

    u64  titleId;       // 0x50
    u16  titleVersion;  // 0x58
    
    u8   padding[6];    // 0x5A

    char dataName[64];  // 0x60
    char dataInfo[352]; // 0xA0
} BS2UpdateEntry;

int             BS2UpdateState();

int             BS2Update_813801D4();

BS2UpdateEntry* BS2GetUpdateEntry();
u32             BS2GetUpdateEntryNum();
BS2UpdateEntry* BS2GetCurrentEntry();

void            BS2StartUpdate();

#ifdef __cplusplus
}
#endif

#endif // BS2_UPDATE_H


