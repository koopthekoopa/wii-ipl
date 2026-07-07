#include <private/vf/PrFILE2/fatfs/pf_path.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/common/pf_clib.h>
#include <private/vf/PrFILE2/common/pf_service.h>
#include <private/vf/PrFILE2/common/pf_w_clib.h>

#include <private/vf/PrFILE2/common/pf_code.h>

#pragma sym on

#define VALID_PATH_CHAR(x, b) ((pf_u8)(x) >= 0x80 || ((pf_u8)(x) >= ' ' && (VFipf_valid_fn_char[(pf_u8)(x) - ' '] & b)))
#define VALID_PATH_WCHAR(x, b)                                                                                                                       \
    ((x) >= 0x80 || (pf_u8)(x) >= ' ' && ((pf_u8)(x) & 0xFF00) == 0 && (VFipf_valid_fn_char[(pf_u8)((x & 0x00FF) - ' ')] & b))

static pf_s32 VFiPFPATH_DoSplitPath(PF_STR* p_path, PF_STR* p_dir_path, PF_STR* p_filename, pf_u32 wildcard) {
    pf_s8* p;
    pf_s8* p_tail_prev;
    pf_u32 code_mode;
    PF_STR token;
    PF_STR token_prev;
    pf_s32 err;

    if (p_dir_path == PF_NULL) {
        return 10;
    }
    code_mode = VFiPFSTR_GetCodeMode(p_path);
    VFiPFSTR_SetCodeMode(p_dir_path, code_mode);
    VFiPFSTR_SetCodeMode(p_filename, code_mode);
    p_dir_path->p_head = PF_NULL;
    if (p_filename != PF_NULL) {
        p_filename->p_head = PF_NULL;
    }
    if (VFiPFSTR_StrNCmp(p_path, (pf_s8*)":", 1, 1, 1) == 0) {
        VFiPFSTR_MoveStrPos(p_path, 2);
    }
    p = (pf_s8*)p_path->p_head;
    p_tail_prev = p;
    VFiPFPATH_InitTokenOfPath(&token, p, code_mode);
    err = VFiPFPATH_GetNextTokenOfPath(&token, wildcard);
    if (err != 0) {
        return err;
    }
    if (token.p_head == PF_NULL || VFiPFSTR_StrLen(&token) == 0) {
        return 2;
    }
    if (p_path->p_tail < token.p_tail) {
        return 2;
    }
    token_prev = token;
    while (PF_TRUE) {
        if (PF_IS_PATH_NULL(&token, 2, 0)) {
            p_tail_prev = (pf_s8*)token_prev.p_tail;
            break;
        }
        err = VFiPFPATH_GetNextTokenOfPath(&token, wildcard);
        if (err != 0) {
            return err;
        }
        if (VFiPFSTR_StrLen(&token) == 0) {
            return 2;
        }
        if (p_path->p_tail < token.p_tail) {
            break;
        }
        if (token.p_head == PF_NULL) {
            break;
        }
        p_tail_prev = (pf_s8*)token_prev.p_tail;
        token_prev = token;
    }
    p_dir_path->p_head = p_path->p_head;
    p_dir_path->p_tail = p_tail_prev;
    if (p_filename != PF_NULL) {
        *p_filename = token_prev;
    }
    return 0;
}

static pf_u32 VFiPFPATH_UNI_ConvertFWchar(pf_u16 src, pf_u16* dst) {
    if (src >= 0xFF41 /*ａ*/ && src <= 0xFF5A /*ｚ*/) {
        *dst = src - ' ';
        return 1;
    }
    return 0;
}

static pf_u32 VFiPFPATH_OEM_ConvertFWchar(const pf_s8* src, pf_u16* dst) {
    VFipf_vol_set.codeset.oem2unicode((pf_s8*)src, dst);
    if (VFiPFPATH_UNI_ConvertFWchar((pf_u16)*dst, dst) == 1) {
        VFipf_vol_set.codeset.unicode2oem(dst, (pf_s8*)dst);
        *dst = (pf_u16)*dst;
        return 1;
    }
    return 0;
}

static pf_u16 VFiPFPATH_GetNextCharOfShortName(PF_FILE_NAME_ITER* p_name) {
    pf_u16 wc;
    pf_s8 c;

    if (p_name->index >= 12) {
        return 0;
    }
    wc = (pf_u8)(pf_s8)p_name->buf[p_name->index++];
    if (VFipf_vol_set.codeset.is_oem_mb_char(wc & 0xFF, 1) != 0) {
        c = p_name->buf[p_name->index++];
        wc = PF_CODE_C_TO_WC(wc, c);
    }

    return (wc >= 'a') && (wc <= 'z') ? wc - ' ' : wc;
}

