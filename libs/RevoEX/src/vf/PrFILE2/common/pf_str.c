#include <private/vf/PrFILE2/pf_types.h>

#include <private/vf/PrFILE2/common/pf_clib.h>
#include <private/vf/PrFILE2/common/pf_w_clib.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/common/pf_str.h>

void VFiPFSTR_SetCodeMode(PF_STR* p_str, pf_u32 code_mode) {
    p_str->code_mode = code_mode;
}

pf_u32 VFiPFSTR_GetCodeMode(PF_STR* p_str) {
    return p_str->code_mode;
}
#ifndef PF_IPL_BUILD
void VFiPFSTR_SetLocalStr(PF_STR* p_str, pf_s8* p_local) {
    if (VFiPFSTR_GetCodeMode(p_str) == 1 || p_local == PF_NULL) {
        p_str->p_local = p_str->p_head;
    } else {
        p_str->p_local = p_local;
    }
}
#endif

pf_s8* VFiPFSTR_GetStrPos(PF_STR* p_str, pf_u32 target) {
    pf_s8* p_pos;
    if (target == 1) {
        p_pos = (pf_s8*)p_str->p_head;
    }
#ifndef PF_IPL_BUILD
    else if (target == 2) {
        p_pos = (pf_s8*)p_str->p_tail;
    } else {
        p_pos = (pf_s8*)p_str->p_local;
    }
#else
    else {
        p_pos = (pf_s8*)p_str->p_tail;
    }
#endif
    return p_pos;
}

void VFiPFSTR_MoveStrPos(PF_STR* p_str, pf_s16 num_char) {
    pf_s16 cnt;
    pf_s16 offset = 0;
    pf_s32 width;
    pf_s8* p;
    pf_u16* wp;

    if (VFiPFSTR_GetCodeMode(p_str) == 1) {
        p = (pf_s8*)p_str->p_head;
        while (num_char != 0) {
            if (VFipf_vol_set.codeset.is_oem_mb_char((pf_s8)*p, PF_TRUE)) {
                offset++;
            }
            offset++;
            num_char--;
        }
    } else {
#ifndef PF_IPL_BUILD
        wp = (pf_u16*)p_str->p_head;

        for (cnt = 0; cnt < num_char; cnt++) {
            width = VFipf_vol_set.codeset.unicode_char_width((pf_u16*)wp);
            wp += width;
            offset += (pf_s16)width;
        }
#else
        p = (pf_s8*)p_str->p_head;

        for (cnt = 0; cnt < num_char; cnt++) {
            width = VFipf_vol_set.codeset.unicode_char_width((pf_u16*)p);
            p += width;
            offset += (pf_s16)width;
        }
#endif
    }

    p_str->p_head = &p_str->p_head[offset];
}

pf_s32 VFiPFSTR_InitStr(PF_STR* p_str, const pf_s8* s, pf_u32 code_mode) {
    if (p_str == PF_NULL || s == PF_NULL) {
        return PF_ERR_10;
    }

    if (code_mode == 1) {
        p_str->p_head = s;
        p_str->p_tail = &s[VFipf_strlen(s)];
    } else if (code_mode == 2) {
        p_str->p_head = s;
        p_str->p_tail = s + (VFipf_w_strlen((pf_u16*)s) * sizeof(pf_u16));
    } else {
        return PF_ERR_10;
    }

    VFiPFSTR_SetCodeMode(p_str, code_mode);
    return 0;
}

pf_u16 VFiPFSTR_StrLen(PF_STR* p_str) {
    return (pf_u16)(p_str->p_tail - p_str->p_head);
}

pf_u16 VFiPFSTR_StrNumChar(PF_STR* p_str, pf_u32 target) {
    pf_s8* p;
    pf_u16 cnt;
    pf_s32 width;

    if (target == 1) {
        p = (pf_s8*)p_str->p_head;
    } else {
        p = (pf_s8*)p_str->p_tail;
    }

    if (p_str->code_mode == 1) {
        for (cnt = 0; (pf_s8)*p != 0; cnt++) {
            if (VFipf_vol_set.codeset.is_oem_mb_char((pf_s8)*p, PF_TRUE)) {
                p++;
            }
            p++;
        }
    } else {
        for (cnt = 0; (pf_s8)p[0] != 0 || (pf_s8)p[1] != 0; cnt++) {
            width = VFipf_vol_set.codeset.unicode_char_width((pf_u16*)p);
            p += width;
        }
    }

    return cnt;
}

pf_s32 VFiPFSTR_StrCmp(const PF_STR* p_str, const pf_s8* s) {
    pf_u16 wc;
    const pf_u16* wp;
    const pf_s8* p1;
    const pf_s8* p2;
    pf_s32 ret;

    if (p_str->code_mode == 1) {
        p1 = p_str->p_head;
        p2 = s;
        ret = VFipf_strcmp(p1, p2);
    } else {
        wp = (pf_u16*)p_str->p_head;

        do {
            VFipf_vol_set.codeset.oem2unicode((pf_s8*)s, &wc);
            s++;

            if (*wp++ != wc) {
                break;
            }
        } while (*(wp - 1) != 0 && wc != 0);

        wp--;
        ret = *wp - wc;
    }

    return ret;
}

pf_s32 VFiPFSTR_StrNCmp(PF_STR* p_str, const pf_s8* s, pf_u32 target, pf_s16 offset, pf_u16 num) {
    pf_u16 wc;
    const pf_u16* wp;
    const pf_s8* p1;
    const pf_s8* p2;
    pf_s32 ret;

    if (p_str->code_mode == 1
#ifndef PF_IPL_BUILD
        || target == 3
#endif
    ) {
        if (target == 1) {
            p1 = &p_str->p_head[offset];
        }
#ifndef PF_IPL_BUILD
        else if (target == 2) {
            p1 = &p_str->p_tail[offset];
        } else {
            p1 = &p_str->p_local[offset];
        }
#else
        else {
            p1 = &p_str->p_tail[offset];
        }
#endif
        p2 = s;
        ret = VFipf_strncmp(p1, p2, num);
    } else {
        if (target == 1) {
            wp = (pf_u16*)p_str->p_head + offset;
        } else {
            wp = (pf_u16*)p_str->p_tail + offset;
        }

        do {
            VFipf_vol_set.codeset.oem2unicode((pf_s8*)s, &wc);
            s++;
            num--;

            if (*wp++ != wc || num == 0) {
                break;
            }
        } while (*(wp - 1) != 0 && wc != 0);

        wp--;
        ret = *wp - wc;
    }

    return ret;
}

void VFiPFSTR_ToUpperNStr(PF_STR* p_str, pf_u16 num, pf_s8* dest) {
    pf_u16 wc;
    const pf_u16* wp;
    const pf_s8* p;

    if (p_str->code_mode == 1) {
        p = (pf_s8*)p_str->p_head;

        for (; num != 0 && *p != 0; p++, num--) {
            *dest++ = VFipf_toupper(*p);
        }
    } else {
        wp = (pf_u16*)p_str->p_head;

        for (; num != 0 && *wp != 0; wp++, num--) {
            wc = (*wp >= 'a' && *wp <= 'z') ? *wp + ('A' - 'a') : *wp;
            *(dest) = (pf_u8)wc;
            *(dest + 1) = (pf_u8)(wc >> 8);
            dest += sizeof(pf_u16);
        }
#ifndef PF_IPL_BUILD
        *dest = 0;
#else
        *dest++ = 0;
#endif
    }

    *dest = 0;
}
