#include <tmc_jpeg_internal.h>



static void TMCJPEGDEC_converterYUV411toRGBA8(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 ss;
    s32 step, step_v;
    s32 x_end, y_end;
    u8* cb_row;
    u8* y_row;
    u8* cr_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    y_row = work->mConvBuf + 0x104;
    cr_row = work->mConvBuf + 0x144;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    ss = st->mFlag20;
    step = 0x20 / ss;
    step_v = 0x08 / ss;
    x_end = x + step;
    y_end = y + step_v;

    {
        s32 cb_step = (0x20 - step) >> 2;
        s32 stride = (bw >> 1) & ~1;
        s32 count = (x_end - x + 3) >> 2;

        for (i = y; i < y_end; i++) {
            u8* y_ptr;
            u8* cr_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            y_ptr = y_row;
            cr_ptr = cr_row;
            n = count;
            x_pos = x;

            while (x_pos < x_end) {
                s32 yv, crv, cbv;
                s32 ra, ga, ba;
                s32 rr, gg, bb;

                yv = (s8)(y_ptr[0]); y_ptr++;
                crv = (s8)(cr_ptr[0]); cr_ptr++;
                cbv = cb_row[0];

                ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                gg = cbv + ga;
                ra = (crv * 0x167) >> 8;
                rr = cbv + ra;
                ba = (yv * 0x1C6) >> 8;
                bb = cbv + ba;

                if ((rr | gg | bb) >> 8) {
                    if (rr > 0xFF) rr = 0xFF;
                    else { s32 s = rr >> 31; rr &= ~s; }
                    if (gg > 0xFF) gg = 0xFF;
                    else { s32 s = gg >> 31; gg &= ~s; }
                    if (bb > 0xFF) bb = 0xFF;
                    else { s32 s = bb >> 31; bb &= ~s; }
                }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;

                if (x_pos < x_end) {
                    yv = (s8)(y_ptr[0]); y_ptr++;
                    crv = (s8)(cr_ptr[0]); cr_ptr++;
                    cbv = cb_row[1];

                    ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                    gg = cbv + ga;
                    ra = (crv * 0x167) >> 8;
                    rr = cbv + ra;
                    ba = (yv * 0x1C6) >> 8;
                    bb = cbv + ba;

                    if ((rr | gg | bb) >> 8) {
                        if (rr > 0xFF) rr = 0xFF;
                        else { s32 s = rr >> 31; rr &= ~s; }
                        if (gg > 0xFF) gg = 0xFF;
                        else { s32 s = gg >> 31; gg &= ~s; }
                        if (bb > 0xFF) bb = 0xFF;
                        else { s32 s = bb >> 31; bb &= ~s; }
                    }

                    {
                        s32 xo = x_pos & 3;
                        s32 xg = (x_pos >> 2) << 1;
                        s32 off = (xg + row_base) << 4;
                        s32 ba0 = off + xo;
                        ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                        ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                    }
                    x_pos++;
                }

                if (x_pos < x_end) {
                    yv = (s8)(y_ptr[0]); y_ptr++;
                    crv = (s8)(cr_ptr[0]); cr_ptr++;
                    cbv = cb_row[2];

                    ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                    gg = cbv + ga;
                    ra = (crv * 0x167) >> 8;
                    rr = cbv + ra;
                    ba = (yv * 0x1C6) >> 8;
                    bb = cbv + ba;

                    if ((rr | gg | bb) >> 8) {
                        if (rr > 0xFF) rr = 0xFF;
                        else { s32 s = rr >> 31; rr &= ~s; }
                        if (gg > 0xFF) gg = 0xFF;
                        else { s32 s = gg >> 31; gg &= ~s; }
                        if (bb > 0xFF) bb = 0xFF;
                        else { s32 s = bb >> 31; bb &= ~s; }
                    }

                    {
                        s32 xo = x_pos & 3;
                        s32 xg = (x_pos >> 2) << 1;
                        s32 off = (xg + row_base) << 4;
                        s32 ba0 = off + xo;
                        ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                        ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                    }
                    x_pos++;
                }

                if (x_pos < x_end) {
                    yv = (s8)(y_ptr[0]); y_ptr++;
                    crv = (s8)(cr_ptr[0]); cr_ptr++;
                    cbv = cb_row[3];

                    ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                    gg = cbv + ga;
                    ra = (crv * 0x167) >> 8;
                    rr = cbv + ra;
                    ba = (yv * 0x1C6) >> 8;
                    bb = cbv + ba;

                    if ((rr | gg | bb) >> 8) {
                        if (rr > 0xFF) rr = 0xFF;
                        else { s32 s = rr >> 31; rr &= ~s; }
                        if (gg > 0xFF) gg = 0xFF;
                        else { s32 s = gg >> 31; gg &= ~s; }
                        if (bb > 0xFF) bb = 0xFF;
                        else { s32 s = bb >> 31; bb &= ~s; }
                    }

                    {
                        s32 xo = x_pos & 3;
                        s32 xg = (x_pos >> 2) << 1;
                        s32 off = (xg + row_base) << 4;
                        s32 ba0 = off + xo;
                        ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                        ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                    }
                    x_pos++;
                }

                cb_row += 4;
            }

            cb_row += (0x20 - step);
            y_row += cb_step;
            cr_row += cb_step;
        }
    }
}

