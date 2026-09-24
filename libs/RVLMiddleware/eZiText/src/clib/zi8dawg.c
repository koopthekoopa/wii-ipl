#include <zi8clib/zi8dawg.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zconvert.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zidawg1.h>
#include <zi8clib/zierror.h>

#define ZI8_TABLE_DAWG_DATA_BASE 0
#define ZI8_TABLE_DAWG_INFO_BASE (ZI8_TABLE_DAWG_DATA_BASE + 1)
#define ZI8_TABLE_DAWG_DATA_SUFFIX 12
#define ZI8_TABLE_DAWG_INFO_SUFFIX (ZI8_TABLE_DAWG_DATA_SUFFIX + 1)
#define ZI8_TABLE_DAWG_DATA_PREFIX 14
#define ZI8_TABLE_DAWG_INFO_PREFIX (ZI8_TABLE_DAWG_DATA_PREFIX + 1)
#define ZI8_TABLE_DAWG_DATA_FINNISH_SUFFIX 16 /* Finnish moment! */
#define ZI8_TABLE_DAWG_INFO_FINNISH_SUFFIX (ZI8_TABLE_DAWG_DATA_FINNISH_SUFFIX + 1)
#define ZI8_TABLE_DAWG_DATA_SYLL_ALT 24
#define ZI8_TABLE_DAWG_INFO_SYLL_ALT (ZI8_TABLE_DAWG_DATA_SYLL_ALT + 1)
#define ZI8_TABLE_DAWG_DATA_SYLL_COM 26
#define ZI8_TABLE_DAWG_INFO_SYLL_COM (ZI8_TABLE_DAWG_DATA_SYLL_COM + 1)

#define ZI8_TABLE_DAWG_GROUPS 11
#define ZI8_TABLE_DAWG_OUTER_GROUPS 28

#define ZI8_DAWG_CHARATTR_WCHAR(CHARATTR) (ziWChar)(CHARATTR >> 0x00)
#define ZI8_DAWG_CHARATTR_UCHAR(CHARATTR) (ziChar)(CHARATTR >> 0x10)
#define ZI8_DAWG_CHARATTR_KEY(CHARATTR) (CHARATTR >> 0x18)

inline void Zi8DAWGSetupCtx(ziDAWGCtx* dawgCtx, ziU8 lang, ziU8 dataTab, ziU8* graphData) {
    dawgCtx->graphData = graphData;
    dawgCtx->chrCount = ZI8_DAWGHDR_CHARS_SIZE(dawgCtx->graphData) / 3;
    dawgCtx->wchars = (ziSplitWCharData*)(dawgCtx->graphData + ZI8_DAWGHDR_ENTRY_SIZE);
    dawgCtx->uchars = dawgCtx->graphData + dawgCtx->chrCount * sizeof(ziSplitWCharData) + ZI8_DAWGHDR_ENTRY_SIZE;
    dawgCtx->language = lang;
    dawgCtx->graphDataTable = dataTab;
}

inline void Zi8DAWGNextSibling(ziDAWGCtx* dawgCtx, ziDAWGCtxEntry* nodeStack) {
    while (dawgCtx->stackLen != 0) {
        nodeStack[dawgCtx->stackLen - 1].node = ZiDAWGGetSibling(nodeStack[dawgCtx->stackLen - 1].node);
        if (nodeStack[dawgCtx->stackLen - 1].node != (ziU8*)ZI8_NULL)
            break;
        dawgCtx->stackLen--;
    }
}

