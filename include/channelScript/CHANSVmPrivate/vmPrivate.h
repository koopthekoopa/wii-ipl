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
    vmU32 unk_00;
    void* table;
    vmU32 unk_08;
    vmU32 codesize;
    vmU32 unk_10;
    vmU16 unk_14[24];
    SrcLineEntry* entries;

} SrcDbg;

typedef struct CHANSVmUnk1 {
    vmU32 unk_0x00;
    SrcDbg* unk_0x04;
    vmWString* argv;
    vmS32 unk_0x0C;
    vmU32 unk_0x10;
    vmU16 argc;
} CHANSVmUnk1;

typedef struct CHANSVmPrivate {
    vmU8 unk_0x00[0x06 - 0x00];
    vmBool hasStar;  // 0x06
    vmU8 unk_0x07[0x0C - 0x07];
    CHANSVmFunction* unk_0x0C;
    vmS32 unk_0x10;
    vmU8 unk_0x14[0x1C - 0x14];
    vmU32 unk_0x1C;
    vmU32* unk_0x20;
    CHANSVmObjHdr* unk_0x24;
    vmU8* freeExeBuf;  // 0x28
    vmU8* unk_0x2C;
    CHANSVmNativeClass* nativeClasses;  // 0x30
    vmU8 unk_0x34[0x3C - 0x34];
    vmU32* unk_0x3C;
    CHANSVmNativeClass* arrayCls;   // 0x40
    CHANSVmNativeClass* stringCls;  // 0x44
    vmBool* curSignal;              // 0x48
    vmU8 unk_0x4C;
    vmBool updatedSignal;  // 0x4D
    vmU8 unk_0x4E;
    vmU8 unk_0x4F;
    CHANSVmObjHdr unk_0x50;
    CHANSVmUnk1* unk_0x60;
    vmU32 unk_0x64;
    vmS32 minWorkSize;  // 0x68
    vmU8 unk_0x40[0x270 - 0x6C];
} CHANSVmPrivate;

#ifdef __cplusplus
}
#endif

#endif  // CHANS_VM_PRIVATE_OBJECT_H
