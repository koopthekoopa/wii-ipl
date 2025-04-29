#include <private/exi.h>

const u32 __EXIFreq = EXI_FREQ_16MHZ;

static inline u32 __EXISwap32(u32 val) {
    return (val >> 24 & 0x000000FF)
         | (val >> 8 & 0x0000FF00)
         | (val << 8 & 0x00FF0000)
         | (val << 24 & 0xFF000000);
}

BOOL EXIWriteReg(s32 chan, u32 dev, u32 exiCmd, void* reg, s32 size) {
    BOOL ret = FALSE;
    u32  reg32;

    switch (size) {
        case 1: {
            reg32 = (u32)(*(u8*)reg << 24);
            break;
        }
        case 2: {
            reg32 = (u32)(*(u16*)reg << 24 | (*(u16*)reg & 0xFF00) << 8);
            break;
        }
        default: {
            reg32 = __EXISwap32(*((u32*)reg));
            break;
        }
    }

    ret |= !EXILock(chan, dev, NULL);

    if (ret) {
        return FALSE;
    }

    ret |= !EXISelect(chan, dev, EXI_FREQ_16MHZ);

    if (ret) {
        EXIUnlock(chan);
        return FALSE;
    }

    ret |= !EXIImm(chan, &exiCmd, sizeof(u32), EXI_WRITE, NULL);
    ret |= !EXISync(chan);
    ret |= !EXIImm(chan, &reg32, sizeof(u32), EXI_WRITE, NULL);
    ret |= !EXISync(chan);
    ret |= !EXIDeselect(chan);
    ret |= !EXIUnlock(chan);

    return !ret;
}
