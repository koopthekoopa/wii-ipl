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
    return (v < 128 && v > -129) ? (s8)v : (v > 0) ? 127 : -128;
}

void TMCJPEGDEC_IdctBlock4x4(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag) {

    s32 bd;
    s32 d;
    s32 c;
    s32 a;
    s32 b;

    s32* sp;
    s32* dp;

    s32 tmp[64];
    s32 i;

    s32 evsum, rot, oddrot, cd;

    sp = block + 24;
    dp = tmp + 24;

    for (i = 0; i < 2; i++) {
        a = sp[0]; // 0x0
        b = sp[1]; // 0x4
        c = sp[2]; // 0x8
        d = sp[3]; // 0xc
        bd = b + d;
        evsum = a + c;

        oddrot = ( 0xB5 * (sp[1] - sp[3]) >> 8) + bd;
        rot = (0xB5 * (sp[1] - sp[3])) >> 8;

        dp[1] = (a - c) + rot;
        dp[2] = (a - c) - rot;
        dp[3] = evsum - oddrot;
        dp[0] = evsum + oddrot;


        b = sp[-7]; // -0x1c
        d = sp[-5]; // -0x14

        bd = b + d;
        rot = ((b - d) * 0xB5) >> 8;
        oddrot = rot + bd;

        a = sp[-8]; // -0x20
        c = sp[-6]; // -0x18

        dp[-8] = (a + c) + oddrot;
        dp[-7] = (a - c) + rot;
        dp[-6] = (a - c) - rot;
        dp[-5] = (a + c) - oddrot;

        sp -= 16;
        dp -= 16;
    }

    {
        u32 idx = 3;
        sp = tmp + 3;

        for (i = 0; i < 4; i++) {
            u8* bp = conv_row_ptr + idx;

            a = sp[0] + 0x40000;
            b = sp[8];
            d = sp[24];
            c = sp[16];

            evsum = a + c;
            cd = a - c;

            rot = ((b - d) * 0xB5) >> 8;
            bd = b + d;
            oddrot = rot + bd;

            bp[0] = Clamp_U8((evsum + oddrot) >> 11);
            bp[pitch] = Clamp_U8((cd + rot) >> 11);
            bp[pitch * 2] = Clamp_U8((cd - rot) >> 11);
            bp[pitch * 4 - pitch] = Clamp_U8((evsum - oddrot) >> 11);

            sp--;
            idx -= 1;
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

void TMCJPEGDEC_IdctBlock4x4_Col(s32* sp, u8* conv_row_ptr, u16 pitch, s32 zigzag) {
    s32 tmp[64];
    s32* src = sp + 24;
    s32* dst = tmp + 24;
    s32 i;
    s32 a, b, c, d;
    s32 evsum, evdiff, oddsum, odddiff, rot, oddrot;

    for (i = 0; i < 2; i++) {
        s32 a0 = src[0], b0 = src[1], c0 = src[2], d0 = src[3];
        s32 a1 = src[-8], b1 = src[-7], c1 = src[-6], d1 = src[-5];

        s32 odddiff0 = b0 - d0;
        s32 oddsum0  = b0 + d0;
        s32 evsum0   = a0 + c0;
        s32 evdiff0  = a0 - c0;
        s32 rot0     = (odddiff0 * 0xB5) >> 8;

        s32 odddiff1 = b1 - d1;
        s32 oddsum1  = b1 + d1;
        s32 evsum1   = a1 + c1;
        s32 evdiff1  = a1 - c1;
        s32 rot1     = (odddiff1 * 0xB5) >> 8;

        dst[0]   = evsum0 + (oddsum0 + rot0);
        dst[1]   = evdiff0 + rot0;
        dst[2]   = evdiff0 - rot0;
        dst[3]   = evsum0 - (oddsum0 + rot0);

        dst[-8]  = evsum1 + (oddsum1 + rot1);
        dst[-7]  = evdiff1 + rot1;
        dst[-6]  = evdiff1 - rot1;
        dst[-5]  = evsum1 - (oddsum1 + rot1);

        src -= 16;
        dst -= 16;
    }

    src = tmp + 3;
    for (i = 3; i >= 0; i--) {
        u8* out = conv_row_ptr + i;
        a = src[0];
        b = src[8];
        c = src[16];
        d = src[24];

        odddiff = b - d;
        oddsum = b + d;
        evsum = a + c;
        evdiff = a - c;
        rot = odddiff * 0xB5 >> 8;
        oddrot = oddsum + rot;

        out[0]  = (u8)Clamp_S8((evsum + oddrot) >> 11);
        out[8]  = (u8)Clamp_S8((evdiff + rot) >> 11);
        out[16] = (u8)Clamp_S8((evdiff - rot) >> 11);
        out[24] = (u8)Clamp_S8((evsum - oddrot) >> 11);

        src--;
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
