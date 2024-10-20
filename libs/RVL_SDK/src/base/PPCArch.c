#include <revolution/base/PPCArch.h>
#include <revolution/os.h>

/**
 * @note Address: 0x8152B340 (4.3U)
 * @note Size: 0x8
 */
asm u32 PPCMfmsr() {
    nofralloc
    mfmsr r3
    blr
}

/**
 * @note Address: 0x8152B348 (4.3U)
 * @note Size: 0x8
 */
asm void PPCMtmsr(register u32 val) {
    nofralloc
    mtmsr val
    blr
}

/**
 * @note Address: 0x8152B350 (4.3U)
 * @note Size: 0x8
 */
asm u32 PPCMfhid0() {
    nofralloc
    mfhid0 r3
    blr
}

/**
 * @note Address: 0x8152B358 (4.3U)
 * @note Size: 0x8
 */
asm void PPCMthid0(register u32 val) {
    nofralloc
    mthid0 val
    blr
}

/**
 * @note Address: 0x8152B360 (4.3U)
 * @note Size: 0x8
 */
asm u32 PPCMfl2cr() {
    nofralloc
    mfl2cr r3
    blr
}

/**
 * @note Address: 0x8152B368 (4.3U)
 * @note Size: 0x8
 */
asm void PPCMtl2cr(register u32 val) {
    nofralloc
    mtl2cr val
    blr
}

/**
 * @note Address: 0x8152B370 (4.3U)
 * @note Size: 0x8
 */
asm void PPCMtdec(register u32 val) {
    nofralloc
    mtdec val
    blr
}

/**
 * @note Address: 0x8152B378 (4.3U)
 * @note Size: 0x8
 */
asm void PPCSync() {
    nofralloc
    sc
    blr
}

/**
 * @note Address: 0x8152B380 (4.3U)
 * @note Size: 0x14
 * @note The one and only.
 */
asm void PPCHalt() {
    nofralloc
    sync
_spin:
    nop
    li r3, 0
    nop
    b _spin
}

/**
 * @note Address: 0x8152B394 (4.3U)
 * @note Size: 0x8
 */
asm void PPCMtmmcr0(register u32 val) {
    nofralloc
    mtmmcr0 val
    blr
}

/**
 * @note Address: 0x8152B39C (4.3U)
 * @note Size: 0x8
 */
asm void PPCMtmmcr1(register u32 val) {
    nofralloc
    mtmmcr1 val
    blr
}

/**
 * @note Address: 0x8152B3A4 (4.3U)
 * @note Size: 0x8
 */
asm void PPCMtpmc1(register u32 val) {
    nofralloc
    mtpmc1 val
    blr
}

/**
 * @note Address: 0x8152B3AC (4.3U)
 * @note Size: 0x8
 */
asm void PPCMtpmc2(register u32 val) {
    nofralloc
    mtpmc2 val
    blr
}

/**
 * @note Address: 0x8152B3B4 (4.3U)
 * @note Size: 0x8
 */
asm void PPCMtpmc3(register u32 val) {
    nofralloc
    mtpmc3 val
    blr
}

/**
 * @note Address: 0x8152B3BC (4.3U)
 * @note Size: 0x8
 */
asm void PPCMtpmc4(register u32 val){
    nofralloc
    mtpmc4 val
    blr
}

/**
 * @note Address: 0x8152B3C4 (4.3U)
 * @note Size: 0x20
 */
u32 PPCMffpscr() {
    register u64 fpscr;
    asm {
        mffs f31
        stfd f31, fpscr
    }
    return fpscr;
}

/**
 * @note Address: 0x8152B3E4 (4.3U)
 * @note Size: 0x28
 */
void PPCMtfpscr(register u32 val) {
    register struct {
        f32 tmp;
        f32 data;
    } fpscr;
    asm {
        li r4, 0
        stw val, fpscr.data
        stw r4, fpscr.tmp
        lfd f31, fpscr.tmp
        mtfs f31
    }
}

/**
 * @note Address: 0x8152B40C (4.3U)
 * @note Size: 0x8
 */
asm u32 PPCMfhid2() {
    nofralloc
    mfspr r3, 0x398
    blr
}

/**
 * @note Address: 0x8152B414 (4.3U)
 * @note Size: 0x8
 */
asm void PPCMthid2(register u32 val) {
    nofralloc
    mtspr 0x398, val
    blr
}

/**
 * @note Address: 0x8152B41C (4.3U)
 * @note Size: 0xC
 */
asm u32 PPCMfwpar() {
    nofralloc
    sync
    mfwpar r3
    blr
}

/**
 * @note Address: 0x8152B428 (4.3U)
 * @note Size: 0x8
 */
asm void PPCMtwpar(register u32 val) {
    nofralloc
    mtwpar r3
    blr
}

/**
 * @note Address: 0x8152B430 (4.3U)
 * @note Size: 0x28
 */
void PPCDisableSpeculation() {
    PPCMthid0(PPCMfhid0() | HID0_SPD);
}

/**
 * @note Address: 0x8152B458 (4.3U)
 * @note Size: 0x8
 */
asm void PPCSetFpNonIEEEMode() {
    nofralloc
    mtfsb1 29
    blr
}

/**
 * @note Address: 0x8152B460 (4.3U)
 * @note Size: 0x50
 */
void PPCMthid4(register u32 val) {
    if (val & HID4_H4A) {
        asm {
            mtspr 0x3F3, val
        }
    
    } else {
        OSReport("H4A should not be cleared because of Broadway errata.\n");
        val |= HID4_H4A;
        asm {
            mtspr 0x3F3, val
        }
    
    }
}


