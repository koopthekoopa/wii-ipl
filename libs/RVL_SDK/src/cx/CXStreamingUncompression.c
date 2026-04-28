#include <private/cx.h>
#include <revolution/cx.h>

static inline int CXiReadHeader(u8*, int*, const u8*, int, int);
static inline CXHuffmanDecodeTableEntry* GetNextNode(CXHuffmanDecodeTableEntry*, int);

void CXInitUncompContextRL(CXUncompContextRL* context, u8* param_2) {
    context->unk_0x00 = param_2;
    context->unk_0x04 = 0;
    context->unk_0x0e = 0;
    context->unk_0x0c = 0;
    context->unk_0x0f = 8;
    context->unk_0x08 = 0;
}

void CXInitUncompContextLZ(CXUncompContextLZ* context, u8* param_2) {
    context->unk_0x00 = param_2;
    context->unk_0x04 = 0;
    context->unk_0x11 = 0;
    context->unk_0x12 = 0;
    context->unk_0x0c = 0;
    context->unk_0x10 = 3;
    context->unk_0x13 = 8;
    context->unk_0x14 = 0;
    context->unk_0x08 = 0;
}

void CXInitUncompContextHuffman(CXUncompContextHuffman* context, u8* data) {
    context->outData = (u32*)data;
    context->outDataLen = 0;
    context->depth = 0;
    context->decodeTableSize = -1;
    context->decodeTable = context->decodeTableData;
    context->unk_0x14 = 0;
    context->unk_0x1b = 0;
    context->bits = 0;
    context->bitsLeft = 0;
    context->hdrLen = 8;
    context->unk_0x08 = 0;
}

CXStreamingResult CXReadUncompRL(CXUncompContextRL* context, const void* src, u32 size) {
    const u8* pSrc = src;

    if (context->unk_0x0f) {
        int a;
        if (context->unk_0x0f == 8) {
            if ((*pSrc & CX_COMPRESSION_TYPE_MASK) != CX_COMPRESSION_TYPE_RUN_LENGTH) {
                return CX_STREAMING_ERR_BAD_FILE_TYPE;
            }

            if ((*pSrc & 0x0F) != 0) {
                return CX_STREAMING_ERR_BAD_FILE_TYPE;
            }
        }

        a = CXiReadHeader(&context->unk_0x0f, &context->unk_0x04, pSrc, size, context->unk_0x08);

        pSrc += a;
        size -= a;

        if (!size) {
            return !context->unk_0x0f ? context->unk_0x04 : CX_STREAMING_ERR_BAD_FILE_TYPE;
        }
    }

    while (context->unk_0x04 > 0) {
        if (!(context->unk_0x0e & 0x80)) {
            while (context->unk_0x0c) {
                *context->unk_0x00++ = *pSrc++;

                context->unk_0x0c--;
                context->unk_0x04--;
                size--;

                if (!size) {
                    return context->unk_0x04;
                }
            }
        } else if (context->unk_0x0c) {
            u8 b = *pSrc++;
            size--;

            while (context->unk_0x0c) {
                *context->unk_0x00++ = b;

                context->unk_0x0c--;
                context->unk_0x04--;
            }

            if (!size) {
                return context->unk_0x04;
            }
        }

        context->unk_0x0e = *pSrc++;
        size--;
        context->unk_0x0c = context->unk_0x0e & 0x7f;

        if (context->unk_0x0e & 0x80) {
            context->unk_0x0c += 3;
        } else {
            context->unk_0x0c += 1;
        }

        if (context->unk_0x0c > context->unk_0x04) {
            if (!context->unk_0x08) {
                return CX_STREAMING_ERR_BAD_FILE_SIZE;
            }

            context->unk_0x0c = context->unk_0x04;
        }

        if (size) {
            continue;
        }

        return context->unk_0x04;
    }

    if (!context->unk_0x08 && size > 32) {
        return CX_STREAMING_ERR_BUFFER_TOO_LARGE;
    }

    return CX_STREAMING_ERR_OK;
}

