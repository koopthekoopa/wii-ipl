#include <private/vf/pf_clib.h>

#include <private/vf/pf_volume.h>
#include <private/vf/pf_str.h>

void VFiPFSTR_SetCodeMode(PF_STR* p_str, u32 code_mode) {
    p_str->code_mode = code_mode;
}

u32 VFiPFSTR_GetCodeMode(PF_STR* p_str) {
    return p_str->code_mode;
}

s8* VFiPFSTR_GetStrPos(PF_STR* p_str, u32 target) {
    if (target == PF_STR_TARGET_HEAD) {
        return (s8*)p_str->p_head;
    }
    else {
        return (s8*)p_str->p_tail;
    }
}

void VFiPFSTR_MoveStrPos(PF_STR* p_str, s16 length) {
    s16 cnt;
    s16 offset = 0;
    s32 width;
    s8* p;

    if (p_str->code_mode == PF_STR_CODE_MODE_CHAR) {
        p = (s8*)p_str->p_head;

        for (; length != 0; length--) {
            if (VFipf_vol_set.codeset.is_oem_mb_char(*p, 1)) {
                offset++;
            }
            offset++;
        }
    }
    else {
        p = (s8*)p_str->p_head;

        for (cnt = 0; cnt < length; cnt++) {
            width = VFipf_vol_set.codeset.unicode_char_width((u16*)p);
            p += width;
            offset += (s16)width;
        }
    }

    p_str->p_head += offset;
}

s32 VFiPFSTR_InitStr(PF_STR* p_str, const s8* s, u32 code_mode) {
    if (p_str == NULL || s == NULL) {
        return 10;
    }

    if (code_mode == PF_STR_CODE_MODE_CHAR) {
        p_str->p_head = s;
        p_str->p_tail = (s8*)(s + VFipf_strlen(s));
    }
    else if (code_mode == PF_STR_CODE_MODE_WCHAR) {
        p_str->p_head = s;
        p_str->p_tail = (s8*)(s + (VFipf_w_strlen((u16*)s) << 1));
    }
    else {
        return 10;
    }

    VFiPFSTR_SetCodeMode(p_str, code_mode);

    return 0;
}

u16 VFiPFSTR_StrLen(PF_STR* p_str) {
    return p_str->p_tail - p_str->p_head;
}

u32 VFiPFSTR_StrNumChar(PF_STR* p_str, u32 target) {
    s8* p;
    u32 cnt;

    if (target == PF_STR_TARGET_HEAD) {
        p = (s8*)p_str->p_head;
    }
    else {
        p = (s8*)p_str->p_tail;
    }

    if (p_str->code_mode == PF_STR_CODE_MODE_CHAR) {
        for (cnt = 0; *p != 0; cnt++) {
            if (VFipf_vol_set.codeset.is_oem_mb_char(*p, 1)) {
                p++;
            }
            p++;
        }
    }
    else {
        for (cnt = 0; *p != 0 || *(p + 1) != 0; cnt++) {
            s32 width = VFipf_vol_set.codeset.unicode_char_width((u16*)p);
            p += width;
        }
    }

    return cnt;
}

s32 VFiPFSTR_StrCmp(const PF_STR* p_str, const s8* s) {
    u16         wc;
    const u16*  wp;

    const s8*   p1;
    const s8*   p2;

    s32         ret;

    if (p_str->code_mode == PF_STR_CODE_MODE_CHAR) {
        p1 = p_str->p_head;
        p2 = (s8*)s;

        ret = VFipf_strcmp(p1, p2);
    }
    else {
        wp = (u16*)p_str->p_head;

        do {
            (VFipf_vol_set.codeset.oem2unicode)((s8*)s, &wc); s++;
            if (*wp++ != wc) {
                break;
            }
        } while (*(wp - 1) != 0 && wc != 0);

        ret = *--wp - wc;
    }

    return ret;
}

s32 VFiPFSTR_StrNCmp(PF_STR* p_str, const s8* s, u32 target, s16 offset, u16 length) {
    u16         wc;
    const u16*  wp;

    const s8*   p1;
    const s8*   p2;

    s32         ret;

    if (p_str->code_mode == PF_STR_CODE_MODE_CHAR) {
        if (target == PF_STR_TARGET_HEAD) {
            p1 = (s8*)p_str->p_head + offset;
        }
        else {
            p1 = (s8*)p_str->p_tail + offset;
        }
        p2 = (s8*)s;

        ret = VFipf_strncmp(p1, p2, length);
    }
    else {
        if (target == PF_STR_TARGET_HEAD) {
            wp = (u16*)p_str->p_head + offset;
        }
        else {
            wp = (u16*)p_str->p_tail + offset;
        }

        do {
            (VFipf_vol_set.codeset.oem2unicode)((s8*)s, &wc); s++; length--;
            if (*wp++ != wc || length <= 0) {
                break;
            }
        } while (*(wp - 1) != 0 && wc != 0);

        ret = *--wp - wc;
    }

    return ret;
}

void VFiPFSTR_ToUpperNStr(PF_STR* p_str, u16 num, s8* dst) {
    if (p_str->code_mode == PF_STR_CODE_MODE_CHAR) {
        s8* p = (s8*)p_str->p_head;

        for (; num > 0 && *p != 0; p++, num--) {
            *dst++ = (s8)VFipf_toupper(*p);
        }
    }
    else {
        u16* wp = (u16*)p_str->p_head;
        u16 wc;

        for (; num > 0 && *wp != 0; num--, wp++) {
            wc = ('a' <= *wp && *wp <= 'z') ? *wp + ('A' - 'a') : *wp;

            *(dst) = (s8)wc;
            *(dst+1) = (s8)(wc >> 8);

            dst += 2;
        }
        *dst++ = 0;
    }
    *dst = 0;
}
