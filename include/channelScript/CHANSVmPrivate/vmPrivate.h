#ifndef CHANS_VM_PRIVATE_OBJECT_H
#define CHANS_VM_PRIVATE_OBJECT_H

#ifdef __cplusplus
extern "C" {
#endif

#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVm/VmTypes.h"

typedef struct CHANSVmExeContext CHANSVmExeContext;
typedef struct CHANSVmModule CHANSVmModule;

struct CHANSVmExeContext {
    CHANSVmExeContext* pNext;  // 0x00
    CHANSVmModule* pDebug;     // 0x04
    wchar_t** pArgv;           // 0x08
    s32 stackDepth;            // 0x0C
    u32 pc;                    // 0x10
    u16 argc;                  // 0x14
    u16 totalSlots;            // 0x16
    u16 frameBase;             // 0x18
    u8 headerCount;            // 0x1A
    u8 pad_0x1B[5];            // 0x1B
    CHANSVmObjHdr headers[];   // 0x20 (variable)
};

typedef struct VmFreeBlock {
    struct VmFreeBlock* pNext;  // 0x00
    u32 size;                   // 0x04
} VmFreeBlock;

typedef struct MethodListNode {
    struct MethodListNode* pNext;  // 0x00
    u32 nameLength;                // 0x04
    char sName[];                  // 0x08 (variable)
} MethodListNode;

typedef struct GlobalObjListNode {
    CHANSVmObjHdr hdr;               // 0x00 (16 bytes)
    struct GlobalObjListNode* next;  // 0x10
    u32 nameLength;                  // 0x14
    char name[];                     // 0x18 (variable)
} GlobalObjListNode;

typedef struct ModuleEntry {
    GlobalObjListNode* pGlobalObj;     // 0x00
    u8 pad_0x04[4];                    // 0x04
    u8 type;                           // 0x08
    u8 flags;                          // 0x09
    u8 pad_0x0A[2];                    // 0x0A
    CHANSVmNativeClass* pNativeClass;  // 0x0C
} ModuleEntry;

typedef struct ArrayChunk {
    struct ArrayChunk* pPrev;  // 0x00
    struct ArrayChunk* pNext;  // 0x04
    u32 capacity;              // 0x08
    u32 count;                 // 0x0C
    u32 start;                 // 0x10
    u32 pad_0x14;              // 0x14
    CHANSVmObjHdr elements[];  // 0x18 (variable)
} ArrayChunk;

typedef struct BlobHeader {
    volatile u32 offset;  // 0x00
    u32 size;             // 0x04
    u8* pData;            // 0x08
} BlobHeader;

typedef struct ModuleHeader {
    u32 magic;              // 0x00 = 0x52434845 "RCHE"
    u8 opcodeVersion;       // 0x04
    u8 pad_0x05[3];         // 0x05
    u32 size;               // 0x08
    u8 type;                // 0x0C
    CHANSVmModule* module;  // 0x0D
    u8 pad_11[0x9];         // 0x11
} ModuleHeader;

typedef struct StringEntry {
    u8* pStringData;  // 0x00
    u32 length;       // 0x04
    u32 pad_0x08[2];  // 0x08
} StringTblEntry;

typedef struct DispatchEntry {
    u32 nameLength : 8;  // 0x00
    u32 offset : 24;     // 0x01
} DispatchEntry;

typedef struct NameTblEntry {
    u32 codeAddr;    // 0x00
    u16 moduleIdx;   // 0x04
    u8 pushCount;    // 0x06
    u8 headerCount;  // 0x07
} NameTblEntry;

typedef struct VmSrcLineEntry {
    s32 baseLine;       // 0x00
    u8 bitfield[0x20];  // 0x04
} VmSrcLineEntry;

struct CHANSVmModule {
    CHANSVmModule* pNext;          // 0x00
    u32 regionSize;                // 0x04
    ModuleHeader* pModule;         // 0x08
    u32 codeSize;                  // 0x0C
    u8* pData;                     // 0x10
    u32 moduleCount;               // 0x14
    ModuleEntry* pModuleTbl;       // 0x18
    u32 nameTblBase;               // 0x1C
    u32 nameCount;                 // 0x20
    NameTblEntry* pNameTbl;        // 0x24
    u32 methodCount;               // 0x28
    DispatchEntry* pMethodRefTbl;  // 0x2C
    u32 stringCount;               // 0x30
    void* pStringDataTbl;          // 0x34
    u32* pMethodTbl;               // 0x38
    StringTblEntry* pStringTbl;    // 0x3C
    DispatchEntry* pDispatchTbl;   // 0x40
    VmSrcLineEntry* pLineTbl;      // 0x44
};

typedef struct ChunkEntry {
    void* pData;    // 0x00
    u32 size;       // 0x04
    u32 allocSize;  // 0x08
    u32 inUse;      // 0x0C
} ChunkEntry;

typedef struct CHANSVmPrivate {
    s64 exitCode;                         // 0x00
    u32 exeStart;                         // 0x08
    u32 exeSize;                          // 0x0C
    s32 depth;                            // 0x10
    u8 unk_0x14[4];                       // 0x14
    CHANSVmExeContext* pContextListHead;  // 0x18
    u32 minFreeHeapSize;                  // 0x1C
    u8* pHeapStart;                       // 0x20
    u8* pHeapEnd;                         // 0x24
    u8* pFreeExeBuf;                      // 0x28
    u8* pObjStackTopBuf;                  // 0x2C
    CHANSVmNativeClass* pNativeClasses;   // 0x30
    MethodListNode* pMethodNameList;      // 0x34
    GlobalObjListNode* pGlobalObjList;    // 0x38
    VmFreeBlock* pFreeList;               // 0x3C
    CHANSVmNativeClass* pArrayCls;        // 0x40
    CHANSVmNativeClass* pStringCls;       // 0x44
    bool* bpSignalPending;                // 0x48
    bool bAllocBlocked;                   // 0x4C
    bool bSignalUpdated;                  // 0x4D
    bool bSignalBlocked;                  // 0x4E
    bool bSuspendStep;                    // 0x4F
    CHANSVmObjHdr accumulator;            // 0x50
    CHANSVmExeContext* pCurContext;       // 0x60
    u8* pBase;                            // 0x64
    s32 minWorkSize;                      // 0x68
    u32 nextChunkIdx;                     // 0x6C
    ChunkEntry* pChunks[0x80];            // 0x70-0x26F
} CHANSVmPrivate;

#ifdef __cplusplus
}
#endif

#endif  // CHANS_VM_PRIVATE_OBJECT_H
