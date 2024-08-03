#include <decomp_ide.h>
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
__declspec(section ".init") extern VoidPTR  _ctors[];
__declspec(section ".init") extern VoidPTR  _dtors[];

#pragma section code_type ".init"

/**
 * @note Address 0x813301D8 (4.3U)
 * @note Size 0x24
 */
asm void __init_hardware() {
    mfmsr r0
    ori r0, r0, 0x2000
    mtmsr r0
    mflr r31

    bl __OSPSInit
    bl __OSFPRInit
    bl __OSCacheInit

    mtlr r31
    blr
}

/**
 * @note Address 0x813301FC (4.3U)
 * @note Size 0x34
 */
asm void __flush_cache(void* pAddress, unsigned int size) {
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
}

#pragma section code_type ".text"

/**
 * @note Address 0x81538608 (4.3U)
 * @note Size 0x20
 */
asm void __init_user() {
    fralloc

    bl __init_cpp

    frfree
    blr
}


/**
 * @note Address 0x81538628 (4.3U)
 * @note Size 0x48
 */
static void __init_cpp() {
    VoidPTR *ctor;

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

/**
 * @note Address 0x81538670 (4.3U)
 * @note Size 0x4C
 */
void exit() {
    __fini_cpp();
    _ExitProcess();
}


