#include <zi8clib/zi8uwd.h>

#include <zi8clib/zconvert.h>
#include <zi8clib/zi8getc2.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>
#include <zi8clib/zmtkey.h>

ziBool Zi8UWDPush(ziUWDNodeData* nodeData ZI_NEED_WORK) {
    ziU8 nodeLen;
    ziListNodeA* pzVar3;
    ziU8 i;
    ziListNodeA* newNode;
    ziUWDNodeData* pvVar4;
    ziListNodeA* curr;

    nodeData;

    if (ZI_WORK->uwdTopIdx >= 0x20) {
        Zi8LogError(413, ZI_WORK);
        return ZI8_FALSE;
    }
    if (nodeData == 0) {
        Zi8LogError(415, ZI_WORK);
        return ZI8_FALSE;
    }

    nodeLen = nodeData->len;
    if (nodeLen == 0) {
        Zi8LogError(403, ZI_WORK);
        return ZI8_FALSE;
    }

    if (nodeLen > 0x3F) {
        Zi8LogError(404, ZI_WORK);
        return ZI8_FALSE;
    }

    pzVar3 = ZI8_NULL;
    curr = ZI_WORK->uwdTop;
    while (curr != ZI8_NULL) {
        pvVar4 = curr->value;
        if (ZI_WORK->unk_0x12E == 1 && nodeData->unk_0x3 > pvVar4->unk_0x3)
            break;
        if (pvVar4->len == nodeLen) {
            for (i = 0; i < nodeLen; i++) {
                if (pvVar4->asBytes[i + 4] != nodeData->asBytes[i + 4])
                    break;
            }
            if (i == nodeLen) {
                Zi8LogError(100, ZI_WORK);
                return ZI8_FALSE;
            }
        }
        pzVar3 = curr;
        curr = curr->prev;
    }
    newNode = ZI_WORK->unk_0x1C8 + ZI_WORK->uwdTopIdx++;
    if (pzVar3 == ZI8_NULL) {
        ZI_WORK->uwdTop = newNode;
        newNode->prev = curr;
    } else {
        pzVar3->prev = newNode;
        newNode->prev = curr;
    }

    newNode->value = nodeData;
    Zi8LogError(100, ZI_WORK);
    return ZI8_TRUE;
}

ziUWDNodeData* Zi8UWDPop(ziPtr __zi8_work_data) {
    ziUWDNodeData* stackVal;

    if (ZI_WORK->uwdTopIdx != 0) {
        ZI_WORK->uwdTopIdx--;
        stackVal = ZI_WORK->uwdTop->value;
        ZI_WORK->uwdTop = ZI_WORK->uwdTop->prev;
        Zi8LogError(100, ZI_WORK);
        return stackVal;
    } else {
        Zi8LogError(414, ZI_WORK);
        return ZI8_NULL;
    }
}

void Zi8UWDClearStack(ziPtr __zi8_work_data) {
    Zi8Memset(ZI_WORK->unk_0x1C8, 0, sizeof(ZI_WORK->unk_0x1C8));
    ZI_WORK->uwdTopIdx = 0;
    ZI_WORK->uwdTop = ZI8_NULL;
}

typedef struct {
    ziU16 unk_0x0;         // 0x0
    ziU16 rightEndOffset;  // 0x2
    ziU16 baseOffset;      // 0x4
    ziU16 leftEndOffset;   // 0x6
    ziU8 data[];           // 0x8
} ziUnkStructB;

#define PTR_CMP(A, CMP, B) ((ziU32)(A)CMP(ziU32)(B))
#define PTR_LT(A, B) PTR_CMP(A, <, B)
#define PTR_GT(A, B) PTR_CMP(A, >, B)
#define PTR_LTE(A, B) PTR_CMP(A, <=, B)
#define PTR_GTE(A, B) PTR_CMP(A, >=, B)
#define PTR_EQ(A, B) PTR_CMP(A, ==, B)
#define PTR_NEQ(A, B) PTR_CMP(A, !=, B)

#define PTR_DIFF(A, B) ((ziU32)(A) - (ziU32)(B))