static void TMCJPEGDEC_converterYUV411toRGBA8edge(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 step, step_v;
    s32 x_end, y_end;
    u8* cb_row;
    u8* y_row;
    u8* cr_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    y_row = work->mConvBuf + 0x104;
    cr_row = work->mConvBuf + 0x144;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    {
        s32 ss = st->mFlag20;

        if (st->mDataSizeX == (u32)x) {
            step = st->mStepXExt;
        } else {
            step = 0x20 / ss;
        }

        if (st->mDataSizeY == (u32)y) {
            step_v = st->mStepYExt;
        } else {
            step_v = 0x08 / ss;
        }
    }
    x_end = x + step;
    y_end = y + step_v;
    {
        s32 cb_step = (0x20 - step) >> 2;
        s32 stride = (bw >> 1) & ~1;

        for (i = y; i < y_end; i++) {
            u8* cb_ptr;
            u8* y_ptr;
            u8* cr_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 ra, ga, ba;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            cb_ptr = cb_row;
            y_ptr = y_row;
            cr_ptr = cr_row;
            n = step;
            x_pos = x;

            while (n > 0) {
                s32 yv, crv, cbv;
                s32 rr, gg, bb;

                if ((x_pos & 3) == 0) {
                    yv = (s8)(y_ptr[0]); y_ptr++;
                    crv = (s8)(cr_ptr[0]); cr_ptr++;
                    ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                    ra = (crv * 0x167) >> 8;
                    ba = (yv * 0x1C6) >> 8;
                }

                cbv = cb_ptr[0]; cb_ptr++;

                gg = cbv + ga;
                rr = cbv + ra;
                bb = cbv + ba;

                if ((rr | gg | bb) >> 8) {
                    if (rr > 0xFF) rr = 0xFF;
                    else { s32 s = rr >> 31; rr &= ~s; }
                    if (gg > 0xFF) gg = 0xFF;
                    else { s32 s = gg >> 31; gg &= ~s; }
                    if (bb > 0xFF) bb = 0xFF;
                    else { s32 s = bb >> 31; bb &= ~s; }
                }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;
                n--;
            }

            cb_row += (0x20 - step);
            y_row += cb_step;
            cr_row += cb_step;
        }
    }
}

