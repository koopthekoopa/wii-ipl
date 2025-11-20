#include <private/cx.h>
#include <revolution/cx.h>

CXSecureResult CXSecureUncompressRL(const void* src, u32 length, void* dst) {
    const u8* pSrc = src;
    u8* pDst = dst;

    u8 secstat = CXiConvertEndian32_(IN_BUFFER_AT(u32, pSrc, 0));

    u32 size = CXiConvertEndian32_(IN_BUFFER_AT(u32, pSrc, 0)) >> 8;
    s32 remainingLength = length;

    if ((secstat & CX_COMPRESSION_TYPE_MASK) != CX_COMPRESSION_TYPE_RUN_LENGTH) {
        return CX_SECURE_ERR_BAD_FILE_TYPE;
    }

    if ((secstat & 0x0F) != 0) {
        return CX_SECURE_ERR_BAD_FILE_TYPE;
    }

    if (length <= 4) {
        return CX_SECURE_ERR_BUFFER_TOO_SMALL;
    }

    pSrc += sizeof(u32);
    remainingLength -= sizeof(u32);

    if (!size) {
        if (remainingLength < 4) {
            return CX_SECURE_ERR_BUFFER_TOO_SMALL;
        }

        size = CXiConvertEndian32_(IN_BUFFER_AT(u32, pSrc, 0));
        pSrc += sizeof(u32);
        remainingLength -= sizeof(u32);
    }

    while (size) {
        u8 byte = *pSrc++;

        s32 runLength = byte & 0x7f;

        remainingLength--;
        if (remainingLength < 0) {
            return CX_SECURE_ERR_BUFFER_TOO_SMALL;
        }

        if (!(byte & 0x80)) {
            runLength += 1;

            if (runLength > size) {
                return CX_SECURE_ERR_BAD_FILE_SIZE;
            }

            remainingLength -= runLength;
            if (remainingLength < 0) {
                return CX_SECURE_ERR_BUFFER_TOO_SMALL;
            }

            size -= runLength;

            do
                *pDst++ = *pSrc++;
            while (--runLength > 0);
        }
        else {
            u8 byte;
            runLength += 3;

            if (runLength > size) {
                return CX_SECURE_ERR_BAD_FILE_SIZE;
            }

            size -= runLength;
            byte = *pSrc++;

            remainingLength -= 1;
            if (remainingLength < 0) {
                return CX_SECURE_ERR_BUFFER_TOO_SMALL;
            }

            do {
                *pDst++ = byte;
            } while (--runLength > 0);
        }
    }

    if (remainingLength > 32) {
        return CX_SECURE_ERR_BUFFER_TOO_LARGE;
    }

    (void)pSrc;
    (void)pSrc;

    return CX_SECURE_ERR_OK;
}

CXSecureResult CXSecureUncompressLZ(const void* src, u32 length, void* dst) {
    const u8* pSrc = src;
    u8* pDst = dst;

    u8 secstat = CXiConvertEndian32_(IN_BUFFER_AT(u32, pSrc, 0)) & 0xFF;
    u32 size = CXiConvertEndian32_(IN_BUFFER_AT(u32, pSrc, 0)) >> 8;
    s32 remainingLength = length;

    BOOL stat = (IN_BUFFER_AT(u8, pSrc, 0) & 0x0F) ? TRUE : FALSE;

    if ((secstat & CX_COMPRESSION_TYPE_MASK) != CX_COMPRESSION_TYPE_LEMPEL_ZIV) {
        return CX_SECURE_ERR_BAD_FILE_TYPE;
    }

    if ((secstat & 0x0F) != 0 && (secstat & 0x0F) != 1) {
        return CX_SECURE_ERR_BAD_FILE_TYPE;
    }

    if (length <= 4) {
        return CX_SECURE_ERR_BUFFER_TOO_SMALL;
    }

    pSrc += sizeof(u32);
    remainingLength -= sizeof(u32);

    if (!size) {
        if (remainingLength < 4) {
            return CX_SECURE_ERR_BUFFER_TOO_SMALL;
        }

        size = CXiConvertEndian32_(IN_BUFFER_AT(u32, pSrc, 0));
        pSrc += sizeof(u32);
        remainingLength -= sizeof(u32);
    }

    while (size) {
        u32 i;
        u32 flags = *pSrc++;
        remainingLength--;
        if (remainingLength < 0) {
            return CX_SECURE_ERR_BUFFER_TOO_SMALL;
        }
        for (i = 0; i < 8; i++) {
            if (!(flags & 0x80)) {
                *pDst++ = *pSrc++;

                remainingLength--;
                if (remainingLength < 0) {
                    return CX_SECURE_ERR_BUFFER_TOO_SMALL;
                }

                size--;
            }
            else {
                s32 length2 = *pSrc >> 4;
                s32 offset;

                if (!stat) {
                    length2 += 3;
                }
                else {
                    if (length2 == 0x01) {
                        length2 = (*pSrc++ & 0x0F) << 12;
                        length2 |= *pSrc++ << 4;
                        length2 |= *pSrc >> 4;
                        length2 += 0x111;

                        remainingLength -= 2;
                    }
                    else if (length2 == 0x00) {
                        length2 = (*pSrc++ & 0x0F) << 4;
                        length2 |= *pSrc >> 4;
                        length2 += 0x11;

                        remainingLength -= 1;
                    }
                    else {
                        length2 += 0x01;
                    }
                }

                offset = (*pSrc++ & 0x0F) << 8;
                offset = (offset | *pSrc++) + 1;

                remainingLength -= 2;
                if (remainingLength < 0) {
                    return CX_SECURE_ERR_BUFFER_TOO_SMALL;
                }

                if (length2 > size) {
                    return CX_SECURE_ERR_BAD_FILE_SIZE;
                }

                if ((u32)&pDst[-offset] < (u32)dst) {
                    return CX_SECURE_ERR_BAD_FILE_SIZE;
                }

                size -= length2;

                do {
#if defined(__MWERKS__)
                    // ERRATUM: Unsequenced modification and access to pDst
                    /* Here, the compiler has decided to evaluate the left hand
                     * side pDst first, then the right hand side pDst, then the
                     * side effect of the post-increment on the left hand side
                     * pDst.
                     */
                    *pDst++ = pDst[-offset];
#else
                    // equivalent defined version
                    *pDst = pDst[-offset];
                    pDst++;
#endif
                } while (--length2 > 0);
            }

            if (!size) {
                break;
            }

            flags <<= 1;
        }
    }

    if (remainingLength > 32) {
        return CX_SECURE_ERR_BUFFER_TOO_LARGE;
    }

    return CX_SECURE_ERR_OK;
}

