#include <zi8clib/zi8pud2.h>

#include <zi8clib/zconvert.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>
#include <zi8clib/zmtkey.h>

ziU32 ZiIsPhoneticChar(ziWChar ch) {
    if ((BPMF_CHAR(BPMF_CHAR_INITIAL_B) > ch || ch > BPMF_CHAR(BPMF_CHAR_MEDIAL_IU)) && (PINYIN_CHAR('a') > ch || ch > PINYIN_CHAR('z')))
        return ZI8_FALSE;
    else
        return ZI8_TRUE;
}

ziS32 ZiGetZHWordSize(ziWChar* chars, ziS32 inputSize) {
    ziS32 size;
    ziWChar* currCh;

    size = 0;
    for (size = 0; size < inputSize; chars++) {
        currCh = chars;
        if (ZiIsPhoneticChar(*currCh))
            return size;
        size += 2;
    }
    return size;
}

void Zi8CopyZHSpelling(void* param_1, ziWChar* param_2, ziU16 param_3, int param_4, int param_5) {
    int i;
    ziU32 currChAddr;

    if (param_2 == ZI8_NULL)
        return;
    if (param_3 == 0)
        return;
    *param_2 = 0;
    if (param_4 <= param_5)
        return;

    for (i = 0; i < param_4 - param_5 && i < param_3 * 2; i += 2) {
        currChAddr = (ziU32)param_1 + param_5 + i;
        *param_2 = *(ziU16*)currChAddr;
        param_2++;
    }
    *param_2 = L'\0';

    return;
}

ziU8 ZADP_Zi8SetPDremoveOpt(ziU8 newOpt ZI_NEED_WORK) {
    ziU8 oldOpt;

    ZI_WORK;
    oldOpt = ZI_WORK->pdRemoveOpt;
    ZI_WORK->pdRemoveOpt = newOpt;

    Zi8LogError(0x64, ZI_WORK);
    return oldOpt;
}