static void TMCJPEGDEC_converterYUV422toRGBA8(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 ss;
    s32 step, step_v;
    s32 x_end, y_end;
    u8* cb_row;
    u8* y_row;
    u8* cr_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    y_row = work->mConvBuf + 0x84;
    cr_row = work->mConvBuf + 0xC4;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    ss = st->mFlag20;
    step = 0x10 / ss;
    step_v = 0x08 / ss;
    x_end = x + step;
    y_end = y + step_v;

    {
        s32 cb_step = (0x10 - step) >> 1;
        s32 stride = (bw >> 1) & ~1;
        s32 count = step >> 1;

        for (i = y; i < y_end; i++) {
            u8* y_ptr;
            u8* cr_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            y_ptr = y_row;
            cr_ptr = cr_row;
            n = count;
            x_pos = x;

            while (x_pos < x_end) {
                s32 yv, crv, cbv;
                s32 ra, ga, ba;
                s32 rr, gg, bb;

                yv = (s8)(y_ptr[0]); y_ptr++;
                crv = (s8)(cr_ptr[0]); cr_ptr++;
                cbv = cb_row[0];

                ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                gg = cbv + ga;
                ra = (crv * 0x167) >> 8;
                rr = cbv + ra;
                ba = (yv * 0x1C6) >> 8;
                bb = cbv + ba;

                if ((rr | gg | bb) >> 8) {
                    if (rr > 0xFF) rr = 0xFF;
                    else { s32 s = rr >> 31; rr &= ~s; }
                    if (gg > 0xFF) gg = 0xFF;
                    else { s32 s = gg >> 31; gg &= ~s; }
                    if (bb > 0xFF) bb = 0xFF;
                    else { s32 s = bb >> 31; bb &= ~s; }
                }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;

                if (x_pos < x_end) {
                    yv = (s8)(y_ptr[0]); y_ptr++;
                    crv = (s8)(cr_ptr[0]); cr_ptr++;
                    cbv = cb_row[1];

                    ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                    gg = cbv + ga;
                    ra = (crv * 0x167) >> 8;
                    rr = cbv + ra;
                    ba = (yv * 0x1C6) >> 8;
                    bb = cbv + ba;

                    if ((rr | gg | bb) >> 8) {
                        if (rr > 0xFF) rr = 0xFF;
                        else { s32 s = rr >> 31; rr &= ~s; }
                        if (gg > 0xFF) gg = 0xFF;
                        else { s32 s = gg >> 31; gg &= ~s; }
                        if (bb > 0xFF) bb = 0xFF;
                        else { s32 s = bb >> 31; bb &= ~s; }
                    }

                    {
                        s32 xo = x_pos & 3;
                        s32 xg = (x_pos >> 2) << 1;
                        s32 off = (xg + row_base) << 4;
                        s32 ba0 = off + xo;
                        ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                        ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                    }
                    x_pos++;
                }

                cb_row += 2;
            }

            cb_row += (0x10 - step);
            y_row += cb_step;
            cr_row += cb_step;
        }
    }
}

static void TMCJPEGDEC_converterYUV422toRGBA8edge(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 step, step_v;
    s32 x_end, y_end;
    u8* cb_row;
    u8* y_row;
    u8* cr_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    y_row = work->mConvBuf + 0x84;
    cr_row = work->mConvBuf + 0xC4;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    {
        s32 ss = st->mFlag20;

        if (st->mDataSizeX == (u32)x) {
            step = st->mStepXExt;
        } else {
            step = 0x10 / ss;
        }

        if (st->mDataSizeY == (u32)y) {
            step_v = st->mStepYExt;
        } else {
            step_v = 0x08 / ss;
        }
    }
    x_end = x + step;
    y_end = y + step_v;
    {
        s32 cb_step = (0x10 - step) >> 1;
        s32 stride = (bw >> 1) & ~1;

        for (i = y; i < y_end; i++) {
            u8* cb_ptr;
            u8* y_ptr;
            u8* cr_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 ra, ga, ba;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            cb_ptr = cb_row;
            y_ptr = y_row;
            cr_ptr = cr_row;
            n = step;
            x_pos = x;

            while (n > 0) {
                s32 yv, crv, cbv;
                s32 rr, gg, bb;

                if ((x_pos & 1) == 0) {
                    yv = (s8)(y_ptr[0]); y_ptr++;
                    crv = (s8)(cr_ptr[0]); cr_ptr++;
                    ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                    ra = (crv * 0x167) >> 8;
                    ba = (yv * 0x1C6) >> 8;
                }

                cbv = cb_ptr[0]; cb_ptr++;

                gg = cbv + ga;
                rr = cbv + ra;
                bb = cbv + ba;

                if ((rr | gg | bb) >> 8) {
                    if (rr > 0xFF) rr = 0xFF;
                    else { s32 s = rr >> 31; rr &= ~s; }
                    if (gg > 0xFF) gg = 0xFF;
                    else { s32 s = gg >> 31; gg &= ~s; }
                    if (bb > 0xFF) bb = 0xFF;
                    else { s32 s = bb >> 31; bb &= ~s; }
                }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;
                n--;
            }

            cb_row += (0x10 - step);
            y_row += cb_step;
            cr_row += cb_step;
        }
    }
}