ziU8 Zi8MatchROMdata0(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziU8 param_6, ziU8 matchState, ziU8 dataTab,
                      ziU8 infoTab, ziBool param_10, ziU8* lenOut, ziDAWGCtx* dawgCtx, ziU8* param_13 ZI_NEED_WORK) {
    ziU16 noneFoundYet;
    ziU16 uVar3;
    ziU8 size;
    ziU8* graphData;
    ziU8* infoTableData;
    ziU16 keys[3];

    ziU16 i;
    ziDAWGCtxEntry* nodeStack;
    ziDAWGCtxEntry* topNode;

    size = 0;
    nodeStack = dawgCtx->nodeStack;
    if (lang != dawgCtx->language || dataTab != dawgCtx->graphDataTable) {
        nodeStack[0].inputChar = L'\0';
    }
    if (inLen == 1 && param_6 != 0 && dataTab == ZI8_TABLE_DAWG_DATA_PREFIX)
        goto RETURN;

    if (matchState != ZI8_MATCH_STATE_BEGIN) {
        if (nodeStack[dawgCtx->stackLen - 1].node == dawgCtx->graphInfoEndNode) {
            goto RETURN;
        }
        for (i = 0; i < inLen; i++) {
            if (nodeStack[i].inputChar != textIn[i] && ZI8_DAWG_CHARATTR_WCHAR(nodeStack[i].charAttr) != textIn[i]) {
                goto RETURN;
            }
        }
        if (param_6 == 1) {
            param_10 = ZI8_FALSE;
        }
    } else {
        if (ZI_WORK->dawgAltSuffixTable != 0 && dataTab == ZI8_TABLE_DAWG_DATA_SUFFIX &&
            Zi8GetTableSize(lang, ZI_WORK->dawgAltSuffixTable, ZI_WORK) != 0) {
            graphData = (ziU8*)Zi8GetTableAddress(lang, ZI_WORK->dawgAltSuffixTable, ZI_WORK);
            infoTab = ZI_WORK->dawgAltSuffixTable + 1;
        } else {
            if (Zi8GetTableSize(lang, dataTab, ZI_WORK) == 0) {
                Zi8LogError(ZI8_ERR_DAWG_MISSING_TABLE, ZI_WORK);
                goto RETURN;
            }
            graphData = (ziU8*)Zi8GetTableAddress(lang, dataTab, ZI_WORK);
        }
        Zi8DAWGSetupCtx(dawgCtx, lang, dataTab, graphData);

        i = 0;
        while (i < inLen && nodeStack[i].inputChar == textIn[i]) {
            i++;
        }

        if (i >= 2) {
            nodeStack[0].node = nodeStack[i - 1].rootNode;
        } else {
            uVar3 = Zi8GetTableSize(lang, infoTab, ZI_WORK);
            if (uVar3 != 0 && ZI_WORK->usrKeyLyts[lang] == ZI8_NULL) {
                i = 0;
                while (i < (inLen < 2 ? inLen : 2)) {
                    keys[i] = Zi8ConvertWC2Key(textIn[i], lang, ZI_WORK);
                    if (keys[i] == L'\0') {
                        keys[i] = textIn[i];
                    }
                    i++;
                }
                keys[i] = L'\0';
                infoTableData = (ziU8*)Zi8GetTableAddress(lang, infoTab, ZI_WORK);
                dawgCtx->padKeys = (ziSplitWCharData*)(infoTableData + 2);
                infoTableData += dawgCtx->chrCount * sizeof(ziSplitWCharData) + 2;
                nodeStack[0].node = ZiDAWGGetGraphInfo(dawgCtx, infoTableData, keys);
            } else {
                nodeStack[0].node = (ziU8*)ZiDAWGGetGraph(dawgCtx);
                dawgCtx->graphInfoEndNode = ZI8_NULL;
                dawgCtx->padKeys = ZI8_NULL;
            }
            nodeStack[0].inputChar = L'\0';
            if (nodeStack[0].node == (ziU8*)ZI8_NULL) {
                goto RETURN;
            }
        }
        dawgCtx->stackLen = 1;
        param_13[1] = inLen;
        param_13[0] = 0;
        if (param_6 == 1) {
            param_13[0] = 1;
            param_10 = ZI8_FALSE;
        } else if (param_6 == 0 && !param_10) {
            param_13[1]++;
        }
    }

    noneFoundYet = ZI8_TRUE;
    for (topNode = &nodeStack[dawgCtx->stackLen - 1]; noneFoundYet && dawgCtx->stackLen != 0 && topNode->node != dawgCtx->graphInfoEndNode;
         topNode = &nodeStack[dawgCtx->stackLen - 1]) {
        if (outLen < dawgCtx->stackLen)
            break;
        topNode->charAttr = ZiDAWGgetCHARattribute(dawgCtx, topNode->node, ZI_WORK);

        if (dawgCtx->stackLen <= inLen) {
            uVar3 = dawgCtx->padKeys == ZI8_NULL ? Zi8ConvertWC2Key(ZI8_DAWG_CHARATTR_WCHAR(topNode->charAttr), lang, ZI_WORK) :
                                                   ZI8_GET_SPLIT_WCHAR_IDXD_ADD(dawgCtx->padKeys, ZI8_DAWG_CHARATTR_KEY(topNode->charAttr));
            if (uVar3 != textIn[dawgCtx->stackLen - 1] && textIn[dawgCtx->stackLen - 1] != ZI8_DAWG_CHARATTR_WCHAR(topNode->charAttr))
                goto NEXT_SIBLING;

            if (topNode->inputChar != textIn[dawgCtx->stackLen - 1]) {
                topNode->inputChar = textIn[dawgCtx->stackLen - 1];
                topNode->rootNode = nodeStack[0].node;
                nodeStack[dawgCtx->stackLen].inputChar = L'\0';
            }
            if (lenOut != ZI8_NULL && *lenOut < dawgCtx->stackLen) {
                if (ZiDAWGgetEOWattribute(topNode->node)) {
                    *lenOut = (ziU8)dawgCtx->stackLen;
                    for (i = 0; i < dawgCtx->stackLen; i++) {
                        textOut[i] = ZI8_DAWG_CHARATTR_WCHAR(nodeStack[i].charAttr);
                    }
                }
            }

            if (dawgCtx->stackLen < inLen) {
                goto EXTEND_CHILD;
            }
        }

        if (dawgCtx->stackLen >= param_13[1]) {
            if (param_13[0] != 0 && dawgCtx->stackLen > param_13[1])
                goto NEXT_SIBLING;

            if (param_10 || ZiDAWGgetEOWattribute(topNode->node)) {
                for (i = 0; i < dawgCtx->stackLen; i++) {
                    textOut[i] = ZI8_DAWG_CHARATTR_WCHAR(nodeStack[i].charAttr);
                }
                size = dawgCtx->stackLen;
                noneFoundYet = ZI8_FALSE;
                if (param_10)
                    goto NEXT_SIBLING;
            }
            if (param_13[0] != 0 && dawgCtx->stackLen >= param_13[1])
                goto NEXT_SIBLING;
        }

    EXTEND_CHILD:
        nodeStack[dawgCtx->stackLen].node = ZiDAWGGetChild(nodeStack[dawgCtx->stackLen - 1].node);
        if (nodeStack[dawgCtx->stackLen].node != (ziU8*)ZI8_NULL) {
            dawgCtx->stackLen++;
            if (ZI_WORK->dawgDeepestSearched < dawgCtx->stackLen) {
                ZI_WORK->dawgDeepestSearched = dawgCtx->stackLen;
            }
            continue;
        }

    NEXT_SIBLING:
        Zi8DAWGNextSibling(dawgCtx, nodeStack);
    }

RETURN:
    return size;
}

