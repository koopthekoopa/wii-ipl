#include <tmc_jpeg_internal.h>
#include <string.h>

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

static s32 ScalingClamp_U8(s32 val) {
    s32 result = 0;
    if (val >> 19 != 0)
        result &= ~(val >> 31) & 0xFF;
    else
        result = (val >> 11);
    return result;
}

void TMCJPEGDEC_IdctBlock_Lumi(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag) {
    s32 tmp[64];
    s32* dst;
    s32 done;
    s32 iter;
    s32 i;
    s32 b1, b2, b3, b4, b5, b6, b7;
    s32 v, e, a, d, n, o, p, q, t, u, w, x, y;
    s32 x_factor, z_factor, m_part, p_part;
    s32 r, z, m;

    r = (zigzag >> 4) * 8;
    iter = (u32)(r + 7) >> 3;
    dst = tmp;
    done = 0;
    if (r > 0) {
        for (; iter > 0; iter--) {
            u32 ac;
            b4 = block[4];
            b6 = block[6];
            b2 = block[2];
            b1 = block[1];
            b7 = block[7];
            b5 = block[5];
            b3 = block[3];

            ac = (u32)b4 | (u32)b6 | (u32)b2 | (u32)b1 | (u32)b7 | (u32)b5 | (u32)b3;
            if (ac == 0) {
                s32 val = block[0];
                dst[7] = val;
                dst[6] = val;
                dst[5] = val;
                dst[4] = val;
                dst[3] = val;
                dst[2] = val;
                dst[1] = val;
                dst[0] = val;
            } else {
                t = (b2 - b6) * 0xB5 >> 8;
                a = block[0] - b4;
                d = block[0] + b4;
                u = t + b6 + b2;
                v = a + t;
                e = a - t;
                w = d + u;
                x_factor = (b1 + b7) - (b5 + b3);
                y = d - u;
                z_factor = (b5 - b3) + (b1 - b7);
                m_part = (b1 - b7) * 0x14E >> 8;
                p_part = (b5 - b3) * 0x8B >> 8;
                x = x_factor * 0xB5 >> 8;
                z = z_factor * 0x62 >> 8;
                m = m_part - z;
                n = b1 + b7 + b5 + b3 + m;
                o = x + m;
                p = z + p_part;
                q = p + x;
                dst[6] = v - o;
                dst[2] = e + q;
                dst[5] = e - q;
                dst[3] = y + p;
                dst[4] = y - p;
            }
            block += 8;
            dst += 8;
            done += 8;
        }
    }

    dst = tmp + done;
    for (; done < 0x38; done += 8) {
        memset(dst, 0, 0x20);
        dst += 8;
    }

    r = pitch * 8 - pitch;
    z = pitch * 4;
    m = pitch * 2;
    dst = tmp + 7;
    for (iter = 8, i = 7; iter > 0; iter--, i--) {
        u32 ac;
        u8* out;

        b4 = dst[0x20];
        b6 = dst[0x30];
        b2 = dst[0x10];
        b1 = dst[8];
        b7 = dst[0x38];
        b5 = dst[0x28];
        b3 = dst[0x18];

        ac = (u32)b4 | (u32)b6 | (u32)b2 | (u32)b1 | (u32)b7 | (u32)b5 | (u32)b3;
        out = conv_row_ptr + i;
        if (ac == 0) {
            u8 val = Clamp_U8((*dst >> 11) + 0x80);
            out[r] = val;
            out[pitch * 6] = val;
            out[z + pitch] = val;
            out[z] = val;
            out[z - pitch] = val;
            out[m] = val;
            out[pitch] = val;
            out[0] = val;
        } else {
            t = (b2 - b6) * 0xB5 >> 8;
            a = *dst - b4;
            d = *dst + b4;
            u = t + b6 + b2;
            v = a + t;
            e = a - t;
            w = d + u;
            x = ((b1 + b7) - (b5 + b3)) * 0xB5 >> 8;
            y = d - u;

            z_factor = ((b5 - b3) + (b1 - b7)) * 0x62 >> 8;
            m_part = ((b1 - b7) * 0x14E >> 8) - z_factor;

            n = b1 + b7 + b5 + b3 + m_part;
            o = x + m_part;
            p = z_factor + ((b5 - b3) * 0x8B >> 8);
            q = p + x;

            out[0] = ScalingClamp_U8(w + n);
            out[r] = ScalingClamp_U8(w - n);
            out[pitch] = ScalingClamp_U8(v + o);
            out[pitch * 6] = ScalingClamp_U8(v - o);
            out[m] = ScalingClamp_U8(e + q);
            out[z + pitch] = ScalingClamp_U8(e - q);
            out[z - pitch] = ScalingClamp_U8(y + p);
            out[z] = ScalingClamp_U8(y - p);
        }
        dst--;
    }
}

