#ifndef BS2_UPDATE_H
#define BS2_UPDATE_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct BS2UpdateEntry {
    // Update Meta Data
    u32  type;              // 0x00
    u32  attr;              // 0x04
    u32  size;              // 0x08
    u32  depend;            // 0x0C
    char path[0x40];        // 0x10

    // Title Meta Data
    u64  titleId;           // 0x50
    u16  titleVersion;      // 0x58

    u8   padding[6];        // 0x5A

    // Update Data
    char dataName[0x40];    // 0x60
    char dataMeta[0x160];   // 0xA0
} BS2UpdateEntry;

int             BS2UpdateState();

BOOL            BS2Update_813801D4();

BS2UpdateEntry* BS2GetUpdateEntry();
u32             BS2GetUpdateEntryNum();
BS2UpdateEntry* BS2GetCurrentEntry();

void            BS2StartUpdate();

#define BS2_UPDATE_ADDRESS          0x80400000
#define BS2_UPDATE_IMPORT_ADDRESS   0x804C0000
#define BS2_UPDATE_LENGTH           0x00100000

#define BS2_ENTRY_COUNT             512

#ifdef __cplusplus
}
#endif

#endif // BS2_UPDATE_H


