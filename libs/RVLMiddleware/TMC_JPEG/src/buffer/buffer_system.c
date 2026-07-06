#include <tmc_jpeg_internal.h>

static s32 TMCJPEG_814EAF50(TMCJpegDecWork* work);
static s32 TMCJPEG_814EB108(TMCJpegDecWork* work);

s32 TMCJPEGDEC_init_ptr_buff(TMCJpegDecWork* work, void* param) {
    u32 readSize;
    u8* dest;
    u8* newEnd;
    u8* bufOrg;
    u32 newRemaining;

    if (((u32*)param)[0] & 0x1F) return -1;
    if (((u32*)param)[1] & 0x1F) return -1;
    if (((u32*)param)[2] == 0) return -1;
    if (((u32*)param)[1] < 0x10040) return -1;

    work->mpBufOrg = (u8*)((u32*)param)[0];
    dest = work->mpBufOrg + 0x20;
    work->mBufLen = ((u32*)param)[1] - 0x20;
    readSize = ((u32*)param)[2];
    work->mRemaining = readSize;
    work->mpCallback = (void*)((u32*)param)[3];
    work->mpCbCtx = (void*)((u32*)param)[4];
    if (work->mBufLen - 0x20 < readSize) readSize = work->mBufLen - 0x20;

    if (work->mpCallback(work->mpCbCtx, dest, readSize) < 0)
        return TMCC_ERROR_USER_CALLBACK;

    newEnd = dest + readSize;
    bufOrg = work->mpBufOrg;
    newRemaining = work->mRemaining - readSize;

    work->mpBufCur = dest;
    work->mRemaining = newRemaining;
    work->mpBufStart = bufOrg;
    work->mpBufEnd = newEnd;
    work->mpBufMark = newEnd - 0x22;
    return 0;
}

s32 TMCJPEGDEC_get_byte(u8* dst, TMCJpegDecWork* work) {
    u8* cur;
    u8 byte;

    if (work->mpBufCur >= work->mpBufEnd) {
        if (work->mRemaining != 0) {
            s32 r = TMCJPEG_814EB108(work);
            if (r < 0)
                return r;
        } else {
            return TMCC_ERROR_UNDERFLOW;
        }
    }

    cur = work->mpBufCur;
    byte = *cur; cur++;
    *dst = byte;
    work->mpBufCur = cur;

    if (cur >= work->mpBufEnd) {
        if (work->mRemaining != 0) {
            s32 r = TMCJPEG_814EB108(work);
            if (r < 0)
                return r;
        } else {
            return TMCC_ERROR_UNDERFLOW;
        }
    }

    return 0;
}

s32 TMCJPEGDEC_get_wbyte(u16* dst, TMCJpegDecWork* work) {
    u8 byte_val;
    u32 byte_shifted;
    s32 r;

    u8* cur;
    u8* end;
    u8* next;

    if (work->mpBufCur >= work->mpBufEnd) {
        if (work->mRemaining != 0) {
            r = TMCJPEG_814EB108(work);
            if (r < 0)
                goto br;
            else {
                // This else-branch is load-bearing...
                // Forces bge instead of blt.
            }
        } else {
            r = TMCC_ERROR_UNDERFLOW;
            goto br;
        }
    }

    {
        u8* tmp = work->mpBufCur;
        end = work->mpBufEnd;
        cur = tmp;
        next = tmp + 1;
    }

    work->mpBufCur = next;
    byte_val = *cur;
    if (next < end) goto o1;

    if (work->mRemaining != 0) {
        r = TMCJPEG_814EB108(work);
        if (r >= 0) {
            goto o1;
        }
        goto br;
    }
    else {
        r = TMCC_ERROR_UNDERFLOW;
        goto br;
    }

o1:
    r = 0;

br:
    byte_shifted = (u32)byte_val << 8;
    if (r >= 0) goto p2;
    return r;

p2:
    if (work->mpBufCur < work->mpBufEnd) goto r2;
    if (work->mRemaining != 0) {
        r = TMCJPEG_814EB108(work);
        if (r < 0)
            goto ez;
        else {
            // ...
        }
    }
    else {
        r = TMCC_ERROR_UNDERFLOW;
        goto ez;
    }

r2:
    cur = work->mpBufCur;
    end = work->mpBufEnd;
    next = cur + 1;
    work->mpBufCur = next;
    byte_val = *cur;
    if (next < end) goto o2;

    if (work->mRemaining != 0) {
        r = TMCJPEG_814EB108(work);
        if (r < 0)
            goto ez;
        else {
            // ...
        }
    }
    else {
        r = TMCC_ERROR_UNDERFLOW;
        goto ez;
    }

o2:
    r = 0;
ez:
    *dst = byte_shifted + byte_val;
    return r < 0 ? r : 0;
}

s32 TMCJPEGDEC_get_sbyte(u8* dst, u32 count, TMCJpegDecWork* work) {
    int r = 0;
    u32 i;
    u8 byte;
    u8* cur;

    for (i = 0; i < count; i++) {
        if (work->mpBufCur >= work->mpBufEnd) {
            if (work->mRemaining != 0) {
                r = TMCJPEG_814EB108(work);
                if (r < 0)
                    goto copy_byte;
                else {
                    // This else-branch is load-bearing...
                    // Forces bge instead of blt.
                }
            } else {
                r = TMCC_ERROR_UNDERFLOW;
                goto copy_byte;
            }
        }

        cur = work->mpBufCur;
        work->mpBufCur += 1;
        byte = *cur;

        if (work->mpBufCur < work->mpBufEnd) goto r0;
        if (work->mRemaining != 0) {
            r = TMCJPEG_814EB108(work);
            if (r >= 0) {
                goto r0;
            }
            goto copy_byte;
        }
        else {
            r = TMCC_ERROR_UNDERFLOW;
            goto copy_byte;
        }

        r0:
        r = 0;

        copy_byte:
        *dst = byte;
        dst++;

        if (r < 0)
            return r;
    }
    return 0;
}