ziU8 Zi8MatchPUDdata_ZHS(ziU16* param_1, ziU8 param_2, ziU8 lang, ziU16* param_4, ziU16 param_5, ziU16* param_6, ziU16 param_7, ziU8 param_8,
                         ziU8 param_9 ZI_NEED_WORK) {
    ziUnkStruct* pzVar1;
    ziS32 wordLen;
    ziS32 uVar6;
    ziU8* pbVar7;
    int i;
    ziU16 local_52;
    void* __extra_work;
    int local_40;
    ziU8* param_1_bytes;
    ziU32 totalLen;
    ziUnkStruct* stackTop;
    ziU8* param_4_bytes;

    param_1;

    __extra_work = ZI_WORK;
    local_40 = 0;
    if (ZI_WORK->pudTopIdx > 0x10 || ZI_WORK->pudTopIdx == 0 || ZI_WORK->pudStack[ZI_WORK->pudTopIdx - 1] == ZI8_NULL) {
        Zi8LogError(0x4B0, ZI_WORK);
        return 0;
    }

    if (lang == ZI8_LANG_ZH) {
        param_2 *= 2;
    }
    if (param_9 == 0) {
        stackTop = ZI_WORK->pudStack[ZI_WORK->pudTopIdx - 1];

        pzVar1 = stackTop + 1;
        i = 0;
        for (; i < stackTop->offsLo; i++) {
            if (pzVar1->language == lang)
                break;
            pzVar1++;
        }
        if (i >= stackTop->offsLo) {
            Zi8LogError(0x4F6, ZI_WORK);
            return 0;
        }
        ZI_WORK->pudCurrCount = ((ziU16)pzVar1->countHi << 8) + (ziU16)pzVar1->countLo;
        ZI_WORK->pudTop = (ziU8*)stackTop + (((ziU16)pzVar1->offsHi << 8) + (ziU16)pzVar1->offsLo);
        ZI_WORK->pudCurrIdx = 0;
    }
    while (1) {
        pbVar7 = ZI_WORK->pudTop;
        if (pbVar7 == ZI8_NULL) {
            Zi8LogError(0x4B3, ZI_WORK);
            return 0;
        }

        while (ZI_WORK->pudCurrIdx < ZI_WORK->pudCurrCount) {
            wordLen;
            wordLen = *pbVar7++;
            totalLen = wordLen;
            if (lang == ZI8_LANG_ZH) {
                if (ZI_WORK->unk_0x17 > *pbVar7)
                    goto CONTINUE;
                wordLen--;
                totalLen--;
                pbVar7++;
                wordLen = ZiGetZHWordSize((ziWChar*)pbVar7, totalLen);
            } else if (ZI_WORK->unk_0x31E != 0 && param_8 != 0 && param_2 < wordLen && pbVar7[param_2] == ' ') {
                goto LAB_8147f9ec;
            }
            if (param_2 > wordLen || (param_8 != 0 && wordLen != param_2) || (param_8 == 0 && wordLen == param_2)) {
            CONTINUE:
                ZI_WORK->pudCurrIdx++;
                pbVar7 += totalLen;
                continue;
            }

            if (lang == ZI8_LANG_ZH) {
                param_1_bytes = (ziU8*)param_1;
                for (i = 0; i < (int)param_2; i++) {
                    if (pbVar7[i] != param_1_bytes[i])
                        goto CONTINUE;
                }
                goto LAB_8147fac0;
            } else {
            LAB_8147f9ec:
                for (i = 0; i < (int)param_2; i++) {
                    if (param_1[i] >= PAD_KEY(1) && param_1[i] <= PINYIN_CHAR(0x7F)) {
                        if (param_1[i] != Zi8ConvertUC2Key(pbVar7[i], lang, ZI_WORK))
                            goto CONTINUE;
                    } else {
                        local_52 = Zi8ConvertUC2WC(pbVar7[i], lang, ZI_WORK);
                        if (local_52 != param_1[i] &&
                            (ZI_WORK->unk_0x1F == 0 || Zi8ChangeCharCase(0, &local_52, lang, ZI_WORK) == 0 || local_52 != param_1[i]))
                            goto CONTINUE;
                    }
                }
            }

        LAB_8147fac0:
            if (local_40 != 0) {
                ZI_WORK->pudTop = ZI8_NULL;
                ZI_WORK->pudCurrIdx = 0;
                ZI_WORK->pudCurrCount = 0;
                if (*param_1 >= 0xEFF1) {
                    *param_4 = *param_1;
                } else {
                    *param_4 = Zi8ConvertWC2Key(*param_1, lang, ZI_WORK);
                }
                return 1;
            }
            if (lang == ZI8_LANG_ZH) {
                param_4_bytes = (ziU8*)param_4;
                for (i = uVar6 = 0; i < wordLen && uVar6 < param_5; uVar6++) {
                    param_4_bytes[i] = pbVar7[i];
                    i++;
                    param_4_bytes[i] = pbVar7[i];
                    i++;
                }
                Zi8CopyZHSpelling(pbVar7, param_6, param_7, totalLen, wordLen);
            } else {
                uVar6 = 0;
                while (uVar6 < wordLen && uVar6 < param_5) {
                    param_4[uVar6] = Zi8ConvertUC2WC(pbVar7[uVar6], lang, ZI_WORK);
                    if (ZI_WORK->unk_0x31E != 0 && uVar6 >= param_2 && param_4[uVar6] == L' ') {
                        if (param_8 != 0 || uVar6 >= param_2)
                            break;
                        goto CONTINUE;
                    }
                    uVar6++;
                }
            }
            ZI_WORK->pudCurrIdx++;
            ZI_WORK->pudTop = pbVar7 + totalLen;
            Zi8LogError(0x64, ZI_WORK);
            return uVar6;
        }
        if (param_2 != 1 || param_8 == 0 || param_9 != 0) {
            break;
        }
        param_8 = 0;
        local_40 = 1;
        ZI_WORK->pudCurrIdx = 0;
    }
    ZI_WORK->pudTop = ZI8_NULL;
    ZI_WORK->pudCurrIdx = 0;
    ZI_WORK->pudCurrCount = 0;
    return 0;
}

ziU8 Zi8_8147FD7C(ziU16* param_1, ziU8 param_2, ziU8 lang, ziU16* param_4, ziU16 param_5, ziU8 param_6, ziU8 param_7 ZI_NEED_WORK);
ziU8 Zi8MatchPUDdata(ziU16* param_1, ziU8 param_2, ziU8 lang, ziU16* param_4, ziU16 param_5, ziU8 param_6, ziU8 param_7 ZI_NEED_WORK) {
    ziU8 submatchRes;

    ZI_WORK;

    if (param_7 == 0) {
        ZI_WORK->pudTopIdx = 1;
    }
    while (ZI8_TRUE) {
        submatchRes = Zi8_8147FD7C(param_1, param_2, lang, param_4, param_5, param_6, param_7, ZI_WORK);
        if (submatchRes != 0) {
            goto RETURN;
        }
        if (++ZI_WORK->pudTopIdx > 0x10)
            break;
        param_7 = 0;
    }
    ZI_WORK->pudTopIdx = 1;

RETURN:
    return submatchRes;
}
ziU8 Zi8_8147FD7C(ziU16* param_1, ziU8 param_2, ziU8 lang, ziU16* param_4, ziU16 param_5, ziU8 param_6, ziU8 param_7 ZI_NEED_WORK) {
    return Zi8MatchPUDdata_ZHS(param_1, param_2, lang, param_4, param_5, ZI8_NULL, 0, param_6, param_7, ZI_WORK);
}
