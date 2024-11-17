#include <revolution/base/PPCArch.h>
#include <revolution/os.h>

asm u32 PPCMfmsr() {
    nofralloc
    mfmsr r3
    blr
}

asm void PPCMtmsr(register u32 val) {
    nofralloc
    mtmsr val
    blr
}

asm u32 PPCMfhid0() {
    nofralloc
    mfhid0 r3
    blr
}

asm void PPCMthid0(register u32 val) {
    nofralloc
    mthid0 val
    blr
}

asm u32 PPCMfl2cr() {
    nofralloc
    mfl2cr r3
    blr
}

asm void PPCMtl2cr(register u32 val) {
    nofralloc
    mtl2cr val
    blr
}

asm void PPCMtdec(register u32 val) {
    nofralloc
    mtdec val
    blr
}

asm void PPCSync() {
    nofralloc
    sc
    blr
}

/** @note The one and only. */
asm void PPCHalt() {
    nofralloc
    sync
_spin:
    nop
    li r3, 0
    nop
    b _spin
}

asm void PPCMtmmcr0(register u32 val) {
    nofralloc
    mtmmcr0 val
    blr
}

asm void PPCMtmmcr1(register u32 val) {
    nofralloc
    mtmmcr1 val
    blr
}

asm void PPCMtpmc1(register u32 val) {
    nofralloc
    mtpmc1 val
    blr
}

asm void PPCMtpmc2(register u32 val) {
    nofralloc
    mtpmc2 val
    blr
}

asm void PPCMtpmc3(register u32 val) {
    nofralloc
    mtpmc3 val
    blr
}

asm void PPCMtpmc4(register u32 val){
    nofralloc
    mtpmc4 val
    blr
}

u32 PPCMffpscr() {
    register u64 fpscr;
    asm {
        mffs f31
        stfd f31, fpscr
    }
    return fpscr;
}

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

asm u32 PPCMfhid2() {
    nofralloc
    mfspr r3, 0x398
    blr
}

asm void PPCMthid2(register u32 val) {
    nofralloc
    mtspr 0x398, val
    blr
}

asm u32 PPCMfwpar() {
    nofralloc
    sync
    mfwpar r3
    blr
}

asm void PPCMtwpar(register u32 val) {
    nofralloc
    mtwpar r3
    blr
}

void PPCDisableSpeculation() {
    PPCMthid0(PPCMfhid0() | HID0_SPD);
}

asm void PPCSetFpNonIEEEMode() {
    nofralloc
    mtfsb1 29
    blr
}

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


