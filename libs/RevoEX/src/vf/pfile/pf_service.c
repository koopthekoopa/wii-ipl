#include <revolution/types.h>

void VFiPF_LE16_TO_U16_STR(unsigned char *src, u32 length) {
    u32  cnt;
    char tmpSrc;

    for (cnt = 0; cnt < length; cnt += 2) {
        tmpSrc = src[cnt];
        src[cnt] = src[cnt+1];
        src[cnt+1] = tmpSrc;
    }
}
