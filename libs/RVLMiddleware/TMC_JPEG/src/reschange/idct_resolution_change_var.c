#include <tmc_jpeg_internal.h>

static s32 Clamp_U8(s32 v) {
    s32 ok;
    ok = 0;
    if (v < 256 && v > -1) {
        ok = 1;
    }
    return (ok) ? v : ((v < 0) ? 0 : 255);
}

static s32 Clamp_S8(s32 v) {
    s32 ok;
    ok = 0;
    if (v < 128 && v > -129) {
        ok = 1;
    }
    return (ok) ? v : ((v > 0) ? 127 : -128);
}

void TMCJPEGDEC_IdctBlock4x4(s16* block, s16* buf, s32 pitch) {
    s32 tmp[66];
    s32* bp;
    u8* out;
    s32 i;
    s32* src;
    s32* dst;
    s32* col;
    s32 a0, a1, a2, a3;
    s32 a_sum, a_diff, a_odd, a_rot;
    s32 b0, b1, b2, b3;
    s32 b_sum, b_diff, b_odd, b_rot;
    s32 r0, r1, r2, r3;
    bp = (s32*)block;
    out = (u8*)buf;

    src = bp + 24;
    dst = tmp + 24;

    for (i = 0; i < 2; i++) {
        a0 = src[0];
        a1 = src[1];
        a2 = src[2];
        a3 = src[3];

        a_rot = ((a1 - a3) * 181) >> 8;
        a_sum = a0 + a2;
        a_diff = a0 - a2;
        a_odd = a1 + a3;

        dst[0] = a_sum + a_odd + a_rot;
        dst[1] = a_diff + a_rot;
        dst[2] = a_diff - a_rot;
        dst[3] = a_sum - a_odd - a_rot;

        b0 = src[-8];
        b1 = src[-7];
        b2 = src[-6];
        b3 = src[-5];

        b_rot = ((b1 - b3) * 181) >> 8;
        b_sum = b0 + b2;
        b_diff = b0 - b2;
        b_odd = b1 + b3;

        dst[-8] = b_sum + b_odd + b_rot;
        dst[-7] = b_diff + b_rot;
        dst[-6] = b_diff - b_rot;
        dst[-5] = b_sum - b_odd - b_rot;

        src -= 16;
        dst -= 16;
    }

    col = tmp + 3;
    {
        s32 up4 = (u16)pitch * 4;
        s32 up2 = (u16)pitch * 2;
        s32 up3 = up4 - pitch;
        for (i = 3; i >= 0; i--) {
            u8* base = out + i;
            r0 = col[0];
            r1 = col[8];
            r2 = col[16];
            r3 = col[24];

            a_rot = ((r1 - r3) * 181) >> 8;
            a_odd = r1 + r3;
            a_sum = r0 + 0x40000 + r2;
            a_diff = r0 + 0x40000 - r2;

            r0 = Clamp_U8((a_sum + a_rot + a_odd) >> 11);
            *base = (u8)r0;

            r0 = Clamp_U8((a_diff + a_rot) >> 11);
            base[pitch] = (u8)r0;

            r0 = Clamp_U8((a_diff - a_rot) >> 11);
            base[up2] = (u8)r0;

            r0 = Clamp_U8((a_sum - a_rot - a_odd) >> 11);
            base[up3] = (u8)r0;

            col--;
        }
    }
}

void TMCJPEGDEC_IdctBlock2x2(s16* block, s16* buf, s32 pitch) {
    s32 a0, a1;
    s32 b0, b1;
    s32 even_sum, even_diff, odd_sum, rot;
    s32 v;
    s32 a0b;
    s32* bp = (s32*)block;

    a0 = bp[0];
    a1 = bp[1];
    a0b = a0 + 0x40000;
    b0 = bp[8];
    b1 = bp[9];
    even_sum = a0b + a1;
    even_diff = a0b - a1;
    odd_sum = b0 + b1;
    rot = b0 - b1;

    v = Clamp_U8((even_sum + odd_sum) >> 11);
    ((u8*)buf)[0] = (u8)v;

    v = Clamp_U8((even_sum - odd_sum) >> 11);
    *((u8*)buf + pitch) = (u8)v;

    v = Clamp_U8((even_diff + rot) >> 11);
    *((u8*)buf + 1) = (u8)v;

    v = Clamp_U8((even_diff - rot) >> 11);
    *((u8*)buf + pitch + 1) = (u8)v;
}

void TMCJPEGDEC_IdctBlock1x1(s16* block, s16* buf, s32 pitch) {
    s32 ok;
    s32 v;

    ok = 0;
    v = (((s32*)block)[0] >> 11) + 0x80;

    if ((s32)v < 256 && (s32)v > -1) {
        ok = 1;
    }
    v = (ok) ? v : ((v < 0) ? 0 : 255);

    ((u8*)buf)[0] = (u8)v;
}

