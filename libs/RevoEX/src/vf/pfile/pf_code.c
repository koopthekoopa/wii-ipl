#include <revolution/types.h>

const u8 VFipf_valid_fn_char[0x60] = {
    1, 3, 0, 3, 3, 3, 3, 3, 3, 3, 0, 1, 1, 3, 3, 0,
    3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 1, 0, 1, 0, 0,
    3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
    3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 0, 1, 3, 3,
    3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
    3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 0,
};

s32 VFiPFCODE_Combine_Width(s16 oem_width, s16 uni_width) {
    return (oem_width << 16) + uni_width;
}

void VFiPFCODE_Divide_Width(s32 width, s16* oem_width, s16* uni_width) {
    *oem_width = (width & 0xFFFF0000) >> 16;
    *uni_width = width;
}