static int CXiReadHeader(u8* pHdrLen, int* pOutLen, const u8* pSrc, int srcSize, int param_5) {
    int bytesParsed = 0;

    while (*pHdrLen) {
        (*pHdrLen)--;

        if (*pHdrLen <= 3) {
            *pOutLen |= *pSrc << ((3 - *pHdrLen) << 3);
        } else if (*pHdrLen <= 6) {
            *pOutLen |= *pSrc << ((6 - *pHdrLen) << 3);
        }

        pSrc++;
        bytesParsed++;

        if (*pHdrLen == 4 && *pOutLen > 0) {
            *pHdrLen = 0;
        }

        srcSize--;
        if (srcSize == 0 && *pHdrLen != 0) {
            return bytesParsed;
        }
    }

    if (param_5 > 0 && param_5 < *pOutLen) {
        *pOutLen = param_5;
    }

    return bytesParsed;
}

CXStreamingResult CXReadUncompLZ(CXUncompContextLZ* context, const void* src, u32 size) {
    const u8* pSrc = src;

    if (context->unk_0x13) {
        int a;
        if (context->unk_0x13 == 8) {
            if ((*pSrc & CX_COMPRESSION_TYPE_MASK) != CX_COMPRESSION_TYPE_LZ) {
                return CX_STREAMING_ERR_BAD_FILE_TYPE;
            }

            context->unk_0x14 = *pSrc & 0x0F;

            if (context->unk_0x14 != 0 && context->unk_0x14 != 1) {
                return CX_STREAMING_ERR_BAD_FILE_TYPE;
            }
        }

        a = CXiReadHeader(&context->unk_0x13, &context->unk_0x04, pSrc, size, context->unk_0x08);

        pSrc += a;
        size -= a;

        if (!size) {
            return !context->unk_0x13 ? context->unk_0x04 : CX_STREAMING_ERR_BAD_FILE_TYPE;
        }
    }

    while (context->unk_0x04 > 0) {
        while (context->unk_0x12) {
            s32 a;

            if (!size) {
                return context->unk_0x04;
            }

            if (!(context->unk_0x11 & 0x80)) {
                *context->unk_0x00++ = *pSrc++;
                context->unk_0x04--;

                size--;

                goto there;
            }

            while (context->unk_0x10) {
                context->unk_0x10--;

                if (!context->unk_0x14) {
                    context->unk_0x0c = *pSrc++;
                    context->unk_0x0c += 0x30;
                    context->unk_0x10 = 0;
                } else {
                    switch (context->unk_0x10) {
                        case 2: {
                            context->unk_0x0c = *pSrc++;

                            if (context->unk_0x0c >> 4 == 1) {
                                context->unk_0x0c = (context->unk_0x0c & 0x0F) << 16;
                                context->unk_0x0c += 0x1110;
                            } else if (context->unk_0x0c >> 4 == 0) {
                                context->unk_0x0c = (context->unk_0x0c & 0x0F) << 8;
                                context->unk_0x0c += 0x110;
                                context->unk_0x10 = 1;
                            } else {
                                context->unk_0x0c += 0x10;
                                context->unk_0x10 = 0;
                            }

                            break;
                        }
                        case 1: {
                            context->unk_0x0c += *pSrc++ << 8;
                            break;
                        }
                        case 0: {
                            context->unk_0x0c += *pSrc++;
                            break;
                        }
                    }
                }

                size--;
                if (!size) {
                    return context->unk_0x04;
                }
            }

            a = (context->unk_0x0c & 0x0F) << 8;
            context->unk_0x0c >>= 4;

            a = (a | *pSrc++) + 1;
            size--;
            context->unk_0x10 = 3;

            if (context->unk_0x0c > context->unk_0x04) {
                if (!context->unk_0x08) {
                    return CX_STREAMING_ERR_BAD_FILE_SIZE;
                }

                context->unk_0x0c = context->unk_0x04;
            }

            while (context->unk_0x0c > 0) {
                *context->unk_0x00 = context->unk_0x00[-a];
                context->unk_0x00++;
                context->unk_0x04--;
                context->unk_0x0c--;
            }

        there:
            if (!context->unk_0x04) {
                goto out;
            }

            context->unk_0x11 <<= 1;
            context->unk_0x12--;
        }

        if (!size) {
            return context->unk_0x04;
        }

        context->unk_0x11 = *pSrc++;
        context->unk_0x12 = 8;
        size--;
    }

out:
    if (!context->unk_0x08 && size > 32)
        return CX_STREAMING_ERR_BUFFER_TOO_LARGE;

    return CX_STREAMING_ERR_OK;
}