static void TMCJPEGDEC_converterYUV420toRGBA8(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 ss;
    s32 step, step_v;
    s32 x_end, y_end;
    u8* cb_row;
    u8* y_row;
    u8* cr_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    y_row = work->mConvBuf + 0x104;
    cr_row = work->mConvBuf + 0x144;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    ss = st->mFlag20;
    step = 0x10 / ss;
    step_v = (step + 1) >> 1;
    x_end = x + step;
    y_end = y + step;

    {
        s32 cb_step = (0x10 - step) >> 1;
        s32 stride = (bw >> 1) & ~1;
        s32 count = step >> 1;

        for (i = y; i < y_end; i++) {
            u8* y_ptr;
            u8* cr_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            y_ptr = y_row;
            cr_ptr = cr_row;
            n = count;
            x_pos = x;

            while (x_pos < x_end) {
                s32 yv, crv, cbv;
                s32 ra, ga, ba;
                s32 rr, gg, bb;

                yv = (s8)(y_ptr[0]); y_ptr++;
                crv = (s8)(cr_ptr[0]); cr_ptr++;
                cbv = cb_row[0];

                ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                gg = cbv + ga;
                ra = (crv * 0x167) >> 8;
                rr = cbv + ra;
                ba = (yv * 0x1C6) >> 8;
                bb = cbv + ba;

                if ((rr | gg | bb) >> 8) {
                    if (rr > 0xFF) rr = 0xFF;
                    else { s32 s = rr >> 31; rr &= ~s; }
                    if (gg > 0xFF) gg = 0xFF;
                    else { s32 s = gg >> 31; gg &= ~s; }
                    if (bb > 0xFF) bb = 0xFF;
                    else { s32 s = bb >> 31; bb &= ~s; }
                }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;

                if (x_pos < x_end) {
                    yv = (s8)(y_ptr[0]); y_ptr++;
                    crv = (s8)(cr_ptr[0]); cr_ptr++;
                    cbv = cb_row[1];

                    ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                    gg = cbv + ga;
                    ra = (crv * 0x167) >> 8;
                    rr = cbv + ra;
                    ba = (yv * 0x1C6) >> 8;
                    bb = cbv + ba;

                    if ((rr | gg | bb) >> 8) {
                        if (rr > 0xFF) rr = 0xFF;
                        else { s32 s = rr >> 31; rr &= ~s; }
                        if (gg > 0xFF) gg = 0xFF;
                        else { s32 s = gg >> 31; gg &= ~s; }
                        if (bb > 0xFF) bb = 0xFF;
                        else { s32 s = bb >> 31; bb &= ~s; }
                    }

                    {
                        s32 xo = x_pos & 3;
                        s32 xg = (x_pos >> 2) << 1;
                        s32 off = (xg + row_base) << 4;
                        s32 ba0 = off + xo;
                        ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                        ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                    }
                    x_pos++;
                }

                cb_row += 2;
            }

            cb_row += (0x10 - step);
            if (i & 1) {
                y_row += cb_step;
                cr_row += cb_step;
            } else {
                y_row -= ((step + 1) >> 1);
                cr_row -= ((step + 1) >> 1);
            }
        }
    }
}

static void TMCJPEGDEC_converterYUV420toRGBA8edge(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 step, step_v;
    s32 x_end, y_end;
    u8* cb_row;
    u8* y_row;
    u8* cr_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    y_row = work->mConvBuf + 0x104;
    cr_row = work->mConvBuf + 0x144;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    {
        s32 ss = st->mFlag20;

        if (st->mDataSizeX == (u32)x) {
            step = st->mStepXExt;
        } else {
            step = 0x10 / ss;
        }

        if (st->mDataSizeY == (u32)y) {
            step_v = st->mStepYExt;
        } else {
            step_v = 0x10 / ss;
        }
    }
    x_end = x + step;
    y_end = y + step_v;
    {
        s32 cb_step = (0x10 - step) >> 1;
        s32 stride = (bw >> 1) & ~1;

        for (i = y; i < y_end; i++) {
            u8* cb_ptr;
            u8* y_ptr;
            u8* cr_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 ra, ga, ba;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            cb_ptr = cb_row;
            y_ptr = y_row;
            cr_ptr = cr_row;
            n = step;
            x_pos = x;

            while (n > 0) {
                s32 yv, crv, cbv;
                s32 rr, gg, bb;

                if ((x_pos & 1) == 0) {
                    yv = (s8)(y_ptr[0]); y_ptr++;
                    crv = (s8)(cr_ptr[0]); cr_ptr++;
                    ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                    ra = (crv * 0x167) >> 8;
                    ba = (yv * 0x1C6) >> 8;
                }

                cbv = cb_ptr[0]; cb_ptr++;

                gg = cbv + ga;
                rr = cbv + ra;
                bb = cbv + ba;

                if ((rr | gg | bb) >> 8) {
                    if (rr > 0xFF) rr = 0xFF;
                    else { s32 s = rr >> 31; rr &= ~s; }
                    if (gg > 0xFF) gg = 0xFF;
                    else { s32 s = gg >> 31; gg &= ~s; }
                    if (bb > 0xFF) bb = 0xFF;
                    else { s32 s = bb >> 31; bb &= ~s; }
                }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;
                n--;
            }

            cb_row += (0x10 - step);
            if (i & 1) {
                y_row += cb_step;
                cr_row += cb_step;
            } else {
                y_row -= ((step + 1) >> 1);
                cr_row -= ((step + 1) >> 1);
            }
        }
    }
}

