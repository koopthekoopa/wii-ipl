#ifndef REVOLUTION_RSO_H
#define REVOLUTION_RSO_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct RSOObjectInfo RSOObjectInfo;

typedef struct RSOSymbolHeader {
    u32 tableOffset;    // 0x00
    u32 tableSize;      // 0x04
    u32 stringOffset;   // 0x08
} RSOSymbolHeader;

typedef struct RSOSectionInfo {
    u32 offset; // 0x00
    u32 size;   // 0x04
} RSOSectionInfo;

typedef struct RSOObjectLink {
    RSOObjectInfo*  next;   // 0x00
    RSOObjectInfo*  prev;   // 0x04
} RSOObjectLink;

struct RSOObjectInfo {
    RSOObjectLink   link;               // 0x00

    u32             numSections;        // 0x08
    u32             sectionInfoOffset;  // 0x0C

    u32             nameOffset;         // 0x10
    u32             nameSize;           // 0x14

    u32             version;            // 0x18
};

typedef struct RSOObjectList {
    RSOObjectInfo*  head;   // 0x00
    RSOObjectInfo*  tail;   // 0x04
} RSOObjectList;

typedef struct RSOObjectHeader {
    RSOObjectInfo   info;               // 0x00

    u32             bssSize;            // 0x1C

    u8              prologSection;      // 0x20
    u8              epilogSection;      // 0x21
    u8              unresolvedSection;  // 0x22
    u8              bssSection;         // 0x23

    u32             prolog;             // 0x24
    u32             epilog;             // 0x28
    u32             unresolved;         // 0x2C

    u32             internalRelOffset;  // 0x30
    u32             internalRelSize;    // 0x34

    u32             externalRelOffset;  // 0x38
    u32             externalRelSize;    // 0x3C

    RSOSymbolHeader expHeader;          // 0x40
    RSOSymbolHeader impHeader;          // 0x4C
} RSOObjectHeader;

typedef struct RSOImportTable {
    u32 strOffset;  // 0x00
    u32 value;      // 0x04
    u32 relOffset;  // 0x08
} RSOImportTable;

typedef struct RSOExportTable {
    u32 strOffset;  // 0x00
    u32 value;      // 0x04
    u32 section;    // 0x08
    u32 hash;       // 0x0C
} RSOExportTable;

BOOL    RSOStaticLocateObject(void* newModule);
BOOL    RSOUnLocateObject(void* oldModule);

int     RSOLink(RSOObjectHeader* rsoImp, RSOObjectHeader* rsoExp);

int     RSOGetNumImportSymbolsUnresolved(RSOObjectHeader* rso);
BOOL    RSOIsImportSymbolResolvedAll(RSOObjectHeader* rso);

BOOL    RSOListInit(void* staticRso);

BOOL    RSOLinkList(void* newRso, void* bss);
BOOL    RSOUnLinkList(void* oldRso);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_RSO_H