static pf_u16 VFiPFPATH_GetNextCharOfLongName(PF_FILE_NAME_ITER* p_name) {
    pf_u16 wc;
    pf_u16 wchar;

    if (p_name->index > 522) {
        return 0;
    }
    wc = *(pf_u16*)&p_name->buf[p_name->index];
    p_name->index += sizeof(pf_u16);

    wc = (wc >= 'a') && (wc <= 'z') ? wc - ' ' : wc;
    if (VFiPFPATH_UNI_ConvertFWchar(wc, &wchar) == 1) {
        wc = wchar;
    }
    return wc;
}

static pf_u16 VFiPFPATH_GetNextCharOfFileName(PF_FILE_NAME_ITER* p_name) {
    if (p_name->kind == 1) {
        return VFiPFPATH_GetNextCharOfLongName(p_name);
    } else {
        return VFiPFPATH_GetNextCharOfShortName(p_name);
    }
}

static pf_u16 VFiPFPATH_GetNextCharOfPattern(PF_STR* p_pattern, pf_u16 name_kind) {
    pf_u16 wc;
    pf_u16 tmp_wc;
    pf_s8 pattern[3];
    pf_u16 twc;

    if (p_pattern->code_mode == 1) {
        pattern[0] = *p_pattern->p_head++;
        pattern[1] = 0;
        if (pattern[0] == 0 || p_pattern->p_tail < p_pattern->p_head) {
            return 0;
        }
        if (VFipf_vol_set.codeset.is_oem_mb_char(pattern[0], 1) != 0) {
            pattern[1] = *p_pattern->p_head++;
            wc = PF_CODE_C_TO_WC_ARR(pattern, 0);
        } else {
            // thanks
            wc = (pf_u16)(pf_u8)(pf_s8)pattern[0];
        }
        if (name_kind == 1) {
            VFipf_vol_set.codeset.oem2unicode(&pattern[0], &wc);
        }
    } else {
        pattern[0] = (pf_u8)(*(pf_u16*)p_pattern->p_head);
        pattern[1] = (pf_u8)(*(pf_u16*)p_pattern->p_head >> 8);
        p_pattern->p_head += 2;
        pattern[2] = 0;
        if (((pattern[0] == 0) && (pattern[1] == 0)) || (p_pattern->p_tail < p_pattern->p_head)) {
            return 0;
        }
        wc = ((pf_u8)pattern[1] << 8) + (pf_u8)pattern[0];
        if (name_kind == 0) {
            VFipf_vol_set.codeset.unicode2oem(&wc, (pf_s8*)&tmp_wc);
            tmp_wc = (pf_u16)tmp_wc;
            if (VFipf_vol_set.codeset.is_oem_mb_char((pf_u8)(tmp_wc >> 8), 1) != 0) {
                wc = tmp_wc;
            } else {
                wc = (pf_u16)((pf_u8)(tmp_wc >> 8));
            }
        }
    }
    wc = (wc >= 'a') && (wc <= 'z') ? wc - ' ' : wc;
    if (name_kind == 1) {
        if (VFiPFPATH_UNI_ConvertFWchar((pf_u16)wc, &twc) == 1) {
            wc = twc;
        }
    } else if (VFiPFPATH_OEM_ConvertFWchar(pattern, &twc) == 1) {
        wc = twc;
    }
    return wc;
}

static pf_u32 VFiPFPATH_DoMatchFileNameWithPattern(pf_u16 c_name, PF_FILE_NAME_ITER* p_name, pf_u16 c_pat, PF_STR* p_pattern) {
    PF_FILE_NAME_ITER name;
    PF_STR pattern;

    for (; c_pat != 0; c_pat = VFiPFPATH_GetNextCharOfPattern(p_pattern, p_name->kind)) {
        switch (c_pat) {
            case '?': {
                if (c_name == 0) {
                    return 0;
                }
                break;
            }
            case '*': {
                for (c_pat = VFiPFPATH_GetNextCharOfPattern(p_pattern, p_name->kind); c_pat == '*' || c_pat == '?';
                     c_pat = VFiPFPATH_GetNextCharOfPattern(p_pattern, p_name->kind)) {
                }
                if (c_pat == 0) {
                    return 1;
                }

                for (; c_name != 0; c_name = VFiPFPATH_GetNextCharOfFileName(p_name)) {
                    if (c_name == c_pat) {
                        name = *p_name;
                        pattern = *p_pattern;
                        c_name = VFiPFPATH_GetNextCharOfFileName(&name);
                        c_pat = VFiPFPATH_GetNextCharOfPattern(&pattern, p_name->kind);
                        if (VFiPFPATH_DoMatchFileNameWithPattern(c_name, &name, c_pat, &pattern) != 0) {
                            return 1;
                        }
                    }
                }
                return 0;
                break;
            }
            default: {
                if (c_name != c_pat) {
                    return 0;
                }
                break;
            }
        }

        c_name = VFiPFPATH_GetNextCharOfFileName(p_name);
    }
    if (c_name != 0) {
        return 0;
    }
    return 1;
}

