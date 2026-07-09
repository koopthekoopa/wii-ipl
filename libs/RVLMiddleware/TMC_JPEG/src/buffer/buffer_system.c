#include <tmc_jpeg_internal.h>

static s32 TMCJPEG_814EAF50(TMCCJPEGDecWork* work);
static s32 TMCJPEG_814EB108(TMCCJPEGDecWork* work);

s32 TMCJPEGDEC_init_ptr_buff(TMCCJPEGDecWork* work, void* param) {
    u32 readSize;
    u8* dest;
    u8* newEnd;
    u8* bufOrg;
    u32 newRemaining;

    if (((u32*)param)[0] & 0x1F)
        return -1;
    if (((u32*)param)[1] & 0x1F)
        return -1;
    if (((u32*)param)[2] == 0)
        return -1;
    if (((u32*)param)[1] < 0x10040)
        return -1;

    work->pBufOrg = (u8*)((u32*)param)[0];
    dest = work->pBufOrg + 0x20;
    work->bufLen = ((u32*)param)[1] - 0x20;
    readSize = ((u32*)param)[2];
    work->remaining = readSize;
    work->pCallback = (void*)((u32*)param)[3];
    work->pCbCtx = (void*)((u32*)param)[4];
    if (work->bufLen - 0x20 < readSize) {
        readSize = work->bufLen - 0x20;
    }

    if (work->pCallback(work->pCbCtx, dest, readSize) < 0) {
        return TMCC_ERROR_USER_CALLBACK;
    }

    newEnd = dest + readSize;
    bufOrg = work->pBufOrg;
    newRemaining = work->remaining - readSize;

    work->pBufCur = dest;
    work->remaining = newRemaining;
    work->pBufStart = bufOrg;
    work->pBufEnd = newEnd;
    work->pBufMark = newEnd - 0x22;
    return 0;
}

s32 TMCJPEGDEC_get_byte(u8* dst, TMCCJPEGDecWork* work) {
    u8* cur;
    u8 byte;

    if (work->pBufCur >= work->pBufEnd) {
        if (work->remaining != 0) {
            s32 r = TMCJPEG_814EB108(work);
            if (r < 0) {
                return r;
            }
        } else {
            return TMCC_ERROR_UNDERFLOW;
        }
    }

    cur = work->pBufCur;
    byte = *cur;
    cur++;
    *dst = byte;
    work->pBufCur = cur;

    if (cur >= work->pBufEnd) {
        if (work->remaining != 0) {
            s32 r = TMCJPEG_814EB108(work);
            if (r < 0) {
                return r;
            }
        } else {
            return TMCC_ERROR_UNDERFLOW;
        }
    }

    return 0;
}

s32 TMCJPEGDEC_get_wbyte(u16* dst, TMCCJPEGDecWork* work) {
    u8 byte_val;
    u32 byte_shifted;
    s32 r;

    u8* cur;
    u8* end;
    u8* next;

    if (work->pBufCur >= work->pBufEnd) {
        if (work->remaining != 0) {
            r = TMCJPEG_814EB108(work);
            if (r < 0) {
                goto br;
            } else {
                // This else-branch is load-bearing...
                // Forces bge instead of blt.
            }
        } else {
            r = TMCC_ERROR_UNDERFLOW;
            goto br;
        }
    }

    {
        u8* tmp = work->pBufCur;
        end = work->pBufEnd;
        cur = tmp;
        next = tmp + 1;
    }

    work->pBufCur = next;
    byte_val = *cur;
    if (next < end) {
        goto o1;
    }

    if (work->remaining != 0) {
        r = TMCJPEG_814EB108(work);
        if (r >= 0) {
            goto o1;
        }
        goto br;
    } else {
        r = TMCC_ERROR_UNDERFLOW;
        goto br;
    }

o1:
    r = 0;

br:
    byte_shifted = (u32)byte_val << 8;
    if (r >= 0) {
        goto p2;
    }
    return r;

p2:
    if (work->pBufCur < work->pBufEnd) {
        goto r2;
    }
    if (work->remaining != 0) {
        r = TMCJPEG_814EB108(work);
        if (r < 0)
            goto ez;
        else {
            // ...
        }
    } else {
        r = TMCC_ERROR_UNDERFLOW;
        goto ez;
    }

r2:
    cur = work->pBufCur;
    end = work->pBufEnd;
    next = cur + 1;
    work->pBufCur = next;
    byte_val = *cur;
    if (next < end) {
        goto o2;
    }

    if (work->remaining != 0) {
        r = TMCJPEG_814EB108(work);
        if (r < 0)
            goto ez;
        else {
            // ...
        }
    } else {
        r = TMCC_ERROR_UNDERFLOW;
        goto ez;
    }

o2:
    r = 0;
ez:
    *dst = byte_shifted + byte_val;
    return r < 0 ? r : 0;
}

