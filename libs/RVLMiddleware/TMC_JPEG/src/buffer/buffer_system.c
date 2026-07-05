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

    if (((s32 (*)(void*, u8*, u32))work->mpCallback)(work->mpCbCtx, dest, readSize) < 0)
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
    if (work->mpBufCur < work->mpBufEnd) goto read;
    if (work->mRemaining == 0) goto err1;
    { s32 r = TMCJPEG_814EB108(work); if (r >= 0) goto read; return r; }
err1:
    return TMCC_ERROR_UNDERFLOW;
read: {
    u8* cur = work->mpBufCur;
    u8 byte = *cur; cur++;
    *dst = byte;
    work->mpBufCur = cur;
    if (cur < work->mpBufEnd) goto ret0;
    if (work->mRemaining == 0) goto err2;
    { s32 r = TMCJPEG_814EB108(work); if (r >= 0) goto ret0; return r; }
}
err2:
    return -0x90;
ret0:
    return 0;
}

s32 TMCJPEGDEC_get_wbyte(u16* dst, TMCJpegDecWork* work) {
    u8 byte_val;
    u32 byte_shifted;
    s32 r;

    if (work->mpBufCur < work->mpBufEnd) goto r1;
    if (work->mRemaining == 0) goto e1;
    r = TMCJPEG_814EB108(work);
    if (r >= 0) goto r1;
    goto br;
e1:
    r = -0x90;
    goto br;

    r1:
    {
        s32 _r = r;
        u8* cur = work->mpBufCur;
        u8* end = work->mpBufEnd;
        u8* tmp = cur + 1;
        (void)_r;
        work->mpBufCur = tmp;
        byte_val = *cur;
        if (tmp < end) goto o1;
    }
    if (work->mRemaining == 0) goto e2a;
    r = TMCJPEG_814EB108(work);
    if (r >= 0) goto o1;
    goto br;
e2a:
    r = -0x90;
    goto br;

o1:
    r = 0;
br:
    byte_shifted = (u32)byte_val << 8;
    if (r >= 0) goto p2;
    return r;

p2:
    if (work->mpBufCur < work->mpBufEnd) goto r2;
    if (work->mRemaining == 0) goto e3;
    r = TMCJPEG_814EB108(work);
    if (r >= 0) goto r2;
    goto ez;
e3:
    r = -0x90;
    goto ez;

r2:
    {
        s32 _r = r;
        u8* cur = work->mpBufCur;
        u8* end = work->mpBufEnd;
        u8* tmp = cur + 1;
        (void)_r;
        work->mpBufCur = tmp;
        byte_val = *cur;
        if (tmp < end) goto o2;
    }
    if (work->mRemaining == 0) goto e4;
    r = TMCJPEG_814EB108(work);
    if (r >= 0) goto o2;
    goto ez;
e4:
    r = -0x90;
    goto ez;

o2:
    r = 0;
ez:
    *dst = byte_shifted + byte_val;
    return (r < 0) ? r : 0;
}

s32 TMCJPEGDEC_get_sbyte(u8* dst, u32 count, TMCJpegDecWork* work) {
    u8* d = dst;
    u8 byte;
    int r;
    u32 i = 0;
    goto lc;

lb:
    if (work->mpBufCur < work->mpBufEnd) goto rd;
    if (work->mRemaining == 0) goto e1;
    r = TMCJPEG_814EB108(work);
    if (r >= 0) goto rd;
    goto po;

e1:
    r = -0x90;
    goto po;

rd:
    {
        u8* cur = work->mpBufCur;
        work->mpBufCur = cur + 1;
        byte = *cur;
    }
    if (work->mpBufCur < work->mpBufEnd) goto r0;
    if (work->mRemaining == 0) goto e2;
    r = TMCJPEG_814EB108(work);
    if (r >= 0) goto r0;
    goto po;

e2:
    r = -0x90;
    goto po;

r0:
    r = 0;
po:
    *d = byte;
    d++;
    if (r >= 0) goto inc;
    return r;

inc:
    i++;
lc:
    if (i < count) goto lb;
    return 0;
}

s32 TMCJPEGDEC_move_ptr(s32 offset, TMCJpegDecWork* work) {
    s32 avail;
    s32 back;

    if (offset < 0) goto ng;
    goto lc;

lp:
    offset -= avail;
    if (work->mRemaining == 0) goto er1;
    { s32 r = TMCJPEG_814EB108(work); if (r >= 0) goto lc; return r; }
er1:
    return -0x90;

lc:
    avail = work->mpBufEnd - work->mpBufCur;
    if (avail <= offset) goto lp;
    work->mpBufCur += offset;
    if (work->mpBufEnd > work->mpBufCur) goto ret0;
    if (work->mRemaining == 0) goto er2;
    { s32 r = TMCJPEG_814EB108(work); if (r >= 0) goto ret0; return r; }
er2:
    return -0x90;

ng:
    offset = -offset;
    if (work->mpBufCur - work->mpBufStart < offset) return -0x90;
    work->mpBufCur -= offset;
ret0:
    return 0;
}

s32 TMCJPEGDEC_load_buff(TMCJpegDecWork* work) {

    u8 byte;
    s32 bitCount;
    u32 bitBuf;
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
            u8* c = work->mpBufCur;
            u32 bb = work->mBitBuf;
            u8 byte = *c;
            u8* tmp = c + 1;
            u32 nb = (bb << 8) + byte;
            work->mpBufCur = tmp;
            work->mBitBuf = nb;
            work->mBitCount += 8;
            if (byte == 0xFF) work->mpBufCur = tmp + 1;
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

    if (((s32 (*)(void*, u8*, u32))work->mpCallback)(work->mpCbCtx, dest, readSize) != 0)
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

    if (((s32 (*)(void*, u8*, u32))work->mpCallback)(work->mpCbCtx, dest, readSize) != 0)
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