pf_bool VFiPFPATH_MatchFileNameWithPattern(const pf_s8* file_name, PF_STR* p_pattern, pf_bool is_short_search, pf_bool is_long_name) {
    pf_u16 c_name;
    pf_u16 c_pat;
    PF_FILE_NAME_ITER name;
    PF_STR pattern;
    pf_bool is_match = PF_TRUE;
    pf_bool is_adjust = PF_FALSE;
    pf_s8 sig[2] = {1, 2};

    name.buf = file_name;
    name.index = 0;
    if (is_long_name) {
        name.kind = 1;
    } else {
        name.kind = 0;
    }

    pattern = *p_pattern;

    if (VFiPFSTR_GetCodeMode(p_pattern) == 1) {
        if (is_long_name == PF_FALSE && (VFipf_vol_set.setting & 0x02) == 0x02 && VFiPFPATH_CheckExtShortNameSignature(&pattern) == 1 &&
            VFipf_strncmp(file_name, (pf_s8*)&sig, 2) == 0) {
            name.index += 2;
            pattern.p_head += 2;
            is_adjust = PF_TRUE;
        }
    } else if ((VFipf_vol_set.setting & 0x02) == 0x02 && is_long_name == PF_FALSE && is_short_search == PF_FALSE &&
               VFiPFSTR_StrNCmp(p_pattern, (pf_s8*)".", 1, 0, 1) != 0 && VFiPFSTR_StrNCmp(p_pattern, (pf_s8*)"..", 1, 0, 2) != 0 &&
               VFiPFPATH_CheckExtShortName(p_pattern, 1, PF_TRUE) == 0) {
        is_match = PF_FALSE;
    }
    if (is_match == 1) {
        if ((is_long_name == 0) && (!is_adjust) && (VFiPFSTR_StrCmp(p_pattern, (pf_s8*)"*.") == 0)) {
            while ((*file_name != 0) && (*file_name != 0x2E)) {
                file_name++;
            }
            if (*file_name == 0) {
                return 1U;
            }
        }
        c_name = VFiPFPATH_GetNextCharOfFileName(&name);
        c_pat = VFiPFPATH_GetNextCharOfPattern(&pattern, name.kind);
        is_match = VFiPFPATH_DoMatchFileNameWithPattern(c_name, &name, c_pat, &pattern);
    }
    return is_match;
}

pf_s32 VFiPFPATH_cmpTailSFN(const pf_s8* sfn_name, const pf_s8* pattern) {
    if (VFipf_strcmp(sfn_name, pattern) != 0) {
        return 1;
    }
    return 0;
}

void VFiPFPATH_InitTokenOfPath(PF_STR* p_str, pf_s8* path, pf_u32 code_mode) {
    p_str->p_head = path;
    p_str->p_tail = path;
    p_str->code_mode = code_mode;
}

pf_s32 VFiPFPATH_GetNextTokenOfPath(PF_STR* p_str, pf_bool wildcard) {
    pf_u32 extsfn_len;
    pf_u32 code_mode;

    extsfn_len = 0;
    p_str->p_head = p_str->p_tail;
    if (PF_IS_PATH_NULL(p_str, 1, 0)) {
        p_str->p_head = p_str->p_tail = PF_NULL;
        return 0;
    }
    if (PF_IS_PATH_SEPERATOR(p_str, 1, 0)) {
        VFiPFSTR_MoveStrPos(p_str, 1);
    }
    if (PF_IS_PATH_SEPERATOR(p_str, 1, 0)) {
        return 2;
    }
    code_mode = VFiPFSTR_GetCodeMode(p_str);
    p_str->p_tail = p_str->p_head;
    if ((VFipf_vol_set.setting & 0x02) == 0x02) {
        extsfn_len = VFiPFPATH_CheckExtShortName(p_str, 2, wildcard);
        if (extsfn_len != 0) {
            if (code_mode == 1) {
                p_str->p_tail += extsfn_len;
            } else {
                p_str->p_tail += extsfn_len * sizeof(pf_u16);
            }
        }
    }
    if (extsfn_len == 0) {
        while (PF_IS_PATH_NOT_NULL(p_str, 2, 0)) {
            if (code_mode == 1 && VFipf_vol_set.codeset.is_oem_mb_char(*p_str->p_tail, 1) != 0) {
                p_str->p_tail++;
                if (VFipf_vol_set.codeset.is_oem_mb_char(*p_str->p_tail, 2) == 0 || p_str->p_tail[0] == 0) {
                    return 2;
                }
            } else {
                if (PF_IS_PATH_SEPERATOR(p_str, 2, 0)) {
                    break;
                }
                if ((VFipf_vol_set.config & 0x10000) == 0) {
                    if ((code_mode == 1 && !VALID_PATH_CHAR(*p_str->p_tail, 0x01)) ||
                        (code_mode == 2 && VALID_PATH_WCHAR(PF_CODE_C_TO_WC_ARR(p_str->p_tail, 0), 0x01) == PF_FALSE)) {
                        if (wildcard == PF_FALSE ||
                            !(VFiPFSTR_StrNCmp(p_str, (pf_s8*)"*", 2, 0, 1) == 0 || VFiPFSTR_StrNCmp(p_str, (pf_s8*)"?", 2, 0, 1) == 0)) {
                            return 2;
                        }
                    }
                }
            }
            code_mode == 1 ? p_str->p_tail++ : (p_str->p_tail += sizeof(pf_u16));
        }
    }
    return 0;
}

