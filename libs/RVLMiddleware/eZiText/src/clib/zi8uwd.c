#include <zi8clib/zi8uwd.h>

#include <zi8clib/zconvert.h>
#include <zi8clib/zi8getc2.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>
#include <zi8clib/zmtkey.h>

ziBool Zi8UWDPush(ziU8* nodeData ZI_NEED_WORK) {
    ziU8 nodeLen;
    ziUWDStackEntry* pzVar3;
    ziU8 i;
    ziUWDStackEntry* newNode;
    ziU8* pvVar4;
    ziUWDStackEntry* curr;

    nodeData;

    if (ZI_WORK->uwdTopIdx >= 0x20) {
        Zi8LogError(ZI8_ERR_UWD_STACK_OVERFLOW, ZI_WORK);
        return ZI8_FALSE;
    }
    if (nodeData == ZI8_NULL) {
        Zi8LogError(ZI8_ERR_UWD_NODE_NULL, ZI_WORK);
        return ZI8_FALSE;
    }

    nodeLen = nodeData[2];
    if (nodeLen == 0) {
        Zi8LogError(ZI8_ERR_UWD_NODE_EMPTY, ZI_WORK);
        return ZI8_FALSE;
    }

    if (nodeLen > 0x3F) {
        Zi8LogError(ZI8_ERR_UWD_NODE_TOO_LONG, ZI_WORK);
        return ZI8_FALSE;
    }

    pzVar3 = ZI8_NULL;
    curr = ZI_WORK->uwdTop;
    while (curr != ZI8_NULL) {
        pvVar4 = curr->value;
        if (ZI_WORK->unk_0x12E == 1 && nodeData[3] > pvVar4[3])
            break;
        if (pvVar4[2] == nodeLen) {
            for (i = 0; i < nodeLen; i++) {
                if (pvVar4[i + 4] != nodeData[i + 4])
                    break;
            }
            if (i == nodeLen) {
                Zi8LogError(ZI8_ERR_OK, ZI_WORK);
                return ZI8_FALSE;
            }
        }
        pzVar3 = curr;
        curr = curr->prev;
    }
    newNode = ZI_WORK->uwdStack + ZI_WORK->uwdTopIdx++;
    if (pzVar3 == ZI8_NULL) {
        ZI_WORK->uwdTop = newNode;
        newNode->prev = curr;
    } else {
        pzVar3->prev = newNode;
        newNode->prev = curr;
    }

    newNode->value = nodeData;
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return ZI8_TRUE;
}

ziU8* Zi8UWDPop(ziPtr __zi8_work_data) {
    ziU8* stackVal;

    if (ZI_WORK->uwdTopIdx != 0) {
        ZI_WORK->uwdTopIdx--;
        stackVal = ZI_WORK->uwdTop->value;
        ZI_WORK->uwdTop = ZI_WORK->uwdTop->prev;
        Zi8LogError(ZI8_ERR_OK, ZI_WORK);
        return stackVal;
    } else {
        Zi8LogError(ZI8_ERR_UWD_STACK_UNDERFLOW, ZI_WORK);
        return ZI8_NULL;
    }
}

void Zi8UWDClearStack(ziPtr __zi8_work_data) {
    Zi8Memset(ZI_WORK->uwdStack, 0, sizeof(ZI_WORK->uwdStack));
    ZI_WORK->uwdTopIdx = 0;
    ZI_WORK->uwdTop = ZI8_NULL;
}

#define PTR_CMP(A, CMP, B) ((ziU32)(A)CMP(ziU32)(B))
#define PTR_LT(A, B) PTR_CMP(A, <, B)
#define PTR_GT(A, B) PTR_CMP(A, >, B)
#define PTR_LTE(A, B) PTR_CMP(A, <=, B)
#define PTR_GTE(A, B) PTR_CMP(A, >=, B)
#define PTR_EQ(A, B) PTR_CMP(A, ==, B)
#define PTR_NEQ(A, B) PTR_CMP(A, !=, B)