s32 TMCJPEGDEC_move_ptr(s32 offset, TMCJpegDecWork* work) {
    s32 avail;

    if (offset < 0) goto ng;
    goto lc;

lp:
    offset -= avail;
    if (work->mRemaining == 0) goto er1;
    { s32 r = TMCJPEG_814EB108(work); if (r >= 0) goto lc; return r; }
er1:
    return TMCC_ERROR_UNDERFLOW;

lc:
    avail = work->mpBufEnd - work->mpBufCur;
    if (avail <= offset) goto lp;
    work->mpBufCur += offset;
    if (work->mpBufEnd > work->mpBufCur) goto ret0;
    if (work->mRemaining == 0) goto er2;
    { s32 r = TMCJPEG_814EB108(work); if (r >= 0) goto ret0; return r; }
er2:
    return TMCC_ERROR_UNDERFLOW;

ng:
    offset = -offset;
    if (work->mpBufCur - work->mpBufStart < offset) return TMCC_ERROR_UNDERFLOW;
    work->mpBufCur -= offset;
ret0:
    return 0;
}

s32 TMCJPEGDEC_load_buff(TMCJpegDecWork* work) {
    u32 bitBuf;
    s32 bitCount;
    u8 byte;
    u8* cur = work->mpBufCur;
    u8* end = work->mpBufMark;

    if (cur < end) {
        bitBuf = work->mBitBuf;
        bitCount = work->mBitCount;
        do {
            byte = *cur;
            cur++;
            bitBuf = (bitBuf << 8) + byte;
            bitCount += 8;
            if (byte == 0xFF) cur++;
        } while (bitCount <= 24);
        work->mBitBuf = bitBuf;
        work->mBitCount = bitCount;
        work->mpBufCur = cur;
        goto ret;
    }

    do {
        if (work->mpBufEnd <= work->mpBufCur) {
            if (work->mRemaining == 0)
                break;
            { s32 r = TMCJPEG_814EAF50(work); if (r < 0) return r; }
        }

        {
            u32 bb = work->mBitBuf;
            u8* c = work->mpBufCur;
            u8* next;
            u8 byte = *c;

            next = c + 1;
            work->mpBufCur = next;
            work->mBitBuf = (bb << 8) + byte;
            work->mBitCount += 8;
            if (byte == 0xFF) work->mpBufCur = next + 1;
        }

        if (work->mpBufEnd <= work->mpBufCur) {
            if (work->mRemaining == 0)
                break;
            { s32 r = TMCJPEG_814EAF50(work); if (r < 0) return r; }
        }
    } while (work->mBitCount <= 24);

ret:
    return 0;
}

s32 TMCJPEGDEC_get_position(TMCJpegDecWork* work) {
    return work->mpBufCur - work->mpBufStart;
}

s32 TMCJPEGDEC_chk_possible_size(TMCJpegDecWork* work) {
    return work->mpBufEnd - work->mpBufCur;
}

static s32 TMCJPEG_814EAF50(TMCJpegDecWork* work) {
    u8 marker;
    u32 readSize;
    u8* dest;
    u8* beforeEnd;
    u32 i, j;

    {
        u8* tmpEndPtr = work->mpBufEnd - 1;

        marker = 0;
        if (*tmpEndPtr == 0xFF) marker = 1;
        beforeEnd = tmpEndPtr;
    }

    for (i = 0; i < 32; i += 8) {
        for (j = 0; j < 8; j++) {
            work->mpBufStart[i + j] = *(beforeEnd - (0x1f - (i + j)));
        }
    }

    dest = work->mpBufOrg + 0x20;
    readSize = work->mRemaining;
    if (work->mBufLen - 0x20 < readSize) readSize = work->mBufLen - 0x20;

    if (work->mpCallback(work->mpCbCtx, dest, readSize) != 0)
        return TMCC_ERROR_USER_CALLBACK;

    {
        s32 oldRemaining = work->mRemaining;
        s32 newRemaining = oldRemaining - readSize;

        work->mpBufEnd = dest + readSize;
        work->mRemaining = newRemaining;
        work->mpBufCur = dest + marker;
        work->mpBufMark = dest + readSize - 0x22;
    }

    return 0;
}

static s32 TMCJPEG_814EB108(TMCJpegDecWork* work) {
    u8* end;
    u32 i, j;
    s32 readSize;
    u8* dest;

    end = work->mpBufEnd;

    for (i = 0; i < 32; i += 8) {
        for (j = 0; j < 8; j++) {
            work->mpBufStart[i + j] = *(end - 1 - (0x1f - (i + j)));
        }
    }

    dest = work->mpBufOrg + 0x20;
    readSize = work->mRemaining;
    if (work->mBufLen - 0x20 < readSize)
        readSize = work->mBufLen - 0x20;

    if (work->mpCallback(work->mpCbCtx, dest, readSize) != 0)
        return TMCC_ERROR_USER_CALLBACK;

    {
        s32 oldRemaining = work->mRemaining;
        s32 newRemaining = oldRemaining - readSize;

        work->mpBufCur = dest;
        work->mRemaining = newRemaining;
        work->mpBufEnd = dest + readSize;
        work->mpBufMark = dest + readSize - 0x22;
    }

    return 0;
}
