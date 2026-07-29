#include <zi8clib/zi8dawg.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zconvert.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zidawg1.h>
#include <zi8clib/zierror.h>

ziU8 Zi8MatchROMdata0(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziU8 param_6, ziBool cont, ziU8 dataTab, ziU8 infoTab,
                      ziU8 param_10, ziU8* lenOut, ziDAWGCtx* dawgCtx, ziU8* param_13 ZI_NEED_WORK) {
    ziU16 noneFoundYet;
    ziU16 uVar3;
    ziU8 size;
    ziU8* graphData;
    ziU8* infoTableData;
    ziDAWGCtxEntry* topNode;
    ziU16 keys[3];

    ziU16 i;
    ziDAWGCtxEntry* nodeStack;

    size = 0;
    nodeStack = dawgCtx->nodeStack;
    if (lang != dawgCtx->language || dataTab != dawgCtx->graphDataTable) {
        nodeStack[0].unk_0x8 = 0;
    }
    if (inLen == 1 && param_6 != 0 && dataTab == 0x0E)
        goto RETURN;

    if (cont) {
        if (nodeStack[dawgCtx->stackLen - 1].node == dawgCtx->unk_0x338) {
            goto RETURN;
        }
        for (i = 0; i < inLen; i++) {
            if (nodeStack[i].unk_0x8 != textIn[i] && (ziWChar)nodeStack[i].charAttr != textIn[i]) {
                goto RETURN;
            }
        }
        if (param_6 == 1) {
            param_10 = 0;
        }
    } else {
        if (ZI_WORK->unk_0x141E != 0 && dataTab == 0xC && Zi8GetTableSize(lang, ZI_WORK->unk_0x141E, ZI_WORK) != 0) {
            graphData = (ziU8*)Zi8GetTableAddress(lang, ZI_WORK->unk_0x141E, ZI_WORK);
            infoTab = ZI_WORK->unk_0x141E + 1;
        } else {
            if (Zi8GetTableSize(lang, dataTab, ZI_WORK) == 0) {
                Zi8LogError(0x961, ZI_WORK);
                goto RETURN;
            }
            graphData = (ziU8*)Zi8GetTableAddress(lang, dataTab, ZI_WORK);
        }
        dawgCtx->graphData = graphData;
        dawgCtx->chrCount = (ziU16)((((ziU16)dawgCtx->graphData[2] << 8) + dawgCtx->graphData[3]) / 3);
        dawgCtx->wchars = (ziDAWGWCharData*)(dawgCtx->graphData + 4);
        dawgCtx->uchars = dawgCtx->graphData + dawgCtx->chrCount * 2 + 4;
        dawgCtx->language = lang;
        dawgCtx->graphDataTable = dataTab;

        i = 0;
        while (i < inLen && nodeStack[i].unk_0x8 == textIn[i]) {
            i++;
        }

        if (i >= 2) {
            nodeStack->node = nodeStack[i - 1].unk_0xC;
        } else {
            uVar3 = Zi8GetTableSize(lang, infoTab, ZI_WORK);
            if (uVar3 != 0 && ZI_WORK->usrKeyLyts[lang] == ZI8_NULL) {
                i = 0;
                while (i < (inLen < 2 ? inLen : 2)) {
                    keys[i] = Zi8ConvertWC2Key(textIn[i], lang, ZI_WORK);
                    if (keys[i] == 0) {
                        keys[i] = textIn[i];
                    }
                    i++;
                }
                keys[i] = 0;
                infoTableData = (ziU8*)Zi8GetTableAddress(lang, infoTab, ZI_WORK);
                dawgCtx->padKeys = (ziDAWGWCharData*)(infoTableData + 2);
                infoTableData += dawgCtx->chrCount * 2 + 2;
                nodeStack->node = ZiDAWGGetGraphInfo(dawgCtx, (ziDAWGGraphInfo*)infoTableData, keys);
            } else {
                nodeStack->node = (ziU8*)ZiDAWGGetGraph(dawgCtx);
                dawgCtx->unk_0x338 = ZI8_NULL;
                dawgCtx->padKeys = ZI8_NULL;
            }
            nodeStack->unk_0x8 = 0;
            if (nodeStack->node == (ziU8*)ZI8_NULL) {
                goto RETURN;
            }
        }
        dawgCtx->stackLen = 1;
        param_13[1] = inLen;
        param_13[0] = 0;
        if (param_6 == 1) {
            param_13[0] = 1;
            param_10 = 0;
        } else if (param_6 == 0 && param_10 == 0) {
            param_13[1]++;
        }
    }

    noneFoundYet = ZI8_TRUE;
    topNode = &nodeStack[dawgCtx->stackLen - 1];
    while (noneFoundYet && dawgCtx->stackLen != 0 && topNode->node != dawgCtx->unk_0x338) {
        if (outLen < dawgCtx->stackLen)
            break;
        topNode->charAttr = ZiDAWGgetCHARattribute(dawgCtx, topNode->node, ZI_WORK);
        if (dawgCtx->stackLen <= inLen) {
            // This awful ternary statement is necessary for matching :(
            uVar3 = dawgCtx->padKeys == ZI8_NULL ?
                        Zi8ConvertWC2Key(topNode->charAttr, lang, ZI_WORK) :
                        ((ziU16)dawgCtx->padKeys[topNode->charAttr >> 0x18].hi << 8) + dawgCtx->padKeys[topNode->charAttr >> 0x18].lo;
            if (uVar3 != textIn[dawgCtx->stackLen - 1] && (ziWChar)(topNode->charAttr & 0xFFFF) != textIn[dawgCtx->stackLen - 1])
                goto POP_UNTIL_SIBLING;

            if (topNode->unk_0x8 != textIn[dawgCtx->stackLen - 1]) {
                topNode->unk_0x8 = textIn[dawgCtx->stackLen - 1];
                topNode->unk_0xC = nodeStack->node;
                nodeStack[dawgCtx->stackLen].unk_0x8 = 0;
            }
            if (lenOut != ZI8_NULL && *lenOut < dawgCtx->stackLen) {
                if (ZiDAWGgetEOWattribute(topNode->node)) {
                    *lenOut = (ziU8)dawgCtx->stackLen;
                    for (i = 0; i < dawgCtx->stackLen; i++) {
                        textOut[i] = (ziWChar)(nodeStack[i].charAttr & 0xFFFF);
                    }
                }
            }

            if (dawgCtx->stackLen < inLen) {
                goto EXTEND_CHILD;
            }
        }

        if (dawgCtx->stackLen >= param_13[1]) {
            if (param_13[0] == 0 || dawgCtx->stackLen <= param_13[1]) {
                if (param_10 != 0 || ZiDAWGgetEOWattribute(topNode->node)) {
                    for (i = 0; i < dawgCtx->stackLen; i++) {
                        textOut[i] = (ziWChar)(nodeStack[i].charAttr & 0xFFFF);
                    }
                    size = dawgCtx->stackLen;
                    noneFoundYet = ZI8_FALSE;
                    if (param_10 != 0)
                        goto POP_UNTIL_SIBLING;
                }
                if (param_13[0] == 0 || dawgCtx->stackLen < param_13[1])
                    goto EXTEND_CHILD;
            }
            goto POP_UNTIL_SIBLING;
        }

    EXTEND_CHILD:
        nodeStack[dawgCtx->stackLen].node = ZiDAWGGetChild(nodeStack[dawgCtx->stackLen - 1].node);
        if (nodeStack[dawgCtx->stackLen].node == (ziU8*)ZI8_NULL)
            goto POP_UNTIL_SIBLING;
        dawgCtx->stackLen++;
        if (ZI_WORK->deepestSearched < dawgCtx->stackLen) {
            ZI_WORK->deepestSearched = (ziU8)dawgCtx->stackLen;
        }
        goto CONTINUE;

    POP_UNTIL_SIBLING:
        while (dawgCtx->stackLen != 0) {
            nodeStack[dawgCtx->stackLen - 1].node = ZiDAWGGetSibling(nodeStack[dawgCtx->stackLen - 1].node);
            if (nodeStack[dawgCtx->stackLen - 1].node != (ziU8*)ZI8_NULL)
                break;
            dawgCtx->stackLen--;
        }

    CONTINUE:
        topNode = &nodeStack[dawgCtx->stackLen - 1];
    }

RETURN:
    return size;
}

