#ifndef CHANS_VM_PRIVATE_OBJECT_H
#define CHANS_VM_PRIVATE_OBJECT_H

#ifdef __cplusplus
extern "C" {
#endif

#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVm/VmTypes.h"

typedef struct CHANSVmExecutionCtx {
    struct CHANSVmExecutionCtx* next; // 0x00
    struct CHANSVmModule* pDbg;       // 0x04
    vmWString* pArgv;                 // 0x08
    vmS32 stackDepth;                 // 0x0C
    vmU32 pc;                         // 0x10
    vmU16 argc;                       // 0x14
    vmU16 totalSlots;                 // 0x16
    vmU16 frameBase;                  // 0x18
    vmU8 headerCount;                 // 0x1A
    vmU8 pad_0x1B[5];                 // 0x1B
    CHANSVmObjHdr headers[];          // 0x20 (variable)
} CHANSVmExecutionCtx;

typedef struct FreeBlock {
    struct FreeBlock* next; // 0x00
    vmU32 size;             // 0x04
} FreeBlock;

typedef struct MethodListNode {
    struct MethodListNode* next; // 0x00
    u32 nameLength;            // 0x04
    char name[];               // 0x08 (variable)
} MethodListNode;

typedef struct GlobalObjListNode {
    CHANSVmObjHdr hdr;               // 0x00 (16 bytes)
    struct GlobalObjListNode* next;  // 0x10
    u32 nameLength;                  // 0x14
    char name[];                     // 0x18 (variable)
} GlobalObjListNode;

typedef struct ModuleEntry {
    GlobalObjListNode* pGlobalObj;   // 0x00
    u8 pad_0x04[4];                   // 0x04
    u8 type;                          // 0x08
    u8 flags;                         // 0x09
    u8 pad_0x0A[2];                   // 0x0A
    CHANSVmNativeClass* pNativeClass; // 0x0C
} ModuleEntry;

typedef struct ArrayChunk {
    struct ArrayChunk* prev;    // 0x00
    struct ArrayChunk* next;    // 0x04
    u32 capacity;                // 0x08
    u32 count;                   // 0x0C
    u32 start;                   // 0x10
    u32 pad_0x14;                // 0x14
    CHANSVmObjHdr elements[];    // 0x18 (variable)
} ArrayChunk;

typedef struct BlobHeader {
    volatile u32 offset; // 0x00
    u32 size;            // 0x04
    u8* pData;           // 0x08
} BlobHeader;

typedef struct ModuleHeader {
    u32 magic;         // 0x00 = 0x52434845 "RCHE"
    u8 opcodeVersion;  // 0x04
    u8 pad_0x05[3];    // 0x05
    u32 size;          // 0x08
    u8 type;           // 0x0C
    u8 pad_0D[0x13];
} ModuleHeader;

typedef struct StringEntry {
    u8* pStringData; // 0x00
    u32 length;      // 0x04
    u32 pad_0x08[2]; // 0x08
} StringTblEntry;

typedef struct DispatchEntry {
    u32 nameLength : 8;  // (bits 31-24)
    u32 offset : 24;     // (bits 23-0)
} DispatchEntry;

typedef struct NameTblEntry {
    u32 codeAddr;      // 0x00
    u16 moduleIdx;     // 0x04
    u8 pushCount;      // 0x06
    u8 headerCount;    // 0x07
} NameTblEntry;

typedef struct SrcLineEntry {
    s32 baseLine;      // 0x00
    u8 bitfield[0x20]; // 0x04 (32 bytes = 0x20)
} SrcLineEntry;

typedef struct CHANSVmModule {
    struct CHANSVmModule* next;     // 0x00
    u32 regionSize;                 // 0x04
    ModuleHeader* pModule;          // 0x08
    u32 codeSize;                   // 0x0C
    void* pData;                    // 0x10
    u32 moduleCount;                // 0x14
    ModuleEntry* pModuleTbl;        // 0x18
    u32 nameTblBase;                // 0x1C
    u32 nameCount;                  // 0x20
    NameTblEntry* pNameTbl;         // 0x24
    u32 methodCount;                // 0x28
    DispatchEntry* pMethodRefTbl;   // 0x2C
    u32 stringCount;                // 0x30
    void* pStringDataTbl;           // 0x34
    u32* pMethodTbl;                // 0x38
    StringTblEntry* pStringTbl;     // 0x3C
    DispatchEntry* pDispatchTbl;    // 0x40
    SrcLineEntry* pLineTbl;         // 0x44
} CHANSVmModule;

typedef struct ChunkEntry {
    void* pData;  // 0x00
    u32 size;     // 0x04
    u32 alloc;    // 0x08
    u32 inUse;    // 0x0C
} ChunkEntry;

typedef struct CHANSVmPrivate {
    vmU8 unk_0x00[6];                      // 0x00
    vmBool bHasStar;                       // 0x06
    vmU8 pad_0x07;                         // 0x07
    vmU32 exeStart;                        // 0x08
    vmU32 exeSize;                         // 0x0C
    vmS32 depth;                           // 0x10
    vmU8 unk_0x14[4];                      // 0x14
    CHANSVmExecutionCtx* pContextListHead; // 0x18
    vmU32 minFreeHeapSize;                 // 0x1C
    vmU32* pHeapStart;                     // 0x20
    CHANSVmObjHdr* pHeapEnd;               // 0x24
    vmU8* pFreeExeBuf;                     // 0x28
    vmU8* pObjStackTopBuf;                 // 0x2C
    CHANSVmNativeClass* pNativeClasses;    // 0x30
    MethodListNode* pMethodNameList;       // 0x34
    GlobalObjListNode* pGlobalObjList;     // 0x38
    FreeBlock* pFreeList;                  // 0x3C
    CHANSVmNativeClass* pArrayCls;         // 0x40
    CHANSVmNativeClass* pStringCls;        // 0x44
    vmBool* pbSignalPending;               // 0x48
    vmBool bAllocBlocked;                  // 0x4C
    vmBool bSignalUpdated;                 // 0x4D
    vmBool bSignalBlocked;                 // 0x4E
    vmBool bSuspendStep;                   // 0x4F
    CHANSVmObjHdr accumulator;             // 0x50
    CHANSVmExecutionCtx* pActiveCtx;       // 0x60
    vmU8* pBase;                           // 0x64
    vmS32 minWorkSize;                     // 0x68
    vmU32 nextChunkIdx;                    // 0x6C
    ChunkEntry* pChunks[0x80];             // 0x70-0x26F
} CHANSVmPrivate;

#ifdef __cplusplus
}
#endif

#endif  // CHANS_VM_PRIVATE_OBJECT_H
