#include <private/cx.h>
#include <revolution/cx.h>

static inline int   CXiReadHeader(u8*, int*, const u8*, int, int);
static inline u8*   GetNextNode(u8*, int);

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

void CXInitUncompContextHuffman(CXUncompContextHuffman* context, int* param_2) {
    context->unk_0x00 = param_2;
    context->unk_0x04 = 0;
    context->unk_0x1c = 0;
    context->unk_0x18 = -1;
    context->unk_0x0c = context->unk_0x20;
    context->unk_0x14 = 0;
    context->unk_0x1b = 0;
    context->unk_0x10 = 0;
    context->unk_0x1a = 0;
    context->unk_0x1d = 8;
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
                *context->unk_0x00++ =* pSrc++;

                context->unk_0x0c--;
                context->unk_0x04--;
                size--;

                if (!size) {
                    return context->unk_0x04;
                }
            }
        }
        else if (context->unk_0x0c) {
            u8 b =* pSrc++;
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

        context->unk_0x0e =* pSrc++;
        size--;
        context->unk_0x0c = context->unk_0x0e & 0x7f;

        if (context->unk_0x0e & 0x80) {
            context->unk_0x0c += 3;
        }
        else {
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

static int CXiReadHeader(u8* param_1, int* param_2, const u8* param_3, int param_4, int param_5) {
    int a = 0;

    while (*param_1) {
        (*param_1)--;

        if (*param_1 <= 3) {
            *param_2 |=* param_3 << ((3 -* param_1) << 3);
        }
        else if (*param_1 <= 6) {
            *param_2 |=* param_3 << ((6 -* param_1) << 3);
        }

        param_3++;
        a++;

        if (*param_1 == 4 &&* param_2 > 0) {
            *param_1 = 0;
        }

        param_4--;
        if (param_4 == 0 &&* param_1 != 0) {
            return a;
        }
    }

    if (param_5 > 0 && param_5 <* param_2) {
        *param_2 = param_5;
    }

    return a;
}

CXStreamingResult CXReadUncompLZ(CXUncompContextLZ* context, const void* src, u32 size) {
    const u8* pSrc = src;

    if (context->unk_0x13) {
        int a;
        if (context->unk_0x13 == 8) {
            if ((*pSrc & CX_COMPRESSION_TYPE_MASK) != CX_COMPRESSION_TYPE_LZ) {
                return CX_STREAMING_ERR_BAD_FILE_TYPE;
            }

            context->unk_0x14 =* pSrc & 0x0F;

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
                *context->unk_0x00++ =* pSrc++;
                context->unk_0x04--;

                size--;

                goto there;
            }

            while (context->unk_0x10) {
                context->unk_0x10--;

                if (!context->unk_0x14) {
                    context->unk_0x0c =* pSrc++;
                    context->unk_0x0c += 0x30;
                    context->unk_0x10 = 0;
                }
                else {
                    switch (context->unk_0x10) {
                        case 2: {
                            context->unk_0x0c =* pSrc++;

                            if (context->unk_0x0c >> 4 == 1) {
                                context->unk_0x0c = (context->unk_0x0c & 0x0F) << 16;
                                context->unk_0x0c += 0x1110;
                            }
                            else if (context->unk_0x0c >> 4 == 0) {
                                context->unk_0x0c = (context->unk_0x0c & 0x0F) << 8;
                                context->unk_0x0c += 0x110;
                                context->unk_0x10 = 1;
                            }
                            else {
                                context->unk_0x0c += 0x10;
                                context->unk_0x10 = 0;
                            }

                            break;
                        }
                        case 1: {
                            context->unk_0x0c +=* pSrc++ << 8;
                            break;
                        }
                        case 0: {
                            context->unk_0x0c +=* pSrc++;
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

            a = (a |* pSrc++) + 1;
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

        context->unk_0x11 =* pSrc++;
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

    if (context->unk_0x1d) {
        int a;
        if (context->unk_0x1d == 8) {
            context->unk_0x1c =* pSrc & 0x0F;

            if ((*pSrc & CX_COMPRESSION_TYPE_MASK) != CX_COMPRESSION_TYPE_HUFFMAN) {
                return CX_STREAMING_ERR_BAD_FILE_TYPE;
            }

            if (context->unk_0x1c != 4 && context->unk_0x1c != 8) {
                return CX_STREAMING_ERR_BAD_FILE_TYPE;
            }
        }

        a = CXiReadHeader(&context->unk_0x1d, &context->unk_0x04, pSrc, size, context->unk_0x08);

        pSrc += a;
        size -= a;

        if (!size) {
            return !context->unk_0x1d ? context->unk_0x04 : CX_STREAMING_ERR_BAD_FILE_TYPE;
        }
    }

    if (context->unk_0x18 < 0) {
        context->unk_0x18 = ((*pSrc + 1) << 1) - 1;
        *context->unk_0x0c++ =* pSrc++;
        size--;
    }

    while (context->unk_0x18 > 0) {
        if (!size) {
            return context->unk_0x04;
        }

        *context->unk_0x0c++ =* pSrc++;
        context->unk_0x18--;
        size--;

        if (context->unk_0x18) {
            continue;
        }

        context->unk_0x0c = context->unk_0x20 + 1;

        if (!CXiVerifyHuffmanTable_(context->unk_0x20, context->unk_0x1c)) {
            return CX_STREAMING_ERR_BAD_FILE_TABLE;
        }
    }

    while (context->unk_0x04 > 0) {
        while (context->unk_0x1a < 32) {
            if (!size) {
                return context->unk_0x04;
            }

            context->unk_0x10 |=* pSrc++ << context->unk_0x1a;

            size--;
            context->unk_0x1a += 8;
        }

        while (context->unk_0x1a) {
            int b = context->unk_0x10 >> 31;
            int c = (*(vu8*)context->unk_0x0c << b) & 0x80; // ?

            context->unk_0x0c = GetNextNode(context->unk_0x0c, b);
            context->unk_0x10 <<= 1;
            context->unk_0x1a--;

            if (!c) {
                continue;
            }

            context->unk_0x14 >>= context->unk_0x1c;
            context->unk_0x14 |=* context->unk_0x0c << (32 - context->unk_0x1c);
            context->unk_0x0c = context->unk_0x20 + 1;
            context->unk_0x1b += context->unk_0x1c;

            if (context->unk_0x1b == 32) {
                *context->unk_0x00 = CXiConvertEndian32_(context->unk_0x14);
                context->unk_0x00++;
                context->unk_0x04 -= 4;
                context->unk_0x1b = 0;

                if (context->unk_0x04 <= 0) {
                    goto out;
                }
            }

            (void)b;
        }
    }

out:
    if (!context->unk_0x08 && size > 32) {
        return CX_STREAMING_ERR_BUFFER_TOO_LARGE;
    }

    return CX_STREAMING_ERR_OK;
}

static u8* GetNextNode(u8* param_1, int param_2) {
    return (u8*)ROUNDDOWN((u32)param_1, 2) + (((*param_1 & 0x3f) + 1) << 1) + param_2;
}