BOOL CXiVerifyHuffmanTable_(const void* param_1, u8 param_2)
{
    const u8* a = param_1;
    const u8* b = a + 1;
    u32 c = *a;
    const u8* d = (u8*)param_1 + ((c + 1) << 1);

    u8 e[sizeof(u8) * 0x40];
    u32 i;
    for (i = 0; i < ARRSIZE(e); i++) {
        e[i] = 0;
    }

    if (param_2 == 4 && c >= 16) {
        return FALSE;
    }

    {
        u32 f = 1;

        for (a = b; a < d; f++, a++) {
            int g, h;
            if (e[f / 8] & (1 << (f % 8))) {
                continue;
            }

            g = ((*a & 0x3f) + 1) << 1;
            h = ((u32)a >> 1 << 1) + g;

            if (*a == 0x00 && f >= c << 1) {
                continue;
            }

            if ((u32)h >= (u32)d) {
                return FALSE;
            }

            if (*a & 0x80) {
                u32 j = (f & ~1) + g;
                e[j / 8] |= (u8)(1 << (j % 8));
            }

            if (*a & 0x40) {
                u32 k = (f & ~1) + g + 1;
                e[k / 8] |= (u8)(1 << (k % 8));
            }
        }
    }

    return TRUE;
}

CXSecureResult CXSecureUncompressHuffman(const void* src, u32 length, void* dst) {
    const u8* pSrc = src;
    const u8* pDst = dst;

    u8 secstat = CXiConvertEndian32_(IN_BUFFER_AT(const u32, pSrc, 0)) & 0xFF;
    s32 size = CXiConvertEndian32_(IN_BUFFER_AT(u32, pSrc, 0)) >> 8;

    const u8* base = size ? pSrc + 4 : pSrc + 8;
    const u8* basep1 = base + 1;

    u32 stat = IN_BUFFER_AT(u8, pSrc, 0) & 0x0F;
    u32 b = 0;
    u32 c = 0;
    int d = (stat & 7) + 4;
    s32 remainingLength = length;
    u32 e = (*base + 1) << 1;

    if ((secstat & CX_COMPRESSION_TYPE_MASK) != CX_COMPRESSION_TYPE_HUFFMAN) {
        return CX_SECURE_ERR_BAD_FILE_TYPE;
    }

    if (stat != 4 && stat != 8) {
        return CX_SECURE_ERR_BAD_FILE_TYPE;
    }

    if (!size) {
        if (length < e + 8) {
            return CX_SECURE_ERR_BUFFER_TOO_SMALL;
        }

        size = CXiConvertEndian32_(IN_BUFFER_AT(u32, pSrc, 4));
    }
    else {
        if (length < e + 4) {
            return CX_SECURE_ERR_BUFFER_TOO_SMALL;
        }
    }

    if (!CXiVerifyHuffmanTable_(base, stat)) {
        return CX_SECURE_ERR_BAD_FILE_TABLE;
    }

    pSrc = base + e;
    remainingLength -= (u32)pSrc - (u32)src;

    if (remainingLength < 0) {
        return CX_SECURE_ERR_BUFFER_TOO_SMALL;
    }

    base = basep1;

    while (size > 0) {
        int i = 32;

        u32 f;
#if defined(__MWERKS__)
        // NOTE: assignment to lvalue cast is a CW extension
        f = CXiConvertEndian32_(*((u32*)(pSrc))++);
#else
        f = CXiConvertEndian32_(IN_BUFFER_AT(u32, pSrc, 0));
        pSrc += sizeof(u32);
#endif

        remainingLength -= sizeof(u32);
        if (remainingLength < 0) {
            return CX_SECURE_ERR_BUFFER_TOO_SMALL;
        }

        while (--i >= 0) {
            int g = f >> 31;
            int h = *base;
            h <<= g;

            // ok
            base = (const u8*)((((u32)(base) >> 1) << 1) + (((*base & 0x3f) + 1) << 1) + g);

            if (h & 0x80) {
                b >>= stat;
                b |= *base << (32 - stat);
                base = basep1;

                c++;

                if (size <= c * stat >> 3) {
                    b >>= stat * (d - c);
                    c = d;
                }

                if (c == d) {
#if defined(__MWERKS__)
                    // NOTE: assignment to lvalue cast is a CW extension
                    *((u32*)(pDst))++ = CXiConvertEndian32_(b);
#else
                    *(u32*)pDst = CXiConvertEndian32_(b);
                    pDst += sizeof(u32);
#endif
                    size -= sizeof(u32);
                    c = 0;
                }
            }

            if (size <= 0) {
                break;
            }

            f <<= 1;
        }
    }

    if (remainingLength > 32)
        return CX_SECURE_ERR_BUFFER_TOO_LARGE;

    return CX_SECURE_ERR_OK;
}