pf_s32 VFiPFPATH_SplitPath(PF_STR* p_path, PF_STR* p_dir_path, PF_STR* p_filename) {
    return VFiPFPATH_DoSplitPath(p_path, p_dir_path, p_filename, 0);
}

pf_s32 VFiPFPATH_SplitPathPattern(PF_STR* p_path, PF_STR* p_dir_path, PF_STR* p_pattern) {
    return VFiPFPATH_DoSplitPath(p_path, p_dir_path, p_pattern, 1U);
}

PF_VOLUME* VFiPFPATH_GetVolumeFromPath(PF_STR* p_path) {
    PF_VOLUME* p_vol;
    pf_s8 drv_char[2];

    if (VFiPFSTR_StrLen(p_path) == 0) {
        return PF_NULL;
    }
    if (VFiPFSTR_StrNumChar(p_path, 1) >= 2 && VFiPFSTR_StrNCmp(p_path, (pf_s8*)":", 1, 1, 1) == 0) {
        VFiPFSTR_ToUpperNStr(p_path, 1, drv_char);
        p_vol = VFiPFVOL_GetVolumeFromDrvChar(*drv_char);
    } else {
        p_vol = VFiPFVOL_GetCurrentVolume();
    }
    return p_vol;
}

pf_s32 VFiPFPATH_putShortName(pf_u8* pDirEntry, const pf_s8* short_name, pf_u8 attr) {
    pf_s32 i = 0;

    for (i = 0; (i < 8) && *short_name != 0 && *short_name != '.'; i++) {
        *pDirEntry++ = *short_name++;
    }
    if (i == 0) {
        for (i = 0; i < 2 && *short_name != 0; i++) {
            *pDirEntry++ = *short_name++;
        }
    }
    if (i > 8) {
        return 10;
    }
    if ((attr & 0x08) == 0) {
        for (; i < 8; i++) {
            *pDirEntry++ = ' ';
        }
    }
    if (*short_name != 0) {
        if ((attr & 0x08) == 0) {
            short_name++;
        }
        for (; *short_name != 0; i++) {
            *pDirEntry++ = *short_name++;
        }
    }
    for (; i < 11; i++) {
        *pDirEntry++ = ' ';
    }
    return 0;
}

pf_s32 VFiPFPATH_getShortName(pf_s8* short_name, const pf_u8* pDirEntry, pf_u8 attr) {
    pf_s32 i = 0;
    pf_s32 nLen = -1;

    for (i = 0; i < 8; i++) {
        if ((short_name[i] = pDirEntry[i]) != ' ') {
            nLen = i;
        }
    }
    short_name += ++nLen;
    if (nLen == 0) {
        return 10;
    }
    nLen = 7;
    for (i = 8; i < 11; i++) {
        if (pDirEntry[i] != ' ') {
            nLen = i;
        }
    }
    if (nLen > 7) {
        if ((attr & 0x08) == 0) {
            *short_name = '.';
            short_name++;
        }
        for (i = 8; i <= nLen; i++) {
            *short_name++ = pDirEntry[i];
        }
    }
    *short_name = 0;
    return 0;
}

void VFiPFPATH_getLongNameformShortName(pf_s8* short_name, pf_s8* long_name, pf_u8 flag) {
    pf_s32 i = 0;
    pf_s32 j = 0;

    for (i = 0; i < 8; i++) {
        if (short_name[i] == 0 || short_name[i] == '.') {
            break;
        }
        if ((flag & 0x08) != 0 && short_name[i] >= 'A' && short_name[i] <= 'Z') {
            long_name[i] = short_name[i] + ' ';
        } else {
            long_name[i] = short_name[i];
        }
    }
    if (short_name[i] == '.') {
        long_name[i++] = '.';
    }

    for (j = i + 3; i < j; i++) {
        if (short_name[i] == 0) {
            break;
        }
        if ((flag & 0x10) != 0 && short_name[i] >= 'A' && short_name[i] <= 'Z') {
            long_name[i] = short_name[i] + ' ';
        } else {
            long_name[i] = short_name[i];
        }
    }
    long_name[i] = 0;
}