CXStreamingResult CXReadUncompHuffman(CXUncompContextHuffman* context, const void* src, u32 size) {
    const u8* pSrc = src;

    if (context->hdrLen) {
        int a;
        if (context->hdrLen == 8) {
            context->depth = *pSrc & 0x0F;

            if ((*pSrc & CX_COMPRESSION_TYPE_MASK) != CX_COMPRESSION_TYPE_HUFFMAN) {
                return CX_STREAMING_ERR_BAD_FILE_TYPE;
            }

            if (context->depth != 4 && context->depth != 8) {
                return CX_STREAMING_ERR_BAD_FILE_TYPE;
            }
        }

        a = CXiReadHeader(&context->hdrLen, &context->outDataLen, pSrc, size, context->unk_0x08);

        pSrc += a;
        size -= a;

        if (!size) {
            return !context->hdrLen ? context->outDataLen : CX_STREAMING_ERR_BAD_FILE_TYPE;
        }
    }

    if (context->decodeTableSize < 0) {
        context->decodeTableSize = ((*pSrc + 1) << 1) - 1;
        (context->decodeTable++)->raw = *pSrc++;
        size--;
    }

    while (context->decodeTableSize > 0) {
        if (!size) {
            return context->outDataLen;
        }

        (context->decodeTable++)->raw = *pSrc++;
        context->decodeTableSize--;
        size--;

        if (context->decodeTableSize) {
            continue;
        }

        // Done copying decodeTable
        context->decodeTable = context->decodeTableData + 1;

        if (!CXiVerifyHuffmanTable_(context->decodeTableData, context->depth)) {
            return CX_STREAMING_ERR_BAD_FILE_TABLE;
        }
    }

    while (context->outDataLen > 0) {
        while (context->bitsLeft < 32) {
            if (!size) {
                return context->outDataLen;
            }

            context->bits |= *pSrc++ << context->bitsLeft;

            size--;
            context->bitsLeft += 8;
        }

        while (context->bitsLeft) {
            BOOL currBit = context->bits >> 31;
            int c = (*(vu8*)context->decodeTable << currBit) & 0x80;  // ?

            context->decodeTable = GetNextNode((CXHuffmanDecodeTableEntry*)context->decodeTable, currBit);
            context->bits <<= 1;
            context->bitsLeft--;

            if (!c) {
                continue;
            }

            context->unk_0x14 >>= context->depth;
            context->unk_0x14 |= context->decodeTable->raw << (32 - context->depth);
            context->decodeTable = context->decodeTableData + 1;
            context->unk_0x1b += context->depth;

            if (context->unk_0x1b == 32) {
                *context->outData = CXiConvertEndian32_(context->unk_0x14);
                context->outData++;
                context->outDataLen -= 4;
                context->unk_0x1b = 0;

                if (context->outDataLen <= 0) {
                    goto out;
                }
            }

            (void)currBit;
        }
    }

out:
    if (!context->unk_0x08 && size > 32) {
        return CX_STREAMING_ERR_BUFFER_TOO_LARGE;
    }

    return CX_STREAMING_ERR_OK;
}

static CXHuffmanDecodeTableEntry* GetNextNode(CXHuffmanDecodeTableEntry* pDecodeTable, BOOL currBit) {
    return (CXHuffmanDecodeTableEntry*)ROUNDDOWN((u32)pDecodeTable, 2) + (((*pDecodeTable).idxOffset + 1) << 1) + currBit;
}