ziU8* NextDawgGroup(ziU8* groupData, ziU8 language ZI_NEED_WORK) {
    if (Zi8GetTableSize(language, ZI8_TABLE_DAWG_OUTER_GROUPS, ZI_WORK) != 0) {
        if (groupData == ZI8_NULL) {
            groupData = (ziU8*)Zi8GetTableAddress(language, ZI8_TABLE_DAWG_OUTER_GROUPS, ZI_WORK);
            if (groupData == ZI8_NULL) {
                Zi8LogError(ZI8_ERR_DAWG_GROUP_TABLE_NULL, ZI_WORK);
                return ZI8_NULL;
            }
            if (!ZI_WORK->dawgSkipSuffixOnlyPattern) {
                return groupData;
            }
        }
        while (groupData[0] != 0xFF || groupData[1] != 0xFF) {
            groupData++;
        }

        groupData += 2;
        if (groupData[0] == 0xFF) {
            Zi8LogError(ZI8_ERR_DAWG_NO_NEXT_GROUP, ZI_WORK);
            return ZI8_NULL;
        }
        return groupData;
    } else {
        Zi8LogError(ZI8_ERR_DAWG_MISSING_TABLE, ZI_WORK);
        return ZI8_NULL;
    }
}

ziU8 Zi8MatchROMdata1(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziU8 param_6, ziU8 matchState, ziU8 graphIdx,
                      ziU8* dawgGroupData, ziBool param_10 ZI_NEED_WORK) {
    ziU8 matchResult;
    ziU8* groupDataAddr;

    matchResult = 0;
    if (matchState == ZI8_MATCH_STATE_BEGIN) {
        ZI_WORK->dawgGroups = dawgGroupData;
        if (ZI_WORK->dawgGroups == ZI8_NULL && Zi8GetTableSize(lang, ZI8_TABLE_DAWG_GROUPS, ZI_WORK) != 0) {
            ZI_WORK->dawgGroups = (groupDataAddr = (ziU8*)Zi8GetTableAddress(lang, ZI8_TABLE_DAWG_GROUPS, ZI_WORK));
        }
        if (ZI_WORK->dawgGroups != ZI8_NULL) {
            while (*ZI_WORK->dawgGroups != 0xFF && graphIdx != 0) {
                while (*ZI_WORK->dawgGroups != 0xFF) {
                    ZI_WORK->dawgGroups += 2;
                }
                ZI_WORK->dawgGroups += 1;
                graphIdx--;
            }
        }
    }
    if (ZI_WORK->dawgGroups == ZI8_NULL) {
        matchResult = Zi8MatchROMdata0(textIn, inLen, lang, textOut, outLen, param_6, matchState, 0, 1, param_10, ZI8_NULL, &ZI_WORK->dawgCtx,
                                       ZI_WORK->unk_0x1760, ZI_WORK);
    } else {
        while (*ZI_WORK->dawgGroups != 0xFF) {
            matchResult = Zi8MatchROMdata0(textIn, inLen, lang, textOut, outLen, param_6, matchState, ZI_WORK->dawgGroups[0], ZI_WORK->dawgGroups[1],
                                           param_10, ZI8_NULL, &ZI_WORK->dawgCtx, ZI_WORK->unk_0x1760, ZI_WORK);
            if (matchResult != 0)
                break;
            ZI_WORK->dawgGroups += 2;
            matchState = ZI8_MATCH_STATE_BEGIN;
        }
    }
    return matchResult;
}