#define PTR_DIFF(A, B) ((ziU32)(A) - (ziU32)(B))

ziU8 Zi8MatchUWDdata(ziWChar* elements, ziU8 elCount, ziWChar* currWord, ziU16 wordLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziBool param_8,
                     ziU8 matchState ZI_NEED_WORK) {
    ziU8* nodeData;
    ziS32 i, j;

    ziWChar currWc;

    ziUWDData* uwdData;
    ziU8* currNode;
    ziU8* baseNode;
    ziU8* leftEnd;
    ziU8* rightEnd;
    ziU8* currNodeData;

    ziS32 isLeft;
    ziU32 currNodeSize;

    ziU32 nodeSize;
    ziS32 nodeLang;
    ziS32 nodeLen;
    ziU32 charsOffs;
    ziS32 local_70;
    ziU32 unkFlag;

    local_70 = 0;
    unkFlag = 0;
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    if (ZI_WORK->uwdDataIdx > 2 || ZI_WORK->uwdDataIdx == 0 || ZI_WORK->uwdDataPtrs[ZI_WORK->uwdDataIdx - 1] == ZI8_NULL) {
        Zi8ReplaceLastError(ZI8_ERR_UWD_NO_DATA, ZI_WORK);
        return 0;
    }

    uwdData = ZI_WORK->uwdDataPtrs[ZI_WORK->uwdDataIdx - 1];
    if (matchState != ZI8_MATCH_STATE_BEGIN) {
        nodeData = Zi8UWDPop(ZI_WORK);
        nodeLen = 0;
        if (nodeData != ZI8_NULL) {
            lang = nodeData[1];
            nodeLen = nodeData[2];
            if (nodeLen >= outLen) {
                Zi8UWDClearStack(ZI_WORK);
                return 0;
            }
            nodeData += 4;
            for (i = 0; i < nodeLen; i++) {
                textOut[i] = Zi8ConvertUC2WC(nodeData[i], lang, ZI_WORK);
            }
        }
        return nodeLen;
    }
    Zi8UWDClearStack(ZI_WORK);
    ZI_WORK->uwdSkipOffset = 0;
    if (currWord == ZI8_NULL || wordLen == 0 || currWord[wordLen - 1] != L' ') {
        ZI_WORK->uwdMatchCurrentWord = ZI8_FALSE;
    } else {
        j = 0;
        i = wordLen - 2;
        while (i >= 0) {
            if (currWord[i] == L' ')
                break;
            i--;
            j++;
        }
        i++;

        if (j == 0 || j > 0x3F) {
            ZI_WORK->uwdMatchCurrentWord = ZI8_FALSE;
        } else {
            ZI_WORK->uwdMatchCurrentWord = ZI8_TRUE;
            ZI_WORK->uwdWordNode[j + 4] = ZI_WORK->uwdWordNode[0] = j + 5;
            ZI_WORK->uwdWordNode[1] = lang;
            ZI_WORK->uwdWordNode[2] = j;
            charsOffs = 4;
            while (j > 0) {
                currWc = currWord[i];
                ZI_WORK->uwdWordNode[charsOffs] = Zi8ConvertWC2UC(currWc, lang, ZI_WORK);
                ZI_WORK->uwdWordCINode[charsOffs] = '\0';
                if (ZI_WORK->caseInsensitive) {
                    if (!Zi8ChangeCharCase(ZI8_TRUE, &currWc, lang, ZI_WORK)) {
                        Zi8ChangeCharCase(ZI8_FALSE, &currWc, lang, ZI_WORK);
                    }
                    ZI_WORK->uwdWordCINode[charsOffs] = Zi8ConvertWC2UC(currWc, lang, ZI_WORK);
                }
                if (ZI_WORK->uwdWordNode[charsOffs++] == '\0') {
                    ZI_WORK->uwdMatchCurrentWord = ZI8_FALSE;
                    break;
                }
                j--;
                i++;
            }
        }
    }
    if (!ZI_WORK->uwdMatchCurrentWord && elCount == 0) {
        return 0;
    }

    do {
        currNode = baseNode = uwdData->data + uwdData->baseOffset;
        leftEnd = uwdData->data + uwdData->leftEndOffset - 1;
        rightEnd = uwdData->data + uwdData->rightEndOffset - 1;

        if (baseNode < leftEnd) {
            isLeft = ZI8_TRUE;
        } else {
            isLeft = ZI8_FALSE;
        }
        while ((currNode < leftEnd && isLeft) || (currNode < rightEnd && !isLeft)) {
            currNodeSize = currNode[0];
            if (ZI_WORK->uwdSkipOffset > local_70++ || (currNode[0] & 0xC0) != 0) {
            ADVANCE_NODE:
                if ((currNode += currNodeSize) > rightEnd) {
                    if (isLeft != 0)
                        break;
                    isLeft = 1;
                    currNodeSize = currNode - rightEnd - 1;
                    currNode = uwdData->data + currNodeSize;
                }
                continue;
            }

            currNodeData = currNode + currNodeSize;
            if (currNodeData > rightEnd) {
                currNodeData = uwdData->data + (currNode - rightEnd - 1);
            }
            nodeData = currNode;
            nodeSize = *nodeData++;
            nodeLang = *nodeData++;
            nodeLen = *nodeData++;
            nodeData++;
            if (nodeLang != lang || nodeLen < elCount || nodeLen >= outLen || (param_8 && nodeLen != elCount) || (!param_8 && nodeLen == elCount)) {
                goto ADVANCE_NODE;
            }

            // Compare the node characters
            // If they don't match, advance and continue
            for (i = 0; i < elCount; i++) {
                if (PAD_KEY(1) <= elements[i] && elements[i] <= PAD_KEY(32)) {
                    if (elements[i] != Zi8ConvertUC2Key(nodeData[i], lang, ZI_WORK))
                        goto ADVANCE_NODE;
                    continue;
                }

                currWc = Zi8ConvertUC2WC(nodeData[i], lang, ZI_WORK);
                if (currWc == elements[i])
                    continue;

                if (!ZI_WORK->caseInsensitive || !Zi8ChangeCharCase(ZI8_FALSE, &currWc, lang, ZI_WORK) || currWc != elements[i])
                    goto ADVANCE_NODE;
            }
            if (ZI_WORK->uwdMatchCurrentWord) {
                if (ZI_WORK->uwdWordNode[0] != currNodeData[0] || ZI_WORK->uwdWordNode[1] != currNodeData[1] ||
                    ZI_WORK->uwdWordNode[2] != currNodeData[2])
                    goto ADVANCE_NODE;

                j = 4;
                i = ZI_WORK->uwdWordNode[2] + 4;
                for (; j < i; j++) {
                    if (ZI_WORK->uwdWordNode[j] != currNodeData[j] && ZI_WORK->uwdWordCINode[j] != currNodeData[j])
                        goto ADVANCE_NODE;
                }
            }
            Zi8UWDPush(currNode, ZI_WORK);
            goto ADVANCE_NODE;
        }
        if (ZI_WORK->uwdMatchCurrentWord && elCount != 0) {
            ZI_WORK->uwdMatchCurrentWord = ZI8_FALSE;
            local_70 = 0;
        } else if (elCount == 1 && param_8 && matchState == ZI8_MATCH_STATE_BEGIN) {
            param_8 = ZI8_FALSE;
            unkFlag = 1;
            local_70 = 0;
        } else {
            break;
        }
    } while (1);

    nodeData = (ziU8*)Zi8UWDPop(ZI_WORK);
    if (nodeData != ZI8_NULL) {
        lang = nodeData[1];
        nodeLen = nodeData[2];
        if (nodeLen >= outLen) {
            Zi8UWDClearStack(ZI_WORK);
            return 0;
        } else {
            nodeData += 4;
            for (i = 0; i < nodeLen; i++) {
                textOut[i] = Zi8ConvertUC2WC(nodeData[i], lang, ZI_WORK);
            }
            return nodeLen;
        }
    } else {
        return 0;
    }
}