s32 TMCJPEGDEC_get_sbyte(u8* dst, u32 count, TMCCJPEGDecWork* work) {
    int r = 0;
    u32 i;
    u8 byte;
    u8* cur;

    for (i = 0; i < count; i++) {
        if (work->pBufCur >= work->pBufEnd) {
            if (work->remaining != 0) {
                r = TMCJPEG_814EB108(work);
                if (r < 0) {
                    goto copy_byte;
                } else {
                    // This else-branch is load-bearing...
                    // Forces bge instead of blt.
                }
            } else {
                r = TMCC_ERROR_UNDERFLOW;
                goto copy_byte;
            }
        }

        cur = work->pBufCur;
        work->pBufCur += 1;
        byte = *cur;

        if (work->pBufCur < work->pBufEnd) {
            goto r0;
        }
        if (work->remaining != 0) {
            r = TMCJPEG_814EB108(work);
            if (r >= 0) {
                goto r0;
            }
            goto copy_byte;
        } else {
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

s32 TMCJPEGDEC_move_ptr(s32 offset, TMCCJPEGDecWork* work) {
    s32 avail;
    s32 r;

    if (offset < 0) {
        goto ng;
    }
    goto lc;

lp:
    offset -= avail;
    if (work->remaining == 0) {
        goto er1;
    }
    r = TMCJPEG_814EB108(work);
    if (r >= 0) {
        goto lc;
    }
    return r;
er1:
    return TMCC_ERROR_UNDERFLOW;

lc:
    avail = work->pBufEnd - work->pBufCur;
    if (avail <= offset) {
        goto lp;
    }
    work->pBufCur += offset;
    if (work->pBufEnd > work->pBufCur) {
        goto ret0;
    }
    if (work->remaining == 0) {
        goto er2;
    }
    r = TMCJPEG_814EB108(work);
    if (r >= 0) {
        goto ret0;
    }
    return r;
er2:
    return TMCC_ERROR_UNDERFLOW;

ng:
    offset = -offset;
    if (work->pBufCur - work->pBufStart < offset) {
        return TMCC_ERROR_UNDERFLOW;
    }
    work->pBufCur -= offset;
ret0:
    return 0;
}

s32 TMCJPEGDEC_load_buff(TMCCJPEGDecWork* work) {
    u32 bitBuf;
    s32 bitCount;
    u8 byte;
    u8* cur = work->pBufCur;
    u8* end = work->pBufMark;
    s32 r;

    if (cur < end) {
        bitBuf = work->bitBuf;
        bitCount = work->bitCount;
        do {
            byte = *cur;
            cur++;
            bitBuf = (bitBuf << 8) + byte;
            bitCount += 8;
            if (byte == 0xFF) {
                cur++;
            }
        } while (bitCount <= 24);
        work->bitBuf = bitBuf;
        work->bitCount = bitCount;
        work->pBufCur = cur;
        goto ret;
    }

    do {
        if (work->pBufEnd <= work->pBufCur) {
            if (work->remaining == 0) {
                break;
            }
            r = TMCJPEG_814EAF50(work);
            if (r < 0) {
                return r;
            }
        }

        {
            u32 bb = work->bitBuf;
            u8* c = work->pBufCur;
            u8* next;
            u8 byte = *c;

            next = c + 1;
            work->pBufCur = next;
            work->bitBuf = (bb << 8) + byte;
            work->bitCount += 8;
            if (byte == 0xFF) {
                work->pBufCur = next + 1;
            }
        }

        if (work->pBufEnd <= work->pBufCur) {
            if (work->remaining == 0) {
                break;
            }
            r = TMCJPEG_814EAF50(work);
            if (r < 0) {
                return r;
            }
        }
    } while (work->bitCount <= 24);

ret:
    return 0;
}

s32 TMCJPEGDEC_get_position(TMCCJPEGDecWork* work) {
    return work->pBufCur - work->pBufStart;
}

s32 TMCJPEGDEC_chk_possible_size(TMCCJPEGDecWork* work) {
    return work->pBufEnd - work->pBufCur;
}

static s32 TMCJPEG_814EAF50(TMCCJPEGDecWork* work) {
    u8 marker;
    u32 readSize;
    u8* dest;
    u8* beforeEnd;
    u32 i, j;

    {
        u8* tmpEndPtr = work->pBufEnd - 1;

        marker = 0;
        if (*tmpEndPtr == 0xFF) {
            marker = 1;
        }
        beforeEnd = tmpEndPtr;
    }

    for (i = 0; i < 32; i += 8) {
        for (j = 0; j < 8; j++) {
            work->pBufStart[i + j] = *(beforeEnd - (0x1f - (i + j)));
        }
    }

    dest = work->pBufOrg + 0x20;
    readSize = work->remaining;
    if (work->bufLen - 0x20 < readSize) {
        readSize = work->bufLen - 0x20;
    }

    if (work->pCallback(work->pCbCtx, dest, readSize) != 0) {
        return TMCC_ERROR_USER_CALLBACK;
    }

    {
        s32 oldRemaining = work->remaining;
        s32 newRemaining = oldRemaining - readSize;

        work->pBufEnd = dest + readSize;
        work->remaining = newRemaining;
        work->pBufCur = dest + marker;
        work->pBufMark = dest + readSize - 0x22;
    }

    return 0;
}

static s32 TMCJPEG_814EB108(TMCCJPEGDecWork* work) {
    u8* end;
    u32 i, j;
    s32 readSize;
    u8* dest;

    end = work->pBufEnd;

    for (i = 0; i < 32; i += 8) {
        for (j = 0; j < 8; j++) {
            work->pBufStart[i + j] = *(end - 1 - (0x1f - (i + j)));
        }
    }

    dest = work->pBufOrg + 0x20;
    readSize = work->remaining;
    if (work->bufLen - 0x20 < readSize) {
        readSize = work->bufLen - 0x20;
    }

    if (work->pCallback(work->pCbCtx, dest, readSize) != 0) {
        return TMCC_ERROR_USER_CALLBACK;
    }

    {
        s32 oldRemaining = work->remaining;
        s32 newRemaining = oldRemaining - readSize;

        work->pBufCur = dest;
        work->remaining = newRemaining;
        work->pBufEnd = dest + readSize;
        work->pBufMark = dest + readSize - 0x22;
    }

    return 0;
}