ziU8 Zi8MatchROMdata2(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziU16* textOut, ziU16 outLen, ziU8 param_6, ziU8 matchState, ziU8 param_8,
                      ziU8* dawgGroupData, ziBool param_10 ZI_NEED_WORK) {
    ziU8 i;
    ziU8 matchLen;

    matchLen = 0;
    if (param_8 != 0) {
        return 0;
    }

    if (matchState == ZI8_MATCH_STATE_BEGIN) {
        ZI_WORK->graphIdx = 0;
        ZI_WORK->unk_0x17EA = 0;
        if (dawgGroupData != ZI8_NULL && dawgGroupData[0] == ZI8_TABLE_DAWG_DATA_SUFFIX && lang == ZI8_LANG_FI && ZI_WORK->dawgUseAltSuffixTable) {
            ZI_WORK->dawgAltSuffixTable = ZI8_TABLE_DAWG_DATA_FINNISH_SUFFIX;
        } else {
            ZI_WORK->dawgAltSuffixTable = 0;
        }
    }

    while (1) {
    CONTINUE_SEARCHING:
        ZI_WORK->dawgDeepestSearched = 1;
        matchLen = Zi8MatchROMdata1(textIn + ZI_WORK->unk_0x17EA, inLen - ZI_WORK->unk_0x17EA, lang, ZI_WORK->predBuf + ZI_WORK->unk_0x17EA, outLen,
                                    param_6, matchState, ZI_WORK->graphIdx, dawgGroupData, param_10, ZI_WORK);
        if (matchLen != 0) {
            for (i = ZI_WORK->unk_0x17EA + matchLen; i != 0; i--) {
                textOut[i - 1] = ZI_WORK->predBuf[i - 1];
            }
            matchLen = matchLen + ZI_WORK->unk_0x17EA;
            break;
        }

        if (matchState != ZI8_MATCH_STATE_BEGIN)
            break;
        if (inLen == 1)
            break;

        if (param_6 == 1 && ZI_WORK->graphIdx == 0) {
            if (Zi8MatchROMdata1(textIn + ZI_WORK->unk_0x17EA, inLen - ZI_WORK->unk_0x17EA, lang, ZI_WORK->predBuf + ZI_WORK->unk_0x17EA, outLen, 0,
                                 matchState, ZI_WORK->graphIdx, dawgGroupData, param_10, ZI_WORK) != 0) {
                goto RETURN;
            }
        }
        if (!GET_DICT_CFG_FLAG(lang, ZI_WORK, ZI8_CFG_UNK_x004)) {
            for (i = 0; i < inLen; i++) {
                if (textIn[i] == PAD_KEY(1)) {
                    goto RETURN;
                }
            }
        }

        if (ZI_WORK->dawgDeepestSearched > outLen)
            break;

        i = ZI_WORK->dawgDeepestSearched;
        for (; i != 0; i--) {
            matchLen = Zi8MatchROMdata1(textIn + ZI_WORK->unk_0x17EA, i, lang, ZI_WORK->predBuf + ZI_WORK->unk_0x17EA, outLen, 1, ZI8_FALSE,
                                        ZI_WORK->graphIdx, dawgGroupData, param_10, ZI_WORK);
            if (matchLen == 0)
                continue;

            ZI_WORK->unk_0x17EA += matchLen;
            if (ZI_WORK->unk_0x17EA == inLen) {
                return 0;
            }
            ZI_WORK->graphIdx++;
            matchState = ZI8_MATCH_STATE_BEGIN;
            ZI_WORK->dawgAltSuffixTable = 0;
            if (ZI_WORK->dawgCtx.graphDataTable == 0 && lang == ZI8_LANG_FI) {
                for (i = 0; i < ZI_WORK->unk_0x17EA; i++) {
                    switch (ZI_WORK->predBuf[i]) {
                        case L'a':
                        case L'o':
                        case L'u':
                            ZI_WORK->dawgAltSuffixTable = ZI8_TABLE_DAWG_DATA_FINNISH_SUFFIX;
                            goto CONTINUE_SEARCHING;
                    }
                }
            }
            goto CONTINUE_SEARCHING;
        }
        break;
    }

RETURN:
    return matchLen;
}

