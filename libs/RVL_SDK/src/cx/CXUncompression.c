#include <private/cx.h>
#include <revolution/cx.h>

u32 CXGetUncompressedSize(const void* src) {
    u32 size = CXiConvertEndian32_(IN_BUFFER_AT(u32, src, 0)) >> 8;
    if (!size) {
        size = CXiConvertEndian32_(IN_BUFFER_AT(u32, src, 4));
    }

    return size;
}

void CXUncompressLZ(const void* src, void* dst) {
    const u8* pSrc = src;
    u8* pDst = dst;

    u32 size = CXiConvertEndian32_(IN_BUFFER_AT(u32, pSrc, 0)) >> 8;
    BOOL stat = (IN_BUFFER_AT(u8, pSrc, 0) & 0x0F) ? TRUE : FALSE;
    pSrc += sizeof(u32);

    if (!size) {
        size = CXiConvertEndian32_(IN_BUFFER_AT(u32, pSrc, 0));
        pSrc += sizeof(u32);
    }

    while (size) {
        u32 i;
        u32 flags =* pSrc++;

        for (i = 0; i < 8; ++i) {
            if (!(flags & 0x80)) {
                *pDst++ =* pSrc++;
                size--;
            }
            else {
                s32 length =* pSrc >> 4;
                s32 offset;

                if (!stat) {
                    length += 3;
                }
                else {
                    if (length == 0x01) {
                        length = (*pSrc++ & 0x0F) << 12;
                        length |=* pSrc++ << 4;
                        length |=* pSrc >> 4;
                        length += 0x111;
                    }
                    else if (length == 0x00) {
                        length = (*pSrc++ & 0x0F) << 4;
                        length |=* pSrc >> 4;
                        length += 0x11;
                    }
                    else {
                        length += 0x01;
                    }
                }

                offset = (*pSrc++ & 0x0F) << 8;
                offset = (offset |* pSrc++) + 1;

                if (length > size) {
                    length = size;
                }

                size -= length;

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
                    ++pDst;
#endif
                } while (--length > 0);
            }

            if (!size) {
                break;
            }

            flags <<= 1;
        }
    }
}
