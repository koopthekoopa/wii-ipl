#include <zi8clib/zidawg1.h>

#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>

#define NODE_HAS_CHILD(VAL) ((VAL & DAWG_HAS_CHILD_FLAG) != 0)
#define NODE_CHILD_EXPLICIT(VAL) ((VAL & DAWG_CHILD_EXPLICIT_FLAG) != 0)
#define NODE_HAS_SIBLING(VAL) ((VAL & DAWG_HAS_SIBLING_FLAG) != 0)
#define NODE_SIBLING_EXPLICIT(VAL) ((VAL & DAWG_SIBLING_EXPLICIT_FLAG) != 0)
#define NODE_IS_EOW(VAL) ((VAL & DAWG_IS_EOW_FLAG) > 0)

ziU8* ZiDAWGGetChild(ziU8* currNode) {
    ziU32 offset;
    ziU16 headerTableVal;

    ziU8* baseNode = currNode;

    headerTableVal = (ziU16)nodeHeaderTable[*currNode >> 4];
    if (!NODE_HAS_CHILD(headerTableVal)) {
        return ZI8_NULL;
    }

    // Skip over the CHAR attribute
    if ((*currNode & 0xF) == 0xF) {
        offset = 2;
    } else {
        offset = 1;
    }
    currNode += offset;

    if (NODE_CHILD_EXPLICIT(headerTableVal)) {
        if ((*currNode & 0x80) != 0) {
            offset = ((ziU16)currNode[1] << 0x08) + currNode[2] + ((currNode[0] & 0x7F) << 0x10) + 0x8000;
        } else {
            offset = ((ziU16)currNode[0] << 8) + currNode[1];
        }
    } else {
        // An explicit sibling offset comes before the implicit child
        if (NODE_SIBLING_EXPLICIT(headerTableVal)) {
            if ((*currNode & 0x80) != 0) {
                offset += 3;
            } else {
                offset += 2;
            }
        }
    }
    return baseNode + offset;
}

ziU8* ZiDAWGGetSibling(ziU8* currNode) {
    ziU8* baseNode;
    ziU16 headerTableVal;
    ziU32 offset;
    ziS32 depth;

    depth = 0;
    baseNode = currNode;
    offset = 0;
    headerTableVal = (ziU16)nodeHeaderTable[*currNode >> 4];
    if (!NODE_HAS_SIBLING(headerTableVal)) {
        return ZI8_NULL;
    }

    if (NODE_SIBLING_EXPLICIT(headerTableVal)) {
        // Skip over the CHAR attribute
        if ((*currNode & 0xF) == 0xF) {
            currNode += 2;
        } else {
            currNode += 1;
        }

        // An explicit child offset comes before the explicit sibling offset
        if (NODE_CHILD_EXPLICIT(headerTableVal)) {
            if ((*currNode & 0x80) != 0) {
                currNode += 3;
            } else {
                currNode += 2;
            }
        }

        if ((*currNode & 0x80) != 0) {
            baseNode += (((ziU16)currNode[1] << 0x08) + currNode[2]) + ((currNode[0] & 0x7F) << 0x10) + 0x8000;
        } else {
            baseNode += ((ziU16)currNode[0] << 8) + currNode[1];
        }
        return baseNode;
    } else {
        do {
            headerTableVal = (ziU16)nodeHeaderTable[*currNode >> 4];

            // Skip over the CHAR attribute
            if ((*currNode & 0xF) == 0xF) {
                currNode += 2;
                offset += 2;
            } else {
                currNode += 1;
                offset += 1;
            }

            if (NODE_HAS_CHILD(headerTableVal)) {
                if (NODE_CHILD_EXPLICIT(headerTableVal)) {
                    // Step over the child offset
                    if ((*currNode & 0x80) != 0) {
                        currNode += 3;
                        offset += 3;
                    } else {
                        currNode += 2;
                        offset += 2;
                    }
                } else {
                    // Step INTO the child.
                    // Because an implicit child comes before an implicit
                    // sibling, we assume we've stepped into it (there's a way
                    // to short-circuit it if the sibling is explicit later)
                    depth++;
                }
            }
            // If there's no next sibling we can go back up to the end of the
            // parent and short-circuit
            if (!NODE_HAS_SIBLING(headerTableVal)) {
                depth--;
                continue;
            }

            // If there's an explicit sibling, we can step directly over it. If
            // there was an implicit child, that's already handled by
            // incrementing the depth, and if there isn't, then we'll be back up
            // at the end of the parent
            if (NODE_SIBLING_EXPLICIT(headerTableVal)) {
                if ((*currNode & 0x80) != 0) {
                    currNode += 3;
                    offset += 3;
                } else {
                    currNode += 2;
                    offset += 2;
                }
                depth--;
            }
        } while (depth > 0);
        return baseNode + offset;
    }
}
ziBool ZiDAWGgetEOWattribute(ziU8* currNode) {
    return NODE_IS_EOW(nodeHeaderTable[*currNode >> 4]);
}