ziU8 Zi8MatchROMdata(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziU8 param_6, ziU8 matchState, ziU8 param_8,
                     ziBool param_9 ZI_NEED_WORK) {
    ziU32 dawgGroupTableSize;
    ziU8 matchLen;

    matchLen = 0;
    dawgGroupTableSize = 0;
    if (outLen < inLen) {
        Zi8LogError(ZI8_ERR_BUFFER_SIZE_MISMATCH, ZI_WORK);
    } else if (matchState == ZI8_MATCH_STATE_DONE) {
        Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    } else {
        if (matchState == ZI8_MATCH_STATE_BEGIN) {
            ZI_WORK->unk_0x17EC = 0;
            ZI_WORK->dawgGroupData = NextDawgGroup(ZI8_NULL, lang, ZI_WORK);
        } else if (ZI_WORK->unk_0x17EC != 0) {
            Zi8LogError(ZI8_ERR_OK, ZI_WORK);
            goto RETURN;
        }
        dawgGroupTableSize = Zi8GetTableSize(lang, ZI8_TABLE_DAWG_OUTER_GROUPS, ZI_WORK);
        if (dawgGroupTableSize == 0) {
            matchLen = Zi8MatchROMdata2(textIn, inLen, lang, textOut, outLen, param_6, matchState, param_8, ZI8_NULL, param_9, ZI_WORK);
        } else {
            while (ZI_WORK->dawgGroupData != ZI8_NULL) {
                matchLen =
                    Zi8MatchROMdata2(textIn, inLen, lang, textOut, outLen, param_6, matchState, param_8, ZI_WORK->dawgGroupData, param_9, ZI_WORK);
                if (matchLen != 0)
                    break;
                matchState = ZI8_MATCH_STATE_BEGIN;
                if (inLen <= 1 && lang == ZI8_LANG_SW)
                    break;
                ZI_WORK->dawgGroupData = NextDawgGroup(ZI_WORK->dawgGroupData, lang, ZI_WORK);
            }
        }
        if (matchLen == 0 && matchState == ZI8_MATCH_STATE_BEGIN && param_6 == 1 && inLen == 1 && outLen >= 1) {
            param_6 = 0;
            ZI_WORK->unk_0x17EC = 1;
            if (dawgGroupTableSize != 0) {
                ZI_WORK->dawgGroupData = NextDawgGroup(ZI8_NULL, lang, ZI_WORK);
                while (ZI_WORK->dawgGroupData != ZI8_NULL) {
                    if (Zi8MatchROMdata2(textIn, inLen, lang, textOut, outLen, param_6, matchState, param_8, ZI_WORK->dawgGroupData, param_9,
                                         ZI_WORK) != 0) {
                        *textOut = *textIn;
                        matchLen = 1;
                        break;
                    }
                    ZI_WORK->dawgGroupData = NextDawgGroup(ZI_WORK->dawgGroupData, lang, ZI_WORK);
                }
            } else {
                if (Zi8MatchROMdata2(textIn, inLen, lang, textOut, outLen, param_6, matchState, param_8, ZI8_NULL, param_9, ZI_WORK) != 0) {
                    *textOut = *textIn;
                    matchLen = 1;
                }
            }
        }
        Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    }
RETURN:
    return matchLen;
}