pf_u32 VFiPFPATH_GetLengthFromShortname(const pf_s8* sSrc) {
    pf_s32 i = 0;
    pf_u32 szStr = 0;

    for (; sSrc[i] != 0; i++) {
        if (i == 8 && (*(sSrc + i) != ' ' || *(sSrc + i + 1) != ' ' || *(sSrc + i + 2) != ' ')) {
            szStr++;
        }
        if (sSrc[i] != ' ') {
            szStr++;
        }
    }
    return szStr;
}

pf_u32 VFiPFPATH_GetLengthFromUnicode(const pf_u16* sSrc) {
    pf_s32 i = 0;
    pf_s32 width;
    pf_u32 szStr = 0;
    pf_s16 oem_width;
    pf_s16 uni_width;
    pf_s8 Dest[2];

    while (sSrc[i] != 0) {
        width = VFipf_vol_set.codeset.unicode2oem(&sSrc[i], Dest);
        VFiPFCODE_Divide_Width(width, &oem_width, &uni_width);
        szStr += oem_width;
        i += uni_width >> 1;
    }
    return szStr;
}

pf_s32 VFiPFPATH_transformFromUnicodeToNormal(pf_s8* sDest, const pf_u16* sSrc) {
    pf_s32 i;
    pf_s32 width;
    pf_u32 szStr = 0;  // unused
    pf_s16 oem_width;
    pf_s16 uni_width;
    pf_u16 dot_buf[2];
    pf_u16 space_buf[2];

    if ((VFipf_vol_set.setting & 0x02) == 0x02) {
        dot_buf[0] = '.';
        dot_buf[1] = 0;
        space_buf[0] = ' ';
        space_buf[1] = 0;
        i = 0;
        while (sSrc[i] != 0) {
            if (VFipf_w_strncmp(&sSrc[i], dot_buf, 1) == 0) {
                *sDest = '.';
            } else if (VFipf_w_strncmp(&sSrc[i], space_buf, 1) == 0) {
                *sDest = ' ';
            } else {
                *sDest = '_';
            }
            sDest++;
            i++;
        }
    } else {
        i = 0;
        while (sSrc[i] != 0) {
            width = VFipf_vol_set.codeset.unicode2oem(&sSrc[i], sDest);
            VFiPFCODE_Divide_Width(width, &oem_width, &uni_width);
            sDest = &sDest[oem_width];
            i += uni_width >> 1;
        }
    }
    *sDest = 0;
    return szStr;
}

pf_s32 VFiPFPATH_transformInUnicode(pf_u16* sDestStr, const pf_s8* sSrcStr) {
    pf_s32 i;
    pf_s32 width;
    pf_s32 szStr;
    pf_s16 oem_width;
    pf_s16 uni_width;

    width = 1;
    szStr = 0;
    i = 0;
    while (sSrcStr[i] != 0) {
        width = VFipf_vol_set.codeset.oem2unicode(&sSrcStr[i], sDestStr);
        VFiPFCODE_Divide_Width(width, &oem_width, &uni_width);
        sDestStr += uni_width >> 1;
        szStr++;
        i += oem_width;
    }
    *sDestStr++ = 0;
    i++;
    i *= 2;
    return szStr;
}

