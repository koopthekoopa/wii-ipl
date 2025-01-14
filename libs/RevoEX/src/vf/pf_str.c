#include <private/vf/pf_clib.h>

#include <private/vf/pf_volume.h>
#include <private/vf/pf_str.h>

void VFiPFSTR_SetCodeMode(PF_STR* p_str, u32 code_mode) {
    p_str->code_mode = code_mode;
}

u32 VFiPFSTR_GetCodeMode(PF_STR* p_str) {
    return p_str->code_mode;
}

char* VFiPFSTR_GetStrPos(PF_STR* p_str, u32 target) {
    if (target == PF_STR_TARGET_HEAD) {
        return (char*)p_str->p_head;
    }
    else {
        return (char*)p_str->p_tail;
    }
}

void VFiPFSTR_MoveStrPos(PF_STR* p_str, s16 length) {
    s16 offset = 0;

    if (p_str->code_mode == PF_STR_CODE_MODE_CHAR) {
        char* p = (char*)p_str->p_head;

        for (; length != 0; length--) {
            if (VFipf_vol_set.codeset.is_oem_mb_char(*p, 1)) {
                offset++;
            }
            offset++;
        }
    }
    else {
        wchar_t* p = (wchar_t*)p_str->p_head;
        
        s32 cnt;
        for (cnt = 0; cnt < length; cnt++) {
            s32 width = VFipf_vol_set.codeset.unicode_char_width(p);
            p += width;
            offset += width;
        }
    }

    p_str->p_head += offset;
}

s32 VFiPFSTR_InitStr(PF_STR* p_str, const char* s, u32 code_mode) {
    if (p_str == NULL || s == NULL) {
        return 10;
    }

    if (code_mode == PF_STR_CODE_MODE_CHAR) {
        p_str->p_head = s;
        p_str->p_tail = (char*)(s + VFipf_strlen(s));
    }
    else if (code_mode == PF_STR_CODE_MODE_WCHAR) {
        p_str->p_head = s;
        p_str->p_tail = (char*)(s + (VFipf_w_strlen((wchar_t*)s) << 1));
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
    char* p;
    u32 cnt;

    if (target == PF_STR_TARGET_HEAD) {
        p = (char*)p_str->p_head;
    }
    else {
        p = (char*)p_str->p_tail;
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
            s32 width = VFipf_vol_set.codeset.unicode_char_width((wchar_t*)p);
            p += width;
        }
    }

    return cnt;
}

s32 VFiPFSTR_StrCmp(const PF_STR* p_str, const char* s) {
    s32 ret;

    if (p_str->code_mode == PF_STR_CODE_MODE_CHAR) {
        ret = VFipf_strcmp(p_str->p_head,s);
    }
    else {
        wchar_t* wp = (wchar_t*)p_str->p_head;
        wchar_t wc;

        do {
            (VFipf_vol_set.codeset.oem2unicode)((char*)s, &wc); s++;
        } while (*wp++ == wc && *(wp - 1) != 0 && wc != 0);

        ret = *--wp - wc;
    }

    return ret;
}

s32 VFiPFSTR_StrNCmp(const PF_STR* p_str, const char* s, u32 target, s16 offset, u16 length) {
    s32 ret;

    if (p_str->code_mode == PF_STR_CODE_MODE_CHAR) {
        char *p1, *p2;

        if (target == 1) {
            p1 = (char*)p_str->p_head + offset;
        }
        else {
            p1 = (char*)p_str->p_tail + offset;
        }
        p2 = (char*)s;

        ret = VFipf_strncmp(p1, p2, length);
    }
    else {
        wchar_t* wp;
        wchar_t wc;

        if (target == 1) {
            wp = (wchar_t*)p_str->p_head + offset;
        }
        else {
            wp = (wchar_t*)p_str->p_tail + offset;
        }

        do {
            (VFipf_vol_set.codeset.oem2unicode)((char*)s, &wc); s++; length--;
        } while (*wp++ == wc && length > 0 && *(wp - 1) != 0 && wc != 0);

        ret = *--wp - wc;
    }

    return ret;
}

void VFiPFSTR_ToUpperNStr(PF_STR* p_str, u16 num, char* dst) {
    if (p_str->code_mode == PF_STR_CODE_MODE_CHAR) {
        char* p = (char*)p_str->p_head;

        for (; num > 0 && *p != 0; p++, num--) {
            *dst++ = (char)VFipf_toupper(*p);
        }
    }
    else {
        wchar_t* wp = (wchar_t*)p_str->p_head;
        wchar_t wc;

        for (; num > 0 && *wp != 0; num--, wp++) {
            wc = ('a' <= *wp && *wp <= 'z') ? *wp + ('A' - 'a') : *wp;

            *(dst) = (char)wc;
            *(dst + 1) = (char)(wc >> 8);

            dst += 2;
        }
        *dst++ = '\0';
    }
    *dst = '\0';
}