static void TMCJPEGDEC_converterYUV211toRGBA8(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 ss;
    s32 step, step_v;
    s32 x_end, y_end;
    u8* cb_row;
    u8* y_row;
    u8* cr_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    y_row = work->mConvBuf + 0x84;
    cr_row = work->mConvBuf + 0xC4;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    ss = st->mFlag20;
    step = 0x08 / ss;
    step_v = 0x10 / ss;
    x_end = x + step;
    y_end = y + step_v;

    {
        s32 stride = (bw >> 1) & ~1;
        s32 count = step;
        s32 step_half = step >> 1;

        for (i = y; i < y_end; i++) {
            u8* cb_ptr;
            u8* y_ptr;
            u8* cr_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            cb_ptr = cb_row;
            y_ptr = y_row;
            cr_ptr = cr_row;
            n = count;
            x_pos = x;

            while (x_pos < x_end) {
                s32 yv, crv, cbv;
                s32 ra, ga, ba;
                s32 rr, gg, bb;

                yv = (s8)(y_ptr[0]); y_ptr++;
                crv = (s8)(cr_ptr[0]); cr_ptr++;
                cbv = cb_row[0]; cb_row++;

                ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                gg = cbv + ga;
                ra = (crv * 0x167) >> 8;
                rr = cbv + ra;
                ba = (yv * 0x1C6) >> 8;
                bb = cbv + ba;

                if ((rr | gg | bb) >> 8) {
                    if (rr > 0xFF) rr = 0xFF;
                    else { s32 s = rr >> 31; rr &= ~s; }
                    if (gg > 0xFF) gg = 0xFF;
                    else { s32 s = gg >> 31; gg &= ~s; }
                    if (bb > 0xFF) bb = 0xFF;
                    else { s32 s = bb >> 31; bb &= ~s; }
                }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;
                n--;
            }

            cb_row += (0x08 - step);
            if (i & 1) {
                y_row += (0x08 - step);
                cr_row += (0x08 - step);
            } else {
                y_row -= step;
                cr_row -= step;
            }
        }
    }
}

static void TMCJPEGDEC_converterYUV211toRGBA8edge(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 step, step_v;
    s32 x_end, y_end;
    u8* cb_row;
    u8* y_row;
    u8* cr_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    y_row = work->mConvBuf + 0x84;
    cr_row = work->mConvBuf + 0xC4;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    {
        s32 ss = st->mFlag20;

        if (st->mDataSizeX == (u32)x) {
            step = st->mStepXExt;
        } else {
            step = 0x08 / ss;
        }

        if (st->mDataSizeY == (u32)y) {
            step_v = st->mStepYExt;
        } else {
            step_v = 0x10 / ss;
        }
    }
    x_end = x + step;
    y_end = y + step_v;

    {
        s32 stride = (bw >> 1) & ~1;
        s32 count = step;

        for (i = y; i < y_end; i++) {
            u8* cb_ptr;
            u8* y_ptr;
            u8* cr_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            cb_ptr = cb_row;
            y_ptr = y_row;
            cr_ptr = cr_row;
            n = count;
            x_pos = x;

            while (x_pos < x_end) {
                s32 yv, crv, cbv;
                s32 ra, ga, ba;
                s32 rr, gg, bb;

                yv = (s8)(y_ptr[0]); y_ptr++;
                crv = (s8)(cr_ptr[0]); cr_ptr++;
                cbv = cb_ptr[0];

                ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                gg = cbv + ga;
                ra = (crv * 0x167) >> 8;
                rr = cbv + ra;
                ba = (yv * 0x1C6) >> 8;
                bb = cbv + ba;

                if ((rr | gg | bb) >> 8) {
                    if (rr > 0xFF) rr = 0xFF;
                    else { s32 s = rr >> 31; rr &= ~s; }
                    if (gg > 0xFF) gg = 0xFF;
                    else { s32 s = gg >> 31; gg &= ~s; }
                    if (bb > 0xFF) bb = 0xFF;
                    else { s32 s = bb >> 31; bb &= ~s; }
                }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;
                n--;

                cb_ptr += 1;
            }

            cb_row += step;
            if (i & 1) {
                y_row += step_v;
                cr_row += step_v;
            } else {
                y_row -= step_v;
                cr_row -= step_v;
            }
        }
    }
}