ziU32 ZiDAWGgetCHARattribute(ziDAWGCtx* ctx, ziU8* node ZI_NEED_WORK) {
    ziU8 chrIdx;
    ziU32 attrib;

    ctx;

    if ((node[0] & 0xF) == 0xF) {
        chrIdx = node[1] + 0xF;
    } else {
        chrIdx = node[0] & 0xF;
    }

    if (chrIdx > ctx->chrCount) {
        Zi8LogError(0x138B, ZI_WORK);
        return 0;
    }

    attrib = chrIdx << 0x18;
    attrib |= ctx->uchars[chrIdx] << 0x10;
    attrib |= ((ziU16)ctx->wchars[chrIdx].hi << 0x08) + ctx->wchars[chrIdx].lo;
    Zi8LogError(0x64, ZI_WORK);
    return attrib;
}

ziU8* ZiDAWGGetGraph(ziDAWGCtx* ctx) {
    return ctx->graphData + 4 + (((ziU16)ctx->graphData[2] << 8) + ctx->graphData[3]);
}

ziU8* ZiDAWGGetGraphInfo(ziDAWGCtx* ctx, ziDAWGGraphInfo* currNode, ziU16* keys) {
    ziU8* ptrOut;
    ziU8 depth;
    ziDAWGGraphInfo* childrenEnd;
    ziU8* graphBase;

    graphBase = (ziU8*)ZiDAWGGetGraph(ctx);
    ptrOut = ZI8_NULL;
    if (GET_DAWG_GRAPH_INFO_SIBLING_OFF(currNode) != 0 || GET_DAWG_GRAPH_INFO_CHAR(currNode) != 0) {
        return ZI8_NULL;
    }
    childrenEnd = currNode + (GET_DAWG_GRAPH_INFO_BASE_COUNT(currNode) + 1);
    currNode++;
    depth = 0;
    while (depth < 2 && *keys != 0) {
        if (PAD_KEY(1) <= *keys && *keys <= PAD_KEY(32)) {
            while (currNode < childrenEnd && *keys != GET_DAWG_GRAPH_INFO_CHAR(currNode)) {
                if (*keys == GET_DAWG_GRAPH_INFO_CHAR(currNode))
                    break;

                // I couldn't get it to match any other way :(
                currNode = (ziDAWGGraphInfo*)(GET_DAWG_GRAPH_INFO_SIBLING_OFF(currNode) * sizeof(ziDAWGGraphInfo) + sizeof(ziDAWGGraphInfo) +
                                              (ziU8*)currNode);
            }
        } else {
            return ZI8_NULL;
        }
        if (currNode >= childrenEnd) {
            return ZI8_NULL;
        }

        ptrOut = (((ziU16)currNode->ptrAMid << 0x08) + currNode->ptrALo) + ((currNode->ptrAHi << 0x10) + graphBase);
        ctx->unk_0x338 = (((ziU16)currNode->ptrBMid << 0x08) + currNode->ptrBLo) + ((currNode->ptrBHi << 0x10) + graphBase);
        if (ctx->unk_0x338 == graphBase) {
            ctx->unk_0x338 = ZI8_NULL;
        }
        if (GET_DAWG_GRAPH_INFO_SIBLING_OFF(currNode) == 0) {
            break;
        }
        childrenEnd = currNode + 1 + GET_DAWG_GRAPH_INFO_SIBLING_OFF(currNode);
        currNode++;
        depth++;
        keys++;
    }
    return ptrOut;
}