pf_u32 VFiPFPATH_parseShortName(pf_s8* pDest, PF_STR* p_pattern) {
    pf_s32 width;
    const pf_s8* p_cur_src;
    pf_bool is_create_long = PF_FALSE;
    pf_bool is_create_tail = PF_FALSE;
    pf_u16* p_name_cnt;
    pf_u16 num_base;
    pf_u16 num_ext;
    pf_u16 last_width;
    pf_u16 prev_last_width;
    pf_u16 src_dot;
    pf_u16 prev_src_dot;
    pf_u16 src_pos;
    pf_u16 dst_pos;
    pf_u16 ext_pos;
    pf_u16 move_cnt;
    pf_s16 i;
    pf_u16 wchar;
    pf_u16 t_wchar;
    pf_s8 local[512];

    if (VFiPFSTR_GetCodeMode(p_pattern) == 2) {
        VFiPFPATH_transformFromUnicodeToNormal(local, (pf_u16*)VFiPFSTR_GetStrPos(p_pattern, 1U));
        p_cur_src = local;
    } else {
        p_cur_src = VFiPFSTR_GetStrPos(p_pattern, 1U);
    }

    if ((VFipf_vol_set.setting & 0x02) == 0) {
        while (*p_cur_src == ' ' || *p_cur_src == '.') {
            p_cur_src++;
            is_create_tail = PF_TRUE;
        }
        src_dot = 0;
        prev_src_dot = 0;
        for (src_pos = 0; p_cur_src[src_pos] != '\0'; src_pos++) {
            if (p_cur_src[src_pos] == '.') {
                if (src_dot != 0) {
                    prev_src_dot = src_dot;
                }
                src_dot = src_pos;
            }
        }
        if (src_dot != 0 && p_cur_src[src_dot + 1] == 0) {
            if (prev_src_dot != 0) {
                src_dot = prev_src_dot;
            }
            is_create_tail = PF_TRUE;
        }
        dst_pos = 0;
        src_pos = 0;
        num_base = 0;
        num_ext = 0;
        p_name_cnt = &num_base;
        last_width = 1;
        prev_last_width = 1;
        for (; num_ext < 3 && p_cur_src[src_pos] != 0; src_pos++) {
            if ((num_base != 8 && (src_dot == 0 || src_pos != src_dot)) || p_name_cnt == &num_ext) {
                if (p_cur_src[src_pos] != ' ' && p_cur_src[src_pos] != '.') {
                    width = VFipf_vol_set.codeset.oem_char_width((pf_s8*)&p_cur_src[src_pos]);
                    if (width != 1) {
                        if ((src_pos < src_dot || src_dot == 0) && (num_base + width) > 8) {
                            is_create_tail = PF_TRUE;
                        } else {
                            if (src_dot != 0 && src_pos > src_dot && (num_ext + width) > 3) {
                                is_create_tail = PF_TRUE;
                                break;
                            }
                            if (p_name_cnt == &num_base) {
                                prev_last_width = last_width;
                                last_width = width;
                            }
                            for (; width != 0; dst_pos += 2, src_pos += 2, width -= 2) {
                                wchar = ((pf_u8)p_cur_src[src_pos] << 8) + (pf_u8)p_cur_src[src_pos + 1];
                                if (VFiPFPATH_OEM_ConvertFWchar(&p_cur_src[src_pos], &t_wchar) != 0) {
                                    wchar = t_wchar;
                                    is_create_long = PF_TRUE;
                                }
                                pDest[dst_pos] = (pf_u8)(wchar >> 8);
                                pDest[dst_pos + 1] = (pf_u8)wchar;
                                *p_name_cnt = *p_name_cnt + 2;
                            }
                            src_pos--;
                        }
                    } else {
                        if (p_name_cnt == &num_base) {
                            prev_last_width = last_width;
                            last_width = 1;
                        }
                        if ((VFipf_vol_set.config & 0x10000) != 0 || VALID_PATH_CHAR(p_cur_src[src_pos], 0x02)) {
                            pDest[dst_pos++] = VFipf_toupper(p_cur_src[src_pos]);
                            (*p_name_cnt)++;
                            if (p_cur_src[src_pos] >= 'a' && p_cur_src[src_pos] <= 'z') {
                                is_create_long = PF_TRUE;
                            }
                        } else {
                            pDest[dst_pos++] = '_';
                            (*p_name_cnt)++;
                            is_create_tail = PF_TRUE;
                        }
                    }
                } else {
                    is_create_tail = PF_TRUE;
                }
            } else {
                p_name_cnt = &num_ext;
                if (p_cur_src[src_pos] != 0 && p_cur_src[src_pos] != '.') {
                    is_create_tail = PF_TRUE;
                }
                if (src_dot != 0) {
                    pDest[dst_pos++] = '.';
                    src_pos = src_dot;
                } else {
                    break;
                }
            }
        }
        if (num_ext == 3 && p_cur_src[src_pos] != 0) {
            is_create_tail = PF_TRUE;
        }
        pDest[dst_pos] = 0;
        if (is_create_tail != 0) {
            dst_pos = num_base;
            if (dst_pos == 8) {
                if (last_width != 1) {
                    dst_pos = 8 - last_width;
                } else {
                    dst_pos = 8 - ((prev_last_width == 1) ? 2 : (prev_last_width + 1));
                }
            } else if (dst_pos == 7) {
                dst_pos -= prev_last_width;
            }
            ext_pos = dst_pos + 2;
            if (ext_pos < num_base) {
                move_cnt = num_base - ext_pos;
                for (i = -1; i < (num_ext + 1); i++) {
                    pDest[num_base + i] = pDest[num_base + move_cnt + i];
                }
            } else if (ext_pos > num_base) {
                move_cnt = ext_pos - num_base;
                for (i = num_ext + 1; i >= 0; i--) {
                    pDest[num_base + move_cnt + i] = pDest[num_base + i];
                }
            }
            if (num_base != 0) {
                if ((VFipf_vol_set.setting & 0x02) != 0x02) {
                    pDest[dst_pos++] = '~';
                    pDest[dst_pos++] = '1';
                } else {
                    pDest[dst_pos++] = '_';
                    pDest[dst_pos++] = '_';
                }
            }
            is_create_long = PF_TRUE;
        }
        if (VFiPFSTR_GetCodeMode(p_pattern) == 2) {
            is_create_long = PF_TRUE;
        }
    } else {
        for (; *p_cur_src != 0 && !is_create_tail; p_cur_src++) {
            if (*p_cur_src != '.' && *p_cur_src != ' ') {
                is_create_tail = PF_TRUE;
            }
        }
        if (is_create_tail) {
            pDest[0] = 1;
            pDest[1] = 2;
            pDest[2] = '0';
            pDest[3] = '0';
            pDest[4] = '0';
            pDest[5] = '0';
            pDest[6] = '0';
            pDest[7] = '0';
            pDest[8] = 0;
        } else {
            *pDest = 0;
        }
        is_create_long = PF_TRUE;
    }
    return is_create_long;
}

