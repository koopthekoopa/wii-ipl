#include <decomp.h>

#include <revolution/base/PPCArch.h>

#include <__ppc_eabi_init.h>

#ifdef __cplusplus
extern "C" {
#endif

extern void __OSPSInit();
extern void __OSFPRInit();
extern void __OSCacheInit();

static void __init_cpp();
static void __fini_cpp();
static void _ExitProcess();

extern void exit();

#ifdef __cplusplus
}
#endif

typedef void (*VoidPTR)();
#pragma section code_type ".ctors$00"
__declspec(section ".ctors$00") extern VoidPTR  _ctors[];
#pragma section code_type ".dtors$00"
__declspec(section ".dtors$00") extern VoidPTR  _dtors[];

#pragma section code_type ".init"

asm void __init_hardware() {
#ifdef __MWERKS__
    nofralloc
    
    // Floating-point on
    mfmsr r0
    ori r0, r0, MSR_FP
    mtmsr r0

    mflr r31

    bl __OSPSInit
    bl __OSFPRInit
    bl __OSCacheInit

    mtlr r31
    blr
#endif
}

asm void __flush_cache(void* pAddress, unsigned int size) {
#ifdef __MWERKS__
    lis r5, 0xFFFF
    ori r5, r5, 0xFFF1

    and r5, r5, r3

    subf r3, r5, r3
    add r4, r4, r3

loop:
    dcbst r0, r5
    sync

    icbi r0, r5
    addic r5, r5, 8
    subic. r4, r4, 8

    bge loop

    isync

    blr
#endif
}

#pragma section code_type ".text"

asm void __init_user() {
#ifdef __MWERKS__
    fralloc

    bl __init_cpp

    frfree
    blr
#endif
}

static void __init_cpp() {
    VoidPTR *ctor;

    // Static initialization
    for (ctor = _ctors; *ctor != 0; ctor++) {
        (*ctor)();
    }
}

static void __fini_cpp() {
    VoidPTR *dtor;

    for (dtor = _dtors; *dtor != 0; dtor++) {
        (*dtor)();
    }
}

static void _ExitProcess() {
    PPCHalt();
}

void exit() {
    __fini_cpp();
    _ExitProcess();
}