static void TMCJPEGDEC_converterYUV444toRGBA8(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 ss;
    s32 step;
    s32 x_end, y_end;
    u8* cb_row;
    u8* y_row;
    u8* cr_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    y_row = work->mConvBuf + 0x44;
    cr_row = work->mConvBuf + 0x84;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    ss = st->mFlag20;
    step = 0x08 / ss;
    x_end = x + step;
    y_end = y + step;

    {
        s32 stride = (bw >> 1) & ~1;
        s32 count = step;

        for (i = y; i < y_end; i++) {
            u8* y_ptr;
            u8* cr_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            y_ptr = y_row;
            cr_ptr = cr_row;
            n = count;
            x_pos = x;

            while (x_pos < x_end) {
                s32 yv, crv, cbv;
                s32 ra, ga, ba;
                s32 rr, gg, bb;

                yv = (s8)(y_ptr[0]); y_ptr++;
                crv = (s8)(cr_ptr[0]); cr_ptr++;
                cbv = cb_row[0]; cb_row++;

                ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                gg = cbv + ga;
                ra = (crv * 0x167) >> 8;
                rr = cbv + ra;
                ba = (yv * 0x1C6) >> 8;
                bb = cbv + ba;

                if ((rr | gg | bb) >> 8) {
                    if (rr > 0xFF) rr = 0xFF;
                    else { s32 s = rr >> 31; rr &= ~s; }
                    if (gg > 0xFF) gg = 0xFF;
                    else { s32 s = gg >> 31; gg &= ~s; }
                    if (bb > 0xFF) bb = 0xFF;
                    else { s32 s = bb >> 31; bb &= ~s; }
                }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;
                n--;
            }

            cb_row += step;
            y_row += step;
            cr_row += step;
        }
    }
}

static void TMCJPEGDEC_converterYUV444toRGBA8edge(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 step, step_v;
    s32 x_end, y_end;
    u8* cb_row;
    u8* y_row;
    u8* cr_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    y_row = work->mConvBuf + 0x44;
    cr_row = work->mConvBuf + 0x84;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    {
        s32 ss = st->mFlag20;

        if (st->mDataSizeX == (u32)x) {
            step = st->mStepXExt;
        } else {
            step = 0x08 / ss;
        }

        if (st->mDataSizeY == (u32)y) {
            step_v = st->mStepYExt;
        } else {
            step_v = 0x08 / ss;
        }
    }
    x_end = x + step;
    y_end = y + step_v;

    {
        s32 stride = (bw >> 1) & ~1;
        s32 count = step;

        for (i = y; i < y_end; i++) {
            u8* cb_ptr;
            u8* y_ptr;
            u8* cr_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            cb_ptr = cb_row;
            y_ptr = y_row;
            cr_ptr = cr_row;
            n = count;
            x_pos = x;

            while (x_pos < x_end) {
                s32 yv, crv, cbv;
                s32 ra, ga, ba;
                s32 rr, gg, bb;

                yv = (s8)(y_ptr[0]); y_ptr++;
                crv = (s8)(cr_ptr[0]); cr_ptr++;
                cbv = cb_ptr[0];

                ga = -((yv * 0x58) + (crv * 0xB7)) >> 8;
                gg = cbv + ga;
                ra = (crv * 0x167) >> 8;
                rr = cbv + ra;
                ba = (yv * 0x1C6) >> 8;
                bb = cbv + ba;

                if ((rr | gg | bb) >> 8) {
                    if (rr > 0xFF) rr = 0xFF;
                    else { s32 s = rr >> 31; rr &= ~s; }
                    if (gg > 0xFF) gg = 0xFF;
                    else { s32 s = gg >> 31; gg &= ~s; }
                    if (bb > 0xFF) bb = 0xFF;
                    else { s32 s = bb >> 31; bb &= ~s; }
                }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;
                n--;

                cb_ptr += 1;
            }

            cb_row += (0x08 - step);
            y_row += (0x08 - step);
            cr_row += (0x08 - step);
        }
    }
}