ziU8 Zi8SyllablesROMdata(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziU8 matchState, ziU8* lenOut,
                         ziBool useAlt ZI_NEED_WORK) {
    ziU8 infoTab;
    ziU8 dataTab;

    dataTab = ZI8_TABLE_DAWG_DATA_SYLL_COM;
    infoTab = ZI8_TABLE_DAWG_INFO_SYLL_COM;
    if (lenOut != ZI8_NULL) {
        *lenOut = 0;
    }
    if (useAlt) {
        dataTab = ZI8_TABLE_DAWG_DATA_SYLL_ALT;
        infoTab = ZI8_TABLE_DAWG_INFO_SYLL_ALT;
    }
    if (Zi8GetTableSize(lang, dataTab, ZI_WORK) == 0) {
        if (dataTab == ZI8_TABLE_DAWG_DATA_SYLL_COM) {
            dataTab = ZI8_TABLE_DAWG_DATA_SYLL_ALT;
            infoTab = ZI8_TABLE_DAWG_INFO_SYLL_ALT;
        } else {
            dataTab = ZI8_TABLE_DAWG_DATA_SYLL_COM;
            infoTab = ZI8_TABLE_DAWG_INFO_SYLL_COM;
        }
    }
    return Zi8MatchROMdata0(textIn, inLen, lang, textOut, outLen, 1, matchState, dataTab, infoTab, ZI8_FALSE, lenOut, &ZI_WORK->dawgCtx,
                            ZI_WORK->unk_0x1760, ZI_WORK);
}
