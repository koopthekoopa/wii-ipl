#include <tmc_jpeg_internal.h>

static u8 Clamp_U8(s32 v) {
    s32 ok;
    ok = 0;
    if (v < 256 && v > -1) {
        ok = 1;
    }
    return (ok) ? v : ((v < 0) ? 0 : 255);
}

static s8 Clamp_S8(s32 v) {
    s32 ok;
    ok = 0;
    if (v < 128 && v > -129) {
        ok = 1;
    }
    return (ok) ? (s8)v : ((v > 0) ? 127 : -128);
}

void TMCJPEGDEC_IdctBlock4x4(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag) {
    s32 tmp[64];
    s32 a, b, c, d, bd;
    s32 evsum, rot, oddrot, cd, t;
    s32 i;
    s32* sp;
    s32* dp;

    sp = block + 24;
    dp = tmp + 24;

    for (i = 0; i < 2; i++) {
        b = sp[1];
        d = sp[3];
        a = sp[0];
        t = b - d;
        bd = b + d;
        t = t * 0xB5;
        c = sp[2];

        b = sp[-7];
        evsum = a + c;
        d = sp[-5];
        rot = t >> 8;
        oddrot = rot + bd;
        cd = a - c;

        dp[0] = evsum + oddrot;

        t = b - d;
        dp[1] = cd + rot;
        t = t * 0xB5;
        dp[2] = cd - rot;
        dp[3] = evsum - oddrot;

        a = sp[-8];
        c = sp[-6];
        evsum = a + c;
        rot = t >> 8;
        cd = a - c;
        bd = b + d;
        oddrot = rot + bd;
        dp[-8] = evsum + oddrot;
        dp[-7] = cd + rot;
        dp[-6] = cd - rot;
        dp[-5] = evsum - oddrot;

        sp -= 16;
        dp -= 16;
    }

    {
        u32 p4, p3, p2;
        u32 idx;
        u32 max;
        s32 ok;

        p4 = (u16)pitch * 4;
        p3 = p4 - pitch;
        p2 = (u16)pitch * 2;
        idx = 3;
        max = 255;
        sp = tmp + 3;

        for (i = 0; i < 4; i++) {
            u8* bp;
            s32 v;
            a = sp[0] + 0x40000;
            bp = conv_row_ptr + idx;
            b = sp[8];
            d = sp[24];
            c = sp[16];

            evsum = a + c;
            t = b - d;
            cd = a - c;
            t = t * 0xB5;
            rot = t >> 8;
            bd = b + d;
            oddrot = rot + bd;

            v = (evsum + oddrot) >> 11;
            ok = 0;
            if (v < 256 && v > -1) ok = 1;
            bp[0] = (u8)((ok) ? v : ((v < 0) ? 0 : max));

            v = (cd + rot) >> 11;
            ok = 0;
            if (v < 256 && v > -1) ok = 1;
            bp[pitch] = (u8)((ok) ? v : ((v < 0) ? 0 : max));

            v = (cd - rot) >> 11;
            ok = 0;
            if (v < 256 && v > -1) ok = 1;
            bp[p2] = (u8)((ok) ? v : ((v < 0) ? 0 : max));

            v = (evsum - oddrot) >> 11;
            ok = 0;
            if (v < 256 && v > -1) ok = 1;
            bp[p3] = (u8)((ok) ? v : ((v < 0) ? 0 : max));

            idx--;
            sp--;
        }
    }
}

void TMCJPEGDEC_IdctBlock2x2(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag) {
    u8* bp;
    s32 a0b;
    s32 a0, a1;
    s32 b0, b1;
    s32 even_sum, even_diff, odd_sum, rot;
    bp = conv_row_ptr;
    a0 = block[0];
    a0b = a0 + 0x40000;
    a1 = block[1];
    b0 = block[8];
    b1 = block[9];
    even_sum = a0b + a1;
    even_diff = a0b - a1;
    odd_sum = b0 + b1;
    rot = b0 - b1;
    bp[0] = (u8)Clamp_U8((even_sum + odd_sum) >> 11);
    bp[pitch] = (u8)Clamp_U8((even_sum - odd_sum) >> 11);
    bp[1] = (u8)Clamp_U8((even_diff + rot) >> 11);
    (bp + pitch)[1] = (u8)Clamp_U8((even_diff - rot) >> 11);
}

void TMCJPEGDEC_IdctBlock1x1(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag) {
    s32 in = block[0];
    conv_row_ptr[0] = Clamp_U8((in >> 11) + 0x80);
}

void TMCJPEGDEC_IdctBlock4x4_Col(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag) {
    s32 tmp[64];
    s32* sp;
    s32* dp;
    s32 i;
    s32 a, b, c, d;
    s32 evsum, evdiff, rot, oddrot;

    sp = block + 24;
    dp = tmp + 24;

    for (i = 0; i < 2; i++) {
        a = sp[0];
        b = sp[1];
        c = sp[2];
        d = sp[3];
        evsum = a + c;
        evdiff = a - c;
        rot = (b - d) * 0xB5 >> 8;
        oddrot = rot + b + d;
        dp[0] = evsum + oddrot;
        dp[1] = evdiff + rot;
        dp[2] = evdiff - rot;
        dp[3] = evsum - oddrot;

        a = sp[-8];
        b = sp[-7];
        c = sp[-6];
        d = sp[-5];
        evsum = a + c;
        evdiff = a - c;
        rot = (b - d) * 0xB5 >> 8;
        oddrot = rot + b + d;
        dp[-8] = evsum + oddrot;
        dp[-7] = evdiff + rot;
        dp[-6] = evdiff - rot;
        dp[-5] = evsum - oddrot;

        sp -= 16;
        dp -= 16;
    }

    sp = tmp + 5;
    for (i = 0; i < 4; i++) {
        s32 v;
        a = sp[0];
        b = sp[8];
        c = sp[16];
        d = sp[24];
        evsum = a + c;
        evdiff = a - c;
        rot = (b - d) * 0xB5 >> 8;
        oddrot = rot + b + d;

        v = (evsum + oddrot) >> 11;
        conv_row_ptr[i] = (u8)Clamp_S8(v);

        v = (evdiff + rot) >> 11;
        conv_row_ptr[i + 8] = (u8)Clamp_S8(v);

        v = (evdiff - rot) >> 11;
        conv_row_ptr[i + 16] = (u8)Clamp_S8(v);

        v = (evsum - oddrot) >> 11;
        conv_row_ptr[i + 24] = (u8)Clamp_S8(v);

        sp--;
    }
}

void TMCJPEGDEC_IdctBlock2x2_Col(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag) {
    s32 a0, a1;
    s32 b0, b1;
    s32 even_sum, even_diff, odd_sum, rot;

    a0 = block[0];
    a1 = block[1];
    b0 = block[8];
    b1 = block[9];

    even_sum = a0 + a1;
    even_diff = a0 - a1;
    odd_sum = b0 + b1;
    rot = b0 - b1;

    conv_row_ptr[0] = (u8)Clamp_S8((even_sum + odd_sum) >> 11);
    conv_row_ptr[8] = (u8)Clamp_S8((even_sum - odd_sum) >> 11);
    conv_row_ptr[1] = (u8)Clamp_S8((even_diff + rot) >> 11);
    conv_row_ptr[9] = (u8)Clamp_S8((even_diff - rot) >> 11);
}

void TMCJPEGDEC_IdctBlock1x1_Col(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag) {
    s32 in = block[0];
    conv_row_ptr[0] = Clamp_S8(in >> 11);
}