static void TMCJPEGDEC_converterYUV400toRGBA8(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 ss;
    s32 step;
    s32 x_end, y_end;
    u8* cb_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    ss = st->mFlag20;
    step = 0x08 / ss;
    x_end = x + step;
    y_end = y + step;

    {
        s32 stride = (bw >> 1) & ~1;
        s32 count = step;

        for (i = y; i < y_end; i++) {
            u8* cb_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            n = count;
            x_pos = x;

            while (x_pos < x_end) {
                s32 val;

                val = cb_row[0]; cb_row++;
                if (val > 0xFF) val = 0xFF;
                else { s32 s = val >> 31; val &= ~s; }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    s32 bb = val;
                    s32 gg = val;
                    s32 rr = val;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;
                n--;
            }

            cb_row += (0x08 - step);
        }
    }
}

static void TMCJPEGDEC_converterYUV400toRGBA8edge(TMCJpegDecWork* work, s32 x, s32 y) {
    TMCCJPEGDecState* st;
    s32 bw;
    u8* out;
    s32 step, step_v;
    s32 x_end, y_end;
    u8* cb_row;
    s32 i;

    st = (TMCCJPEGDecState*)work->mpState;
    cb_row = work->mConvBuf + 4;
    bw = st->mConvWidth;
    out = (u8*)st->mpTexBuffer;
    {
        s32 ss = st->mFlag20;

        if (st->mDataSizeX == (u32)x) {
            step = st->mStepXExt;
        } else {
            step = 0x08 / ss;
        }

        if (st->mDataSizeY == (u32)y) {
            step_v = st->mStepYExt;
        } else {
            step_v = 0x08 / ss;
        }
    }
    x_end = x + step;
    y_end = y + step_v;

    {
        s32 stride = (bw >> 1) & ~1;
        s32 count = step;

        for (i = y; i < y_end; i++) {
            u8* cb_ptr;
            s32 n;
            s32 x_pos;
            s32 row_base;
            u8* ob;
            s32 y_d4 = i >> 2;
            s32 y_ofs = (i & 3) << 3;

            row_base = y_d4 * stride;
            ob = out + row_base + y_ofs;
            cb_ptr = cb_row;
            n = count;
            x_pos = x;

            while (x_pos < x_end) {
                s32 val;

                val = cb_ptr[0];
                if (val > 0xFF) val = 0xFF;
                else { s32 s = val >> 31; val &= ~s; }

                {
                    s32 xo = x_pos & 3;
                    s32 xg = (x_pos >> 2) << 1;
                    s32 off = (xg + row_base) << 4;
                    s32 ba0 = off + xo;
                    s32 bb = val;
                    s32 gg = val;
                    s32 rr = val;
                    ((u16*)(ob + (ba0 << 1)))[0] = (u16)(0xFF00 | (bb & 0xFF));
                    ((u16*)(ob + ((ba0 + 1) << 1)))[0] = (u16)((((gg & 0xFF) << 8) | (rr & 0xFF)));
                }
                x_pos++;
                n--;
                cb_ptr += 1;
            }

            cb_row += step;
        }
    }
}

