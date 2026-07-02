#include <private/vf/PrFILE2/pf_types.h>

// clang-format off
const pf_u8 VFipf_valid_fn_char[96] = {
    1, 3, 0, 3, 3, 3, 3, 3, 3, 3, 0, 1, 1, 3, 3, 0,
    3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 1, 0, 1, 0, 0,
    3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
    3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 0, 1, 3, 3,
    3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
    3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 0,
};
// clang-format on

pf_s32 VFiPFCODE_Combine_Width(pf_s16 oem_width, pf_s16 uni_width) {
    return (oem_width << 16) + uni_width;
}

void VFiPFCODE_Divide_Width(pf_s32 width, pf_s16* oem_width, pf_s16* uni_width) {
    *oem_width = (width & 0xFFFF0000) >> 16;
    *uni_width = (width & 0x0000FFFF);
}