pf_s32 VFiPFPATH_parseShortNameNumeric(pf_s8* p_char, pf_u32 count) {
    pf_u32 numeric_cnt;
    pf_u32 pos_tail;
    pf_u32 pos_dot;
    pf_u32 pos_ext;
    pf_u32 pos_slide;
    pf_u32 pos_end;
    pf_s8 numeric[6];

    if (count == 0) {
        return 0;
    }
    for (pos_tail = 1; p_char[pos_tail] != '~'; pos_tail++) {
    }
    for (pos_dot = pos_tail + 1; p_char[pos_dot] != '.' && p_char[pos_dot] != 0; pos_dot++) {
    }
    pos_ext = pos_dot + 1;
    if (p_char[pos_dot] == '.' && p_char[pos_ext] != 0) {
        for (pos_end = pos_ext + 1; p_char[pos_end] != 0; pos_end++) {
        }
    } else {
        pos_end = pos_ext;
    }
    for (numeric_cnt = 0; count != 0; numeric_cnt++) {
        numeric[numeric_cnt] = (count % 10) + '0';
        count /= 10;
    }
    if ((pos_tail + numeric_cnt) >= pos_ext) {
        pos_slide = pos_tail + numeric_cnt + 1;
        if (pos_slide > 8) {
            pos_slide = 8;
        }
        p_char[pos_slide + 4] = p_char[pos_end];
        p_char[pos_slide + 3] = p_char[pos_ext + 2];
        p_char[pos_slide + 2] = p_char[pos_ext + 1];
        p_char[pos_slide + 1] = p_char[pos_ext];
        p_char[pos_slide] = p_char[pos_dot];
    }
    if ((pos_tail + numeric_cnt) >= 8U) {
        pos_tail = 7 - numeric_cnt;
    }
    p_char[pos_tail++] = '~';
    for (; numeric_cnt != 0; numeric_cnt--, pos_tail++) {
        p_char[pos_tail] = numeric[numeric_cnt - 1];
    }
    return 0;
}

void VFiPFPATH_SetSearchPattern(pf_s8* p_buf_local, pf_u16* p_buf_unicode, PF_STR* p_pattern) {
    pf_u16 wc[2];

    if (VFiPFSTR_GetCodeMode(p_pattern) == 1) {
        if (VFipf_strcmp(p_pattern->p_head, (pf_s8*)"*.*") == 0) {
            VFipf_strcpy(p_buf_local, (pf_s8*)"*");
            return;
        }
        VFipf_strcpy(p_buf_local, p_pattern->p_head);
        return;
    }
    if (VFiPFSTR_StrCmp(p_pattern, (pf_s8*)"*.*") == 0) {
        wc[0] = '*';
        wc[1] = 0;
        VFipf_w_strcpy(p_buf_unicode, wc);
    } else {
        VFipf_w_strcpy(p_buf_unicode, (pf_u16*)p_pattern->p_head);
    }
    if ((VFipf_vol_set.setting & 0x02) == 0x02) {
        VFipf_vol_set.setting &= ~(0x01 | 0x02);
        VFipf_vol_set.setting |= 0x01;
        VFiPFPATH_transformFromUnicodeToNormal(p_buf_local, p_buf_unicode);
        VFipf_vol_set.setting &= ~(0x01 | 0x02);
        VFipf_vol_set.setting |= 0x02;
        return;
    }
    VFiPFPATH_transformFromUnicodeToNormal(p_buf_local, p_buf_unicode);
}

pf_u32 VFiPFPATH_CheckExtShortNameSignature(PF_STR* p_str) {
    pf_u32 result = 0;
    pf_s8 sig[2] = {1, 2};

    if (p_str == PF_NULL) {
        return 10;
    }
    if (VFiPFSTR_StrNCmp(p_str, sig, 1, 0, 2) == 0) {
        result = 1;
    }
    return result;
}

