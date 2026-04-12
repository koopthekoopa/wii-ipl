
#include <private/vf/PrFILE2/local/pf_cp932.h>
#include <private/vf/PrFILE2/local/pf_cp932_to_unicode.h>

#include <private/vf/PrFILE2/common/pf_code.h>

pf_s32 VFiPFCODE_CP932_OEM2Unicode(const pf_s8* cp932_src, pf_u16* uc_dst) {
    pf_u8 cp932_lead = *cp932_src++;
    pf_u8 cp932_trail = *cp932_src;
    pf_s32 lead_index;
    pf_s32 trail_index;

    if (cp932_lead < 0x80) {
        *uc_dst = cp932_lead;
        return VFiPFCODE_Combine_Width(1, 2);
    }
    if (cp932_lead >= (pf_u8)L'¡' && cp932_lead <= (pf_u8)L'ß') {
        *uc_dst = cp932_lead + 0xFEC0;
        return VFiPFCODE_Combine_Width(1, 2);
    }
    if (cp932_lead == 0x80 || cp932_lead == 0x85 || cp932_lead == 0x86 || cp932_lead == (pf_u8)L' ' || cp932_lead == (pf_u8)L'ë' ||
        cp932_lead == (pf_u8)L'ì' || (cp932_lead >= (pf_u8)L'ï' && cp932_lead <= (pf_u8)L'ù') ||
        (cp932_lead >= (pf_u8)L'ý' && cp932_lead == (pf_u8)L'ÿ')) {
        *uc_dst = '_';
        return VFiPFCODE_Combine_Width(1, 2);
    }
    if (cp932_trail >= (pf_u8)L'ý') {
        *uc_dst = '_';
        return VFiPFCODE_Combine_Width(1, 2);
    }
    if (cp932_lead >= 0x81 && cp932_lead <= 0x84) {
        lead_index = cp932_lead - 0x81;
    } else if (cp932_lead >= 0x87 && cp932_lead <= 0x9F) {
        lead_index = cp932_lead - 0x83;
    } else if (cp932_lead >= (pf_u8)L'à' && cp932_lead <= (pf_u8)L'ê') {
        lead_index = cp932_lead - (pf_u8)L'Ã';
    } else if (cp932_lead >= (pf_u8)L'í' && cp932_lead <= (pf_u8)L'î') {
        lead_index = cp932_lead - (pf_u8)L'Å';
    } else if (cp932_lead >= (pf_u8)L'ú' && cp932_lead <= (pf_u8)L'ü') {
        lead_index = cp932_lead - (pf_u8)L'Ð';
    } else {
        *uc_dst = '_';
        return VFiPFCODE_Combine_Width(1, 2);
    }

    trail_index = cp932_trail - '@';
    if (trail_index < 0 || trail_index >= 189) {
        *uc_dst = '_';
        return VFiPFCODE_Combine_Width(1, 2);
    }
    *uc_dst = cp932_to_unicode[lead_index][trail_index] & 0xFFFF;
    if (*uc_dst == 0) {
        *uc_dst = '_';
        return VFiPFCODE_Combine_Width(1, 2);
    }
    return VFiPFCODE_Combine_Width(2, 2);
}

pf_s32 VFiPFCODE_CP932_Unicode2OEM(const pf_u16* uc_src, pf_s8* cp932_dst) {
    pf_s32 i;
    pf_s32 j;
    pf_u16* p_table;
    pf_u8 uc_lead;
    pf_u8 uc_trail;
    pf_u16 uc;
    pf_u16 cp932;

    j = 0;
    uc_lead = (pf_u8)(*uc_src >> 8);
    uc_trail = (pf_u8)*uc_src;
    if (uc_trail < 0x80 && uc_lead == 0) {
        cp932_dst[0] = uc_trail;
        cp932_dst[1] = 0;
        return VFiPFCODE_Combine_Width(1, 2);
    }
    uc = PF_CODE_C_TO_WC(uc_lead, uc_trail);
    if (L'｡' <= uc && uc <= L'ﾟ') {
        cp932 = uc - 0xFEC0;
        cp932_dst[0] = cp932;
        cp932_dst[1] = 0;
        return VFiPFCODE_Combine_Width(1, 2);
    }
    if (uc == '_') {
        cp932_dst[0] = '_';
        return VFiPFCODE_Combine_Width(1, 2);
    }

    for (i = 0; i < 45; i++) {
        for (j = 0, p_table = (pf_u16*)&cp932_to_unicode[i]; j < 189; j++, p_table++) {
            if (*p_table == uc) {
                break;
            }
        }
        if (j < 189) {
            break;
        }
    }
    if (j == 189) {
        cp932_dst[0] = '_';
        return VFiPFCODE_Combine_Width(1, 2);
    }

    if (i >= 0 && i <= 3) {
        cp932 = ((i + 0x81) << 8) | (j + '@');
    } else if (i >= 4 && i <= 0x1C) {
        cp932 = ((i + 0x83) << 8) | (j + '@');
    } else if (i >= 0x1D && i <= '\'') {
        cp932 = ((i + (pf_u8)L'Ã') << 8) | (j + '@');
    } else if (i >= '(' && i <= ')') {
        cp932 = ((i + (pf_u8)L'Å') << 8) | (j + '@');
    } else if (i >= '*' && i <= ',') {
        cp932 = ((i + (pf_u8)L'Ð') << 8) | (j + '@');
    } else {
        cp932_dst[0] = '_';
        return VFiPFCODE_Combine_Width(1, 2);
    }

    cp932_dst[0] = (pf_u8)(cp932 >> 8);
    cp932_dst[1] = (pf_u8)cp932;
    return VFiPFCODE_Combine_Width(2, 2);
}

pf_s32 VFiPFCODE_CP932_OEMCharWidth(const pf_s8* buf) {
    pf_u16 tmp;
    pf_s32 width;
    pf_s16 oem_width;
    pf_s16 uni_width;

    width = VFiPFCODE_CP932_OEM2Unicode(buf, &tmp);
    VFiPFCODE_Divide_Width(width, &oem_width, &uni_width);
    return (pf_s32)oem_width;
}

pf_bool VFiPFCODE_CP932_isOEMMBchar(pf_s8 cp932, pf_u32 num) {
    pf_u8 code;
    pf_bool is_mb;

    code = (pf_u8)cp932;

    switch (num) {
        case 1: {
            is_mb = (code >= 0x81 && code <= 0x9F) || (code >= (pf_u8)L'à' && code <= (pf_u8)L'ü');
            break;
        }
        case 2: {
            is_mb = (code >= '@' && code <= '~') || (code >= 0x80 && code <= (pf_u8)L'ü');
            break;
        }
        default: {
            is_mb = PF_FALSE;
        }
    }

    return is_mb;
}

pf_s32 VFiPFCODE_CP932_UnicodeCharWidth(const pf_u16* buf) {
#ifndef PF_IPL_BUILD
    pf_s8 tmp[2];
    pf_s32 width;
    pf_s16 oem_width;
    pf_s16 uni_width;

    width = VFiPFCODE_CP932_Unicode2OEM(buf, (pf_s8*)&tmp);
    VFiPFCODE_Divide_Width(width, &oem_width, &uni_width);
    return (pf_s32)uni_width;
#else
    return 2;
#endif
}

pf_bool VFiPFCODE_CP932_isUnicodeMBchar(pf_u16 uc_src, pf_u32 num) {
    return PF_FALSE;
}