ziU8* NextDawgGroup(ziU8* groupData, ziU8 language ZI_NEED_WORK) {
    if (Zi8GetTableSize(language, 0x1C, ZI_WORK) != 0) {
        if (groupData == ZI8_NULL) {
            groupData = (ziU8*)Zi8GetTableAddress(language, 0x1C, ZI_WORK);
            if (groupData == ZI8_NULL) {
                Zi8LogError(0x962, ZI_WORK);
                return ZI8_NULL;
            }
            if (ZI_WORK->unk_0x141D == '\0') {
                return groupData;
            }
        }
        while (groupData[0] != 0xFF || groupData[1] != 0xFF) {
            groupData++;
        }

        groupData += 2;
        if (groupData[0] == 0xFF) {
            Zi8LogError(0x963, ZI_WORK);
            return ZI8_NULL;
        }
        return groupData;
    } else {
        Zi8LogError(0x961, ZI_WORK);
        return ZI8_NULL;
    }
}

ziU8 Zi8MatchROMdata1(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziU8 param_6, ziBool cont, ziU8 graphIdx,
                      ziU8* dawgGroupData, ziU8 param_10 ZI_NEED_WORK) {
    ziU8 matchResult;
    ziU8* groupDataAddr;

    matchResult = 0;
    if (cont == 0) {
        ZI_WORK->dawgGroups = dawgGroupData;
        if (ZI_WORK->dawgGroups == ZI8_NULL && Zi8GetTableSize(lang, 0x0B, ZI_WORK) != 0) {
            ZI_WORK->dawgGroups = (groupDataAddr = (ziU8*)Zi8GetTableAddress(lang, 0x0B, ZI_WORK));
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
        matchResult = Zi8MatchROMdata0(textIn, inLen, lang, textOut, outLen, param_6, cont, 0, 1, param_10, ZI8_NULL, &ZI_WORK->dawgCtx,
                                       ZI_WORK->unk_0x1760, ZI_WORK);
    } else {
        while (*ZI_WORK->dawgGroups != 0xFF) {
            matchResult = Zi8MatchROMdata0(textIn, inLen, lang, textOut, outLen, param_6, cont, ZI_WORK->dawgGroups[0], ZI_WORK->dawgGroups[1],
                                           param_10, ZI8_NULL, &ZI_WORK->dawgCtx, ZI_WORK->unk_0x1760, ZI_WORK);
            if (matchResult != 0)
                break;
            ZI_WORK->dawgGroups += 2;
            cont = 0;
        }
    }
    return matchResult;
}

ziU8 Zi8MatchROMdata2(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziU16* textOut, ziU16 outLen, ziU8 param_6, ziBool cont, ziU8 param_8,
                      ziU8* dawgGroupData, ziU8 param_10 ZI_NEED_WORK) {
    ziU8 i;
    ziU8 matchLen;

    matchLen = 0;
    if (param_8 != 0) {
        return 0;
    }

    if (!cont) {
        ZI_WORK->graphIdx = 0;
        ZI_WORK->unk_0x17EA = 0;
        if (dawgGroupData != ZI8_NULL && dawgGroupData[0] == 0xC && lang == ZI8_LANG_FI && ZI_WORK->unk_0x141C != 0) {
            ZI_WORK->unk_0x141E = 0x10;
        } else {
            ZI_WORK->unk_0x141E = 0;
        }
    }

    while (1) {
    CONTINUE_SEARCHING:
        ZI_WORK->deepestSearched = 1;
        matchLen = Zi8MatchROMdata1(textIn + ZI_WORK->unk_0x17EA, inLen - ZI_WORK->unk_0x17EA, lang, ZI_WORK->predBuf + ZI_WORK->unk_0x17EA, outLen,
                                    param_6, cont, ZI_WORK->graphIdx, dawgGroupData, param_10, ZI_WORK);
        if (matchLen != 0) {
            for (i = ZI_WORK->unk_0x17EA + matchLen; i != 0; i--) {
                textOut[i - 1] = ZI_WORK->predBuf[i - 1];
            }
            matchLen = matchLen + ZI_WORK->unk_0x17EA;
            break;
        }

        if (cont)
            break;
        if (inLen == 1)
            break;

        if (param_6 == 1 && ZI_WORK->graphIdx == 0) {
            if (Zi8MatchROMdata1(textIn + ZI_WORK->unk_0x17EA, inLen - ZI_WORK->unk_0x17EA, lang, ZI_WORK->predBuf + ZI_WORK->unk_0x17EA, outLen, 0,
                                 cont, ZI_WORK->graphIdx, dawgGroupData, param_10, ZI_WORK) != 0) {
                goto RETURN;
            }
        }
        if ((GET_DICT_CONFIG(lang, ZI_WORK) & 4) == 0) {
            for (i = 0; i < inLen; i++) {
                if (textIn[i] == PAD_KEY(1)) {
                    goto RETURN;
                }
            }
        }

        if (ZI_WORK->deepestSearched > outLen)
            break;

        i = ZI_WORK->deepestSearched;
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
            cont = ZI8_FALSE;
            ZI_WORK->unk_0x141E = 0;
            if ((ZI_WORK->dawgCtx).graphDataTable == 0 && lang == ZI8_LANG_FI) {
                for (i = 0; i < ZI_WORK->unk_0x17EA; i++) {
                    switch (ZI_WORK->predBuf[i]) {
                        case L'a':
                        case L'o':
                        case L'u':
                            ZI_WORK->unk_0x141E = 0x10;
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

ziU8 Zi8MatchROMdata(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziU8 param_6, ziBool cont, ziU8 param_8,
                     ziU8 param_9 ZI_NEED_WORK) {
    ziU32 dawgGroupTableSize;
    ziU8 matchLen;

    matchLen = 0;
    dawgGroupTableSize = 0;
    if (outLen < inLen) {
        Zi8LogError(0x321, ZI_WORK);
    } else if (cont == 2) {
        Zi8LogError(0x64, ZI_WORK);
    } else {
        if (!cont) {
            ZI_WORK->unk_0x17EC = 0;
            ZI_WORK->dawgGroupData = NextDawgGroup(ZI8_NULL, lang, ZI_WORK);
        } else if (ZI_WORK->unk_0x17EC != 0) {
            Zi8LogError(0x64, ZI_WORK);
            goto RETURN;
        }
        dawgGroupTableSize = Zi8GetTableSize(lang, 0x1C, ZI_WORK);
        if (dawgGroupTableSize == 0) {
            matchLen = Zi8MatchROMdata2(textIn, inLen, lang, textOut, outLen, param_6, cont, param_8, ZI8_NULL, param_9, ZI_WORK);
        } else {
            while (ZI_WORK->dawgGroupData != ZI8_NULL) {
                matchLen = Zi8MatchROMdata2(textIn, inLen, lang, textOut, outLen, param_6, cont, param_8, ZI_WORK->dawgGroupData, param_9, ZI_WORK);
                if (matchLen != 0)
                    break;
                cont = ZI8_FALSE;
                if (inLen <= 1 && lang == ZI8_LANG_SW)
                    break;
                ZI_WORK->dawgGroupData = NextDawgGroup(ZI_WORK->dawgGroupData, lang, ZI_WORK);
            }
        }
        if (matchLen == 0 && !cont && param_6 == 1 && inLen == 1 && outLen >= 1) {
            param_6 = 0;
            ZI_WORK->unk_0x17EC = 1;
            if (dawgGroupTableSize != 0) {
                ZI_WORK->dawgGroupData = NextDawgGroup(ZI8_NULL, lang, ZI_WORK);
                while (ZI_WORK->dawgGroupData != ZI8_NULL) {
                    if (Zi8MatchROMdata2(textIn, inLen, lang, textOut, outLen, param_6, cont, param_8, ZI_WORK->dawgGroupData, param_9, ZI_WORK) !=
                        0) {
                        *textOut = *textIn;
                        matchLen = 1;
                        break;
                    }
                    ZI_WORK->dawgGroupData = NextDawgGroup(ZI_WORK->dawgGroupData, lang, ZI_WORK);
                }
            } else {
                if (Zi8MatchROMdata2(textIn, inLen, lang, textOut, outLen, param_6, cont, param_8, ZI8_NULL, param_9, ZI_WORK) != 0) {
                    *textOut = *textIn;
                    matchLen = 1;
                }
            }
        }
        Zi8LogError(0x64, ZI_WORK);
    }
RETURN:
    return matchLen;
}

ziU8 Zi8SyllablesROMdata(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziBool cont, ziU8* lenOut,
                         ziBool useAlt ZI_NEED_WORK) {
    ziU8 infoTab;
    ziU8 dataTab;

    dataTab = 0x1A;
    infoTab = 0x1B;
    if (lenOut != ZI8_NULL) {
        *lenOut = 0;
    }
    if (useAlt) {
        dataTab = 0x18;
        infoTab = 0x19;
    }
    if (Zi8GetTableSize(lang, dataTab, ZI_WORK) == 0) {
        if (dataTab == 0x1A) {
            dataTab = 0x18;
            infoTab = 0x19;
        } else {
            dataTab = 0x1A;
            infoTab = 0x1B;
        }
    }
    return Zi8MatchROMdata0(textIn, inLen, lang, textOut, outLen, 1, cont, dataTab, infoTab, 0, lenOut, &ZI_WORK->dawgCtx, ZI_WORK->unk_0x1760,
                            ZI_WORK);
}
