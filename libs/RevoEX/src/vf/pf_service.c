#include <revolution/types.h>

void VFiPF_LE16_TO_U16_STR(unsigned char *sSrc, u32 length) {
    u32  cnt;
    char tmpSrc;

    for (cnt = 0; cnt < length; cnt += 2) {
        tmpSrc = sSrc[cnt];
        sSrc[cnt] = sSrc[cnt+1];
        sSrc[cnt+1] = tmpSrc;
    }
}