void TMCJPEGDEC_IdctBlock_Col(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag) {
    s32 tmp[64];
    s32* dst;
    s32 done;
    s32 iter;
    s32 i;
    s32 b1, b2, b3, b4, b5, b6, b7;
    s32 v, e, a, d, m, n, o, p, q, t, u, w, x, y, z;
    s32 x_factor, z_factor, m_part, p_part;
    s32 r;

    if (zigzag == 0x11) {
        s32 val;
        val = Clamp_S8(block[0] >> 11);
        memset(conv_row_ptr, (s8)val, 0x40);
        return;
    }

    r = (zigzag >> 4) * 8;
    if ((zigzag & 0xF) > 2) goto mode_gt_2;
    {
        s32 inner;

        dst = tmp;
        done = 0;
        iter = (r + 7) >> 3;
        if (r > 0) {
            inner = (r + 7) >> 4;
            done = iter << 3;
            if (inner != 0) {
                for (; inner > 0; inner--) {
                    t = block[1] * 0xB5 >> 8;
                    v = block[1] * 0x62 >> 8;
                    u = v + t;
                    z = (block[1] * 0x14E >> 8) - v;
                    m = block[1] + z;
                    n = t + z;
                    b1 = block[0] + m;
                    dst[0] = b1;
                    dst[7] = block[0] - m;
                    dst[1] = block[0] + n;
                    dst[6] = block[0] - n;
                    dst[2] = block[0] + u;
                    dst[5] = block[0] - u;
                    dst[3] = block[0] + v;
                    dst[4] = block[0] - v;

                    t = block[9] * 0xB5 >> 8;
                    v = block[9] * 0x62 >> 8;
                    u = v + t;
                    z = (block[9] * 0x14E >> 8) - v;
                    m = block[9] + z;
                    n = t + z;
                    b2 = block[8] + m;
                    dst[8] = b2;
                    dst[15] = block[8] - m;
                    dst[9] = block[8] + n;
                    dst[14] = block[8] - n;
                    dst[10] = block[8] + u;
                    dst[13] = block[8] - u;
                    dst[11] = block[8] + v;
                    dst[12] = block[8] - v;
                    dst += 0x10;
                    block += 0x10;
                }
                iter = iter & 1;
                if (iter == 0) {
                    goto zero_fill;
                }
            }
            for (; iter > 0; iter--) {
                t = block[1] * 0xB5 >> 8;
                v = block[1] * 0x62 >> 8;
                u = v + t;
                z = (block[1] * 0x14E >> 8) - v;
                m = block[1] + z;
                n = t + z;
                b1 = block[0] + m;
                dst[0] = b1;
                dst[7] = block[0] - m;
                dst[1] = block[0] + n;
                dst[6] = block[0] - n;
                dst[2] = block[0] + u;
                dst[5] = block[0] - u;
                dst[3] = block[0] + v;
                dst[4] = block[0] - v;
                dst += 8;
                block += 8;
            }
        }
zero_fill:
        dst = tmp + done;
        for (; done < 0x39; done += 8) {
            memset(dst, 0, 0x20);
            dst += 8;
        }
    }
    goto epilogue;

mode_gt_2:
    dst = tmp;
    done = 0;
    if (r > 0) {
        for (iter = (r + 7) >> 3; iter > 0; iter--) {
            u32 ac;
            b4 = block[4];
            b6 = block[6];
            b2 = block[2];
            b1 = block[1];
            b7 = block[7];
            b5 = block[5];
            b3 = block[3];

            ac = (u32)b4;
            ac |= (u32)b6;
            ac |= (u32)b2;
            ac |= (u32)b1;
            ac |= (u32)b7;
            ac |= (u32)b5;
            ac |= (u32)b3;
            if (ac == 0) {
                s32 val;
                val = block[0];
                dst[7] = val;
                dst[6] = val;
                dst[5] = val;
                dst[4] = val;
                dst[3] = val;
                dst[2] = val;
                dst[1] = val;
                dst[0] = val;
            } else {
                t = (b2 - b6) * 0xB5 >> 8;
                a = block[0] - b4;
                d = block[0] + b4;
                u = t + b6 + b2;
                v = a + t;
                e = a - t;
                w = d + u;
                x_factor = (b1 + b7) - (b5 + b3);
                y = d - u;
                z_factor = (b5 - b3) + (b1 - b7);
                m_part = (b1 - b7) * 0x14E >> 8;
                p_part = (b5 - b3) * 0x8B >> 8;
                x = x_factor * 0xB5 >> 8;
                z = z_factor * 0x62 >> 8;
                m = m_part - z;
                n = b1 + b7 + b5 + b3 + m;
                o = x + m;
                p = z + p_part;
                q = p + x;
                dst[6] = v - o;
                dst[2] = e + q;
                dst[5] = e - q;
                dst[3] = y + p;
                dst[4] = y - p;
            }
            block += 8;
            dst += 8;
            done += 8;
        }
    }

    dst = tmp + done;
    for (; done < 0x39; done += 8) {
        memset(dst, 0, 0x20);
        dst += 8;
    }

epilogue:

    dst = tmp + 7;
    for (iter = 8, i = 7; iter > 0; iter--, i--) {
        u32 ac;
        b4 = dst[0x20];
        b6 = dst[0x30];
        b2 = dst[0x10];
        b1 = dst[8];
        b7 = dst[0x38];
        b5 = dst[0x28];
        b3 = dst[0x18];

        ac = (u32)b4;
        ac |= (u32)b6;
        ac |= (u32)b2;
        ac |= (u32)b1;
        ac |= (u32)b7;
        ac |= (u32)b5;
        ac |= (u32)b3;
        if (ac == 0) {
            s32 val;
            val = Clamp_S8(*dst >> 11);
            conv_row_ptr[i + 56] = (u8)val;
            conv_row_ptr[i + 48] = (u8)val;
            conv_row_ptr[i + 40] = (u8)val;
            conv_row_ptr[i + 32] = (u8)val;
            conv_row_ptr[i + 24] = (u8)val;
            conv_row_ptr[i + 16] = (u8)val;
            conv_row_ptr[i + 8] = (u8)val;
            conv_row_ptr[i] = (u8)val;
        } else {
            t = (b2 - b6) * 0xB5 >> 8;
            a = *dst - b4;
            d = *dst + b4;
            u = t + b6 + b2;
            v = a + t;
            e = a - t;
            w = d + u;
            x = ((b1 + b7) - (b5 + b3)) * 0xB5 >> 8;
            y = d - u;
            z = ((b5 - b3) + (b1 - b7)) * 0x62 >> 8;
            m = ((b1 - b7) * 0x14E >> 8) - z;
            n = b1 + b7 + b5 + b3 + m;
            o = x + m;

            p = z + ((b5 - b3) * 0x8B >> 8);
            q = p + x;

            conv_row_ptr[i] = (u8)Clamp_S8((w + n) >> 11);
            conv_row_ptr[i + 56] = (u8)Clamp_S8((w - n) >> 11);
            conv_row_ptr[i + 8] = (u8)Clamp_S8((v + o) >> 11);
            conv_row_ptr[i + 48] = (u8)Clamp_S8((v - o) >> 11);
            conv_row_ptr[i + 16] = (u8)Clamp_S8((e + q) >> 11);
            conv_row_ptr[i + 40] = (u8)Clamp_S8((e - q) >> 11);
            conv_row_ptr[i + 24] = (u8)Clamp_S8((y + p) >> 11);
            conv_row_ptr[i + 32] = (u8)Clamp_S8((y - p) >> 11);
        }
        dst--;
    }
}
