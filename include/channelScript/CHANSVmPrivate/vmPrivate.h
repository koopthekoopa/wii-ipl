#ifndef CHANS_VM_PRIVATE_OBJECT_H
#define CHANS_VM_PRIVATE_OBJECT_H

#ifdef __cplusplus
extern "C" {
#endif

#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVm/VmTypes.h"

typedef struct SrcLineEntry {
    s32 baseLine;       // 0x00
    u8 bitfield[0x20];  // 0x04 (32 bytes = 0x20)
} SrcLineEntry;

typedef struct SrcDbg {
    vmU32 unk_00;       // 0x00
    vmU32 unk_04;       // 0x04
    vmU32 unk_08;       // 0x08
    vmU32 codesize;     // 0x0C
    void* table;        // 0x10
    vmU16 unk_14[24];   // 0x14
    SrcLineEntry* entries; // 0x44
} SrcDbg;

typedef struct CHANSVmExecutionCtx {
    vmU32 unk_0x00;
    SrcDbg* dbg; // 0x04
    vmWString* argv; // 0x08
    vmS32 stackDepth; // 0x0C
    vmU32 pc; // 0x10
    vmU16 argc; // 0x14
} CHANSVmExecutionCtx;

typedef struct CHANSVmPrivate {
    vmU8 unk_0x00[0x06 - 0x00];
    vmBool hasStar;  // 0x06
    vmU8 pad_0x07;                    // 0x07
    vmU32 exeStart;                  // 0x08
    vmU32 unk_0x0C;
    vmS32 unk_0x10;
    vmU8 unk_0x14[0x1C - 0x14];
    vmU32 minFreeHeapSize; // 0x1C
    vmU32* pHeapStart; // 0x20
    CHANSVmObjHdr* pHeapEnd; // 0x24
    vmU8* freeExeBuf;  // 0x28
    vmU8* objStackTopBuf; // 0x2C
    CHANSVmNativeClass* nativeClasses;  // 0x30
    void* mpMethodNameList;           // 0x34
    void* mpGlobalObjList;            // 0x38
    vmU32* pFreeList; // 0x3C
    CHANSVmNativeClass* pArrayCls;   // 0x40
    CHANSVmNativeClass* pStringCls;  // 0x44
    vmBool* pSignalPending;          // 0x48
    vmU8 bAllocBlocked;  // 0x4C
    vmBool bSignalUpdated;  // 0x4D
    vmU8 bSignalBlocked;
    vmU8 bSuspendStep;
    CHANSVmObjHdr accumulator;
    CHANSVmExecutionCtx* execContext; // 0x60
    vmU32 unk_0x64;
    vmS32 minWorkSize;  // 0x68
    vmU32 mNextChunkIdx;               // 0x6C
    void* mChunks[0x80];              // 0x70-0x26F
} CHANSVmPrivate;

#ifdef __cplusplus
}
#endif

#endif  // CHANS_VM_PRIVATE_OBJECT_H