pf_u32 VFiPFPATH_CheckExtShortName(PF_STR* p_str, pf_u32 target, pf_bool wildcard) {
    pf_u32 result = 0;
    pf_s16 i;
    pf_s16 num;
    pf_bool is_wildcard = PF_FALSE;
    pf_s8 sig[2] = {1, 2};
    pf_s8* p_c;
    pf_u16* p_wc;

    if (p_str == PF_NULL) {
        return 10;
    }
    if (VFiPFSTR_StrNCmp(p_str, sig, target, 0, 2) == 0 ||
        (VFiPFSTR_StrNCmp(p_str, (pf_s8*)"?", target, 0, 1) == 0 &&
         (VFiPFSTR_StrNCmp(p_str, (pf_s8*)"?", target, 1, 1) == 0 || VFiPFSTR_StrNCmp(p_str, (pf_s8*)"*", target, 0, 1) == 0)) ||
        VFiPFSTR_StrNCmp(p_str, (pf_s8*)"*", target, 0, 1) == 0) {
        for (i = 2; i < 8 && PF_IS_PATH_SEPERATOR(p_str, target, i) == PF_FALSE && VFiPFSTR_StrNCmp(p_str, (pf_s8*)" ", target, i, 1) != 0 &&
                    PF_IS_PATH_NOT_NULL(p_str, target, i);
             i++) {
            if (VFiPFSTR_GetCodeMode(p_str) == 1) {
                p_c = VFiPFSTR_GetStrPos(p_str, target);
                num = p_c[i] - '0';
            } else {
                p_wc = (pf_u16*)VFiPFSTR_GetStrPos(p_str, target);
                num = p_wc[i] - '0';
            }
            if (num < 0 || num > 9) {
                if (!wildcard) {
                    break;
                }
                if (VFiPFSTR_StrNCmp(p_str, (pf_s8*)"*", target, i, 1) == 0 || VFiPFSTR_StrNCmp(p_str, (pf_s8*)"?", target, i, 1) == 0) {
                    if (wildcard == PF_TRUE && VFiPFSTR_StrNCmp(p_str, (pf_s8*)"*", target, i, 1) == 0) {
                        is_wildcard = PF_TRUE;
                    }
                } else {
                    break;
                }
            }
        }
        if (i == 8 || is_wildcard == PF_TRUE) {
            if (VFiPFSTR_StrNCmp(p_str, (pf_s8*)" ", target, i, 1) == 0 || PF_IS_PATH_SEPERATOR(p_str, target, i) == 0 ||
                PF_IS_PATH_NULL(p_str, target, i)) {
                result = i;
            }
        }
    }
    return result;
}

pf_u32 VFiPFPATH_GetExtShortNameIndex(PF_STR* p_str, pf_u32* p_index) {
    pf_bool result = PF_FALSE;
    pf_s16 i;
    pf_s16 num;
    pf_u32 index;
    pf_s8 sig[2] = {1, 2};
    pf_s8* p_c;
    pf_u16* p_wc;

    if ((p_str == PF_NULL) || (p_index == PF_NULL)) {
        return 10;
    }
    if (VFiPFSTR_StrNCmp(p_str, sig, 1, 0, 2) == 0) {
        index = 0;

        for (i = 2; i < 8 || PF_IS_PATH_NOT_NULL(p_str, 1, i); i++) {
            if (VFiPFSTR_GetCodeMode(p_str) == 1) {
                p_c = VFiPFSTR_GetStrPos(p_str, 1);
                num = p_c[i] - '0';
            } else {
                p_wc = (pf_u16*)VFiPFSTR_GetStrPos(p_str, 1);
                num = p_wc[i] - '0';
            }
            if ((num >= 0) && (num <= 9)) {
                index *= 10;
                index += num;
            } else {
                break;
            }
        }
        if (i == 8) {
            if (PF_IS_PATH_SEPERATOR(p_str, 1, i) == 0 || VFiPFSTR_StrNCmp(p_str, PF_NULL, 1, i, 1) == 0) {
                *p_index = index;
                result = PF_TRUE;
            }
        }
    }
    return result;
}

pf_s32 VFiPFPATH_AdjustExtShortName(pf_s8* pName, pf_u32 position) {
    pf_u32 num;
    pf_u32 i;
    pf_u32 div1;
    pf_u32 div2;

    position = position;
    if (pName == PF_NULL) {
        return 10;
    }

    for (i = 7, div1 = 10, div2 = 1; i > 1 && position != 0; i--, div1 *= 10, div2 *= 10) {
        num = position % div1;
        if (num != 0) {
            position -= num;
            num = (num / div2);
            *(pName + i) += (pf_s8)num;
        }
    }
    return 0;
}