void TMCJPEGDEC_IdctBlock4x4_Col(s16* block, s16* buf, s32 pitch) {
    s32 tmp[66];
    s32* bp;
    u8* out;
    s32 i;
    s32* src;
    s32* dst;
    s32* col;
    s32 a0, a1, a2, a3;
    s32 a_sum, a_diff, a_odd, a_rot;
    s32 b0, b1, b2, b3;
    s32 b_sum, b_diff, b_odd, b_rot;
    s32 r0, r1, r2, r3;
    s32 v0, v1, v2, v3;

    bp = (s32*)block;
    out = (u8*)buf;

    src = bp + 24;
    dst = tmp + 24;

    for (i = 0; i < 2; i++) {
        a0 = src[0];
        a1 = src[1];
        a2 = src[2];
        a3 = src[3];

        a_rot = ((a1 - a3) * 181) >> 8;
        a_sum = a0 + a2;
        a_diff = a0 - a2;
        a_odd = a1 + a3;

        dst[0] = a_sum + a_odd + a_rot;
        dst[1] = a_diff + a_rot;
        dst[2] = a_diff - a_rot;
        dst[3] = a_sum - a_odd - a_rot;

        b0 = src[-8];
        b1 = src[-7];
        b2 = src[-6];
        b3 = src[-5];

        b_rot = ((b1 - b3) * 181) >> 8;
        b_sum = b0 + b2;
        b_diff = b0 - b2;
        b_odd = b1 + b3;

        dst[-8] = b_sum + b_odd + b_rot;
        dst[-7] = b_diff + b_rot;
        dst[-6] = b_diff - b_rot;
        dst[-5] = b_sum - b_odd - b_rot;

        src -= 16;
        dst -= 16;
    }

    col = tmp + 3;

    for (i = 3; i >= 0; i--) {
        u8* p = out + i;
        r0 = col[0];
        r1 = col[8];
        r2 = col[16];
        r3 = col[24];

        a_rot = ((r1 - r3) * 181) >> 8;
        a_odd = r1 + r3;
        a_sum = r0 + r2;
        a_diff = r0 - r2;

        r0 = Clamp_S8((a_sum + a_rot + a_odd) >> 11);
        p[0] = (u8)r0;

        r0 = Clamp_S8((a_diff + a_rot) >> 11);
        p[8] = (u8)r0;

        r0 = Clamp_S8((a_diff - a_rot) >> 11);
        p[16] = (u8)r0;

        r0 = Clamp_S8((a_sum - a_rot - a_odd) >> 11);
        p[24] = (u8)r0;

        col--;
    }
}

void TMCJPEGDEC_IdctBlock2x2_Col(s16* block, s16* buf, s32 pitch) {
    s32 ok;
    s32 a0, a1;
    s32 b0, b1;
    s32 even_sum, even_diff, odd_sum, rot;
    s32 v;

    a0 = ((s32*)block)[0];
    ok = 0;
    a1 = ((s32*)block)[1];
    b0 = ((s32*)block)[8];
    b1 = ((s32*)block)[9];

    even_sum = a0 + a1;
    even_diff = a0 - a1;
    odd_sum = b0 + b1;
    rot = b0 - b1;

    v = (even_sum + odd_sum) >> 11;
    if ((s32)v < 128 && (s32)v > -129) {
        ok = 1;
    }
    v = (ok) ? v : ((v > 0) ? 127 : -128);
    ((u8*)buf)[0] = (u8)v;

    v = (even_sum - odd_sum) >> 11;
    {
        s32 ok;
        ok = 0;
        if ((s32)v < 128 && (s32)v > -129) {
            ok = 1;
        }
        v = (ok) ? v : ((v > 0) ? 127 : -128);
    }
    ((u8*)buf)[8] = (u8)v;

    v = (even_diff + rot) >> 11;
    {
        s32 ok;
        ok = 0;
        if ((s32)v < 128 && (s32)v > -129) {
            ok = 1;
        }
        v = (ok) ? v : ((v > 0) ? 127 : -128);
    }
    ((u8*)buf)[1] = (u8)v;

    v = (even_diff - rot) >> 11;
    {
        s32 ok;
        ok = 0;
        if ((s32)v < 128 && (s32)v > -129) {
            ok = 1;
        }
        v = (ok) ? v : ((v > 0) ? 127 : -128);
    }
    ((u8*)buf)[9] = (u8)v;
}

void TMCJPEGDEC_IdctBlock1x1_Col(s16* block, s16* buf, s32 pitch) {
    s32 ok;
    s32 v;

    ok = 0;
    v = (((s32*)block)[0] >> 11);

    if ((s32)v < 128 && (s32)v > -129) {
        ok = 1;
    }
    v = (ok) ? v : ((v > 0) ? 127 : -128);

    ((u8*)buf)[0] = (u8)v;
}
