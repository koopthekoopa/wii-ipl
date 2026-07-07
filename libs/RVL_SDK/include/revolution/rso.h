#ifndef REVOLUTION_RSO_H
#define REVOLUTION_RSO_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RSO_VERSION 1

#define RSO_FAR_JUMP_SIZE 0x18

typedef u32 RSOHash;

typedef enum {
    RSO_FL_NON = 0,
    RSO_FL_INTERNAL,
    RSO_FL_EXTERNAL,
} RSOFixedLevel;

typedef struct RSOSectionInfo {
    u32 offset;  // 0x00
    u32 size;    // 0x04
} RSOSectionInfo;

typedef struct RSOSymbolHeader {
    u32 tableOffset;  // 0x00
    u32 tableSize;    // 0x04

    u32 stringOffset;  // 0x08
} RSOSymbolHeader;

typedef struct RSOObjectInfo RSOObjectInfo;
typedef struct RSOObjectLink {
    RSOObjectInfo* next;  // 0x00
    RSOObjectInfo* prev;  // 0x04
} RSOObjectLink;

typedef struct RSOObjectList {
    RSOObjectInfo* head;  // 0x00
    RSOObjectInfo* tail;  // 0x04
} RSOObjectList;

struct RSOObjectInfo {
    RSOObjectLink link;  // 0x00

    u32 numSections;        // 0x08
    u32 sectionInfoOffset;  // 0x0C

    u32 nameOffset;  // 0x10
    u32 nameSize;    // 0x14

    u32 version;  // 0x18
};

typedef struct RSOObjectHeader {
    RSOObjectInfo info;  // 0x00
    u32 bssSize;         // 0x1C

    u8 prologSection;      // 0x20
    u8 epilogSection;      // 0x21
    u8 unresolvedSection;  // 0x22
    u8 bssSection;         // 0x23

    u32 prolog;      // 0x24
    u32 epilog;      // 0x28
    u32 unresolved;  // 0x2C

    u32 internalRelOffset;  // 0x30
    u32 internalRelSize;    // 0x34
    u32 externalRelOffset;  // 0x38
    u32 externalRelSize;    // 0x3C

    RSOSymbolHeader expHeader;  // 0x40
    RSOSymbolHeader impHeader;  // 0x4C
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

typedef struct RSORel {
    u32 offset;  // 0x00
    u32 info;    // 0x04
    u32 addend;  // 0x08
} RSORel;

// not part of DWARF from the original object
// but is part of DWARF from other games
typedef struct RSOExportFuncTable {
    const char* symbol_name;  // 0x00
    u32* symbol_ptr;          // 0x04
} RSOExportFuncTable;

#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
DECL_WEAK void RSONotifyModuleLoaded(RSOObjectHeader* moduleHeader) NO_INLINE;
DECL_WEAK void RSONotifyModuleUnloaded(RSOObjectHeader* moduleHeader) NO_INLINE;
DECL_WEAK void RSONotifyPreRSOLink(RSOObjectHeader* impHeader, const RSOObjectHeader* expHeader) NO_INLINE;
DECL_WEAK void RSONotifyPostRSOLink(RSOObjectHeader* impHeader, const RSOObjectHeader* expHeader) NO_INLINE;
DECL_WEAK void RSONotifyPreRSOLinkFar(RSOObjectHeader* moduleHeader, const RSOObjectHeader* expHeader, void* buff) NO_INLINE;
DECL_WEAK void RSONotifyPostRSOLinkFar(RSOObjectHeader* moduleHeader, const RSOObjectHeader* expHeader, void* buff) NO_INLINE;
#else
DECL_WEAK void RSONotifyLink(RSOObjectHeader* moduleHeader) NO_INLINE;
DECL_WEAK void RSONotifyUnlink(RSOObjectHeader* moduleHeader) NO_INLINE;
#endif

BOOL RSOLocateObject(void* newModule, void* bss);
BOOL RSOLocateObjectFixed(void* newModule, void* bss);
BOOL RSOStaticLocateObject(void* newModule);

BOOL RSOUnLocateObject(void* oldModule);

RSOImportTable* RSOGetImport(const RSOSymbolHeader* imp);
RSOExportTable* RSOGetExport(const RSOSymbolHeader* exp);

int RSOLink(RSOObjectHeader* rsoImp, const RSOObjectHeader* rsoExp);
void RSOUnLink(RSOObjectHeader* rsoImp, const RSOObjectHeader* rsoExp)
#if SDK_VERSION == 20090224 && !defined(SDK_IPL)
    NO_INLINE
#endif
    ;

u32 RSOGetHash(const char* symbolname);

int RSOGetNumImportSymbols(const RSOSymbolHeader* imp);
int RSOGetNumImportSymbolsUnresolved(const RSOObjectHeader* rso);
char* RSOGetImportSymbolName(const RSOSymbolHeader* imp, int index);
BOOL RSOIsImportSymbolResolved(const RSOObjectHeader* rso, int index);
BOOL RSOIsImportSymbolResolvedAll(const RSOObjectHeader* rso);

int RSOGetNumExportSymbols(const RSOSymbolHeader* exp);
char* RSOGetExportSymbolName(const RSOSymbolHeader* exp, int index);
void* RSOGetExportSymbolAddr(const RSOObjectHeader* rso, int index);
void* RSOFindExportSymbolAddr(const RSOObjectHeader* rso, const char* name);
RSOExportTable* RSOFindExportSymbol(const RSOObjectHeader* rso, const char* name);

BOOL RSOListInit(void* staticRso);
BOOL RSOLinkList(void* newRso, void* bss);
BOOL RSOLinkListFixed(void* newRso, void* bss, RSOFixedLevel fixed_level);
BOOL RSOUnLinkList(void* oldRso);

u32 RSOGetFixedSize(void* rso, RSOFixedLevel fixed_level);

int RSOGetFarCodeSize(RSOObjectHeader* rsoImp, const RSOObjectHeader* rsoExp);
int RSOLinkFar(RSOObjectHeader* rsoImp, const RSOObjectHeader* rsoExp, void* buff);

int RSOGetJumpCodeSize(const RSOObjectHeader* rsoExp);
void RSOMakeJumpCode(const RSOObjectHeader* rsoExp, void* buff);
int RSOLinkJump(RSOObjectHeader* rsoImp, const RSOObjectHeader* rsoExp, void* buff);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_RSO_H