s32 TMCJPEGDEC_set_converterRGBA8(TMCJpegDecWork* work) {
    u8* ob;
    s32 cc;
    TMCCJPEGDecState* st;

    ob = work->mConvBuf;
    cc = work->mComponentCount;
    st = (TMCCJPEGDecState*)work->mpState;

    switch (cc) {
    case 0: {
        u8 mode;
        u8* ptr;

        mode = work->mIdctMode;
        ptr = ob + 4;
        {
            u8* p1 = ptr + mode;
            u8* ob104 = ob + 0x104;
            u8* p2 = p1 + mode;
            u8* ob144 = ob + 0x144;
            u8* p3 = p2 + mode;

            work->mpConverterFunc = TMCJPEGDEC_converterYUV411toRGBA8;
            work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV411toRGBA8edge;
            work->mpConvRowPtrs[0] = (void*)ptr;
            work->mpConvRowPtrs[1] = (void*)p1;
            work->mpConvRowPtrs[2] = (void*)p2;
            work->mpConvRowPtrs[3] = (void*)p3;
            work->mpConvRowPtrs[5] = (void*)ob104;
            work->mpConvRowPtrs[6] = (void*)ob144;
            work->mPitch = 0x20;
            work->mConverterFlags = 0;
        }
        break;
    }
    case 1: {
        u8 mode;

        mode = work->mIdctMode;

        work->mpConverterFunc = TMCJPEGDEC_converterYUV422toRGBA8;
        work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV422toRGBA8edge;
        work->mpConvRowPtrs[0] = (void*)(ob + 4);
        work->mpConvRowPtrs[1] = (void*)(ob + 4 + mode);
        work->mpConvRowPtrs[5] = (void*)(ob + 0x84);
        work->mpConvRowPtrs[6] = (void*)(ob + 0xC4);
        work->mPitch = 0x10;
        work->mConverterFlags = 0;
        break;
    }
    case 2: {
        u8 mode;
        u8* ptr;

        mode = work->mIdctMode;
        ptr = ob + 4;

        work->mpConverterFunc = TMCJPEGDEC_converterYUV420toRGBA8;
        work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV420toRGBA8edge;
        work->mpConvRowPtrs[0] = (void*)ptr;
        work->mpConvRowPtrs[1] = (void*)(ptr + mode);
        work->mpConvRowPtrs[2] = (void*)(ptr + mode * 16);
        work->mpConvRowPtrs[3] = (void*)(ptr + mode * 16 + mode);
        work->mpConvRowPtrs[5] = (void*)(ob + 0x104);
        work->mpConvRowPtrs[6] = (void*)(ob + 0x144);
        work->mPitch = 0x10;
        work->mConverterFlags = 0;
        break;
    }
    case 3: {
        u8 mode;

        mode = work->mIdctMode;

        work->mpConverterFunc = TMCJPEGDEC_converterYUV211toRGBA8;
        work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV211toRGBA8edge;
        work->mpConvRowPtrs[0] = (void*)(ob + 4);
        work->mpConvRowPtrs[1] = (void*)(ob + 4 + mode * 8);
        work->mpConvRowPtrs[5] = (void*)(ob + 0x84);
        work->mpConvRowPtrs[6] = (void*)(ob + 0xC4);
        work->mPitch = 0x08;
        work->mConverterFlags = 0;
        break;
    }
    case 4: {
        work->mpConverterFunc = TMCJPEGDEC_converterYUV444toRGBA8;
        work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV444toRGBA8edge;
        work->mpConvRowPtrs[0] = (void*)(ob + 4);
        work->mpConvRowPtrs[5] = (void*)(ob + 0x44);
        work->mpConvRowPtrs[6] = (void*)(ob + 0x84);
        work->mPitch = 0x08;
        work->mConverterFlags = 0;
        break;
    }
    case 5: {
        work->mpConverterFunc = TMCJPEGDEC_converterYUV400toRGBA8;
        work->mpConverterFuncEdge = TMCJPEGDEC_converterYUV400toRGBA8edge;
        work->mpConvRowPtrs[0] = (void*)(ob + 4);
        work->mPitch = 0x08;
        work->mConverterFlags = 0;
        break;
    }
    default:
        return -0x70;
    }

    {
        u16 fw;
        u16 fh;
        s32 bw;
        s32 bh;

        fw = st->mJpegWidth;
        fh = st->mJpegHeight;

        bw = (s32)(((s32)((fw << 30) - (fw >> 31)) << 2) + (fw >> 31));
        bh = (s32)(((s32)((fh << 30) - (fh >> 31)) << 2) + (fh >> 31));
        {
            s32 nb = -bw;
            bw = ((nb | bw) >> 31) + (fw >> 2);
        }
        {
            s32 nb = -bh;
            bh = ((nb | bh) >> 31) + (fh >> 2);
        }

        st->mConvWidth = bw << 2;
        st->mConvHeight = bh << 2;
    }

    return 0;
}
