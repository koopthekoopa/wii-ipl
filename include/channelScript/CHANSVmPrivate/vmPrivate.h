#ifndef CHANS_VM_PRIVATE_OBJECT_H
#define CHANS_VM_PRIVATE_OBJECT_H

#ifdef __cplusplus
extern "C" {
#endif

#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVm/VmTypes.h"

typedef struct NameTblEntry {
    u32 codeAddr;    // 0x00
    u16 field_0x04;  // 0x04
    u8 pushCount;    // 0x06
    u8 headerCount;  // 0x07
} NameTblEntry;

typedef struct SrcLineEntry {
    s32 baseLine;       // 0x00
    u8 bitfield[0x20];  // 0x04 (32 bytes = 0x20)
} SrcLineEntry;

typedef struct SrcDbg {
    vmU32 unk_00;       // 0x00
    vmU32 unk_04;       // 0x04
    vmU32 unk_08;       // 0x08
    vmU32 codesize;     // 0x0C
    u8* table;          // 0x10
    vmU32 unk_14;       // 0x14
    CHANSVmObjHdr* objTable;   // 0x18
    vmU32 nameTblBase;  // 0x1C
    vmU32 nameTblCount; // 0x20
    NameTblEntry* nameTbl;      // 0x24
    vmU32 methodCount;  // 0x28
    vmU32 unk_0x2C;     // 0x2C
    vmU32 unk_0x30;     // 0x30
    vmU32 field_0x34;   // 0x34
    vmU32* methodTbl;     // 0x38
    vmU32 unk_0x3C;     // 0x3C
    vmU32 field_0x40;   // 0x40
    SrcLineEntry* entries; // 0x44
} SrcDbg;

typedef struct CHANSVmExecutionCtx {
    struct CHANSVmExecutionCtx* next;       // 0x00
    SrcDbg* dbg;          // 0x04
    vmWString* argv;      // 0x08
    vmS32 stackDepth;     // 0x0C
    vmU32 pc;             // 0x10
    vmU16 argc;           // 0x14
    vmU16 unk_0x16;       // 0x16
    vmU16 mCountB;        // 0x18
    vmU8 headerCount;     // 0x1A
    vmU8 pad_0x1B[5];      // 0x1B
    CHANSVmObjHdr headers[]; // 0x20 (variable)
} CHANSVmExecutionCtx;

typedef struct FreeBlock {
    struct FreeBlock* next;  // 0x00
    vmU32 size;       // 0x04
} FreeBlock;

typedef struct ModuleEntry {
    void* ptr;      // 0x00
    u8 pad_04[4];   // 0x04
    u8 type;        // 0x08
    u8 flags;       // 0x09
    u8 pad_0A[2];
    void* ptr2;     // 0x0C
} ModuleEntry;

typedef struct NameListNode {
    struct NameListNode* next;  // 0x00
    u32 nameLength;             // 0x04
    char name[];                // 0x08 (variable)
} NameListNode;

typedef struct GlobalNameListNode {
    CHANSVmObjHdr hdr;                      // 0x00 (16 bytes)
    struct GlobalNameListNode* next;        // 0x10
    u32 nameLength;                          // 0x14
    char name[];                              // 0x18 (variable)
} GlobalNameListNode;

typedef struct ArrayChunk {
    struct ArrayChunk* prev;   // 0x00
    struct ArrayChunk* next;   // 0x04
    u32 capacity;                // 0x08
    u32 count;                   // 0x0C
    u32 start;                   // 0x10
    u32 pad;                     // 0x14
    CHANSVmObjHdr elements[];    // 0x18 (variable)
} ArrayChunk;

typedef struct ModuleHeader ModuleHeader;

typedef struct SectionHeader {
    struct SectionHeader* next;  // 0x00
    u32 regionSize;             // 0x04
    ModuleHeader* modulePtr;    // 0x08
    u32 classSizeBase;          // 0x0C
    void* dataStart;            // 0x10
    u32 moduleEntryCount;       // 0x14
    ModuleEntry* moduleEntryTbl;// 0x18
    u32 pad_0x1C;               // 0x1C
    u32 nameCount;              // 0x20
    NameTblEntry* nameOffs;     // 0x24
    u32 methodRefCount;         // 0x28
    u32* methodRefOffs;         // 0x2C
    u32 stringCount;            // 0x30
    void* stringOffs;           // 0x34
    u32* methodIdxTbl;          // 0x38
    void* stringEntryTbl;       // 0x3C
    u32* dispatchTableOffs;     // 0x40
    void* classDataOffs;        // 0x44
} SectionHeader;

typedef struct ModuleHeader {
    u32 magic;         // 0x00 = 0x52434845 "RCHE"
    u8 opcodeVersion;  // 0x04
    u8 pad_05[3];      // 0x05
    u32 size;          // 0x08
    u8 type;           // 0x0C
    u8 pad_0D[0x13];
} ModuleHeader;

typedef struct ChunkEntry {
    void* pData;  // 0x00
    u32 size;     // 0x04
    u32 alloc;    // 0x08
    u32 inUse;    // 0x0C
} ChunkEntry;

typedef struct CHANSVmPrivate {
    vmU8 unk_0x00[0x06 - 0x00];
    vmBool hasStar;  // 0x06
    vmU8 pad_0x07;                    // 0x07
    vmU32 exeStart;                  // 0x08
    vmU32 exeSize;
    vmS32 depth;
    vmU8 unk_0x14[0x18 - 0x14];
    CHANSVmExecutionCtx* contextListHead; // 0x18
    vmU32 minFreeHeapSize; // 0x1C
    vmU32* pHeapStart; // 0x20
    CHANSVmObjHdr* pHeapEnd; // 0x24
    vmU8* freeExeBuf;  // 0x28
    vmU8* objStackTopBuf; // 0x2C
    CHANSVmNativeClass* nativeClasses;  // 0x30
    NameListNode* mpMethodNameList;           // 0x34
    GlobalNameListNode* mpGlobalObjList;            // 0x38
    FreeBlock* pFreeList; // 0x3C
    CHANSVmNativeClass* pArrayCls;   // 0x40
    CHANSVmNativeClass* pStringCls;  // 0x44
    vmBool* pSignalPending;          // 0x48
    vmU8 bAllocBlocked;  // 0x4C
    vmBool bSignalUpdated;  // 0x4D
    vmU8 bSignalBlocked;
    vmU8 bSuspendStep;
    CHANSVmObjHdr accumulator;
    CHANSVmExecutionCtx* activeCtx; // 0x60
    vmU32 pBase;
    vmS32 minWorkSize;  // 0x68
    vmU32 mNextChunkIdx;               // 0x6C
    ChunkEntry* mChunks[0x80];              // 0x70-0x26F
} CHANSVmPrivate;

#ifdef __cplusplus
}
#endif

#endif  // CHANS_VM_PRIVATE_OBJECT_H