ziU8 Zi8MatchUWDdata(ziWChar* textIn, ziU8 inLen, ziWChar* textB, ziU16 bLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziBool param_8,
                     ziU8 param_9 ZI_NEED_WORK) {
    ziU8* nodeData;
    ziS32 i, j;

    ziWChar currWc;

    ziUnkStructB* uwdData;
    ziU8* currNode;
    ziU8* baseNode;
    ziU8* leftEnd;
    ziU8* rightEnd;
    ziUWDNodeData* currNodeData;

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
    Zi8LogError(100, ZI_WORK);
    if (ZI_WORK->unk_0x138 > 2 || ZI_WORK->unk_0x138 == 0 || ZI_WORK->unk_0x130[ZI_WORK->unk_0x138 - 1] == ZI8_NULL) {
        Zi8ReplaceLastError(412, ZI_WORK);
        return 0;
    }

    uwdData = (ziUnkStructB*)ZI_WORK->unk_0x130[ZI_WORK->unk_0x138 - 1];
    if (param_9 != 0) {
        nodeData = (ziU8*)Zi8UWDPop(ZI_WORK);
        nodeLen = 0;
        if (nodeData != ZI8_NULL) {
            lang = nodeData[1];
            nodeLen = nodeData[2];
            if (nodeLen >= outLen) {
                Zi8UWDClearStack(ZI_WORK);
                return 0;
            }
            nodeData += 4;
            for (i = 0; i < (int)nodeLen; i++) {
                textOut[i] = Zi8ConvertUC2WC(nodeData[i], lang, ZI_WORK);
            }
        }
        return nodeLen;
    }
    Zi8UWDClearStack(ZI_WORK);
    ZI_WORK->unk_0x13C = 0;
    if (textB == ZI8_NULL || bLen == 0 || textB[bLen - 1] != L' ') {
        ZI_WORK->unk_0x140 = ZI8_FALSE;
    } else {
        j = 0;
        i = bLen - 2;
        while (i >= 0) {
            if (textB[i] == L' ')
                break;
            i--;
            j++;
        }
        i++;

        if (j == 0 || j > 0x3F) {
            ZI_WORK->unk_0x140 = ZI8_FALSE;
        } else {
            ZI_WORK->unk_0x140 = ZI8_TRUE;
            ZI_WORK->uwdChars.asBytes[j + 4] = ZI_WORK->uwdChars.totalSize = j + 5;
            ZI_WORK->uwdChars.lang = lang;
            ZI_WORK->uwdChars.len = j;
            charsOffs = 4;
            for (; j > 0;) {
                currWc = textB[i];
                ZI_WORK->uwdChars.asBytes[charsOffs] = Zi8ConvertWC2UC(currWc, lang, ZI_WORK);
                ZI_WORK->uwdCaseChars.asBytes[charsOffs] = '\0';
                if (ZI_WORK->caseInsensitive) {
                    if (!Zi8ChangeCharCase(ZI8_TRUE, &currWc, lang, ZI_WORK)) {
                        Zi8ChangeCharCase(ZI8_FALSE, &currWc, lang, ZI_WORK);
                    }
                    ZI_WORK->uwdCaseChars.asBytes[charsOffs] = Zi8ConvertWC2UC(currWc, lang, ZI_WORK);
                }
                if (ZI_WORK->uwdChars.asBytes[charsOffs++] == '\0') {
                    ZI_WORK->unk_0x140 = ZI8_FALSE;
                    break;
                }
                j--;
                i++;
            }
        }
    }
    if (!ZI_WORK->unk_0x140 && inLen == 0) {
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
            if (ZI_WORK->unk_0x13C > local_70++ || (currNode[0] & 0xC0) != 0) {
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

            currNodeData = (ziUWDNodeData*)(currNode + currNodeSize);
            if ((ziU8*)currNodeData > rightEnd) {
                currNodeData = (ziUWDNodeData*)(uwdData->data + (currNode - rightEnd - 1));
            }
            nodeData = currNode;
            nodeSize = *nodeData++;
            nodeLang = *nodeData++;
            nodeLen = *nodeData++;
            nodeData++;
            if (nodeLang != lang || nodeLen < inLen || nodeLen >= outLen || (param_8 && nodeLen != inLen) || (!param_8 && nodeLen == inLen)) {
                goto ADVANCE_NODE;
            }

            // Compare the node characters to textIn
            // If they don't match, advance and continue
            for (i = 0; i < inLen; i++) {
                if (PAD_KEY(1) <= textIn[i] && textIn[i] <= PAD_KEY(32)) {
                    if (textIn[i] != Zi8ConvertUC2Key(nodeData[i], lang, ZI_WORK))
                        goto ADVANCE_NODE;
                    continue;
                }

                currWc = Zi8ConvertUC2WC(nodeData[i], lang, ZI_WORK);
                if (currWc == textIn[i])
                    continue;

                if (!ZI_WORK->caseInsensitive || !Zi8ChangeCharCase(ZI8_FALSE, &currWc, lang, ZI_WORK) || currWc != textIn[i])
                    goto ADVANCE_NODE;
            }
            if (ZI_WORK->unk_0x140) {
                if (ZI_WORK->uwdChars.totalSize != currNodeData->totalSize || ZI_WORK->uwdChars.lang != currNodeData->lang ||
                    ZI_WORK->uwdChars.len != currNodeData->len)
                    goto ADVANCE_NODE;

                j = 4;
                i = ZI_WORK->uwdChars.len + 4;
                for (; j < i; j++) {
                    if (ZI_WORK->uwdChars.asBytes[j] != currNodeData->asBytes[j] && ZI_WORK->uwdCaseChars.asBytes[j] != currNodeData->asBytes[j])
                        goto ADVANCE_NODE;
                }
            }
            Zi8UWDPush((ziUWDNodeData*)currNode, ZI_WORK);
            goto ADVANCE_NODE;
        }
        if (ZI_WORK->unk_0x140 && inLen != 0) {
            ZI_WORK->unk_0x140 = ZI8_FALSE;
            local_70 = 0;
            continue;
        } else if (inLen == 1 && param_8 && param_9 == 0) {
            param_8 = ZI8_FALSE;
            unkFlag = 1;
            local_70 = 0;
            continue;
        }
        break;
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
