#include <tmc_jpeg_internal.h>
#include <string.h>

void TMCJPEGDEC_IdctBlock_Lumi(s32* block, u8* buf, s32 pitch, s32 count) {
    s32 tmp[64];
    s32* dst;
    s32 done;
    s32 iter;
    s32 i;
    s32 b1, b2, b3, b4, b5, b6, b7;
    s32 v, e, a, d, m, n, o, p, q, t, u, w, x, y, z;
    s32 x_factor, z_factor, m_part, p_part;
    s32 r;

    r = (count >> 4) * 8;
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

    r = (pitch & 0xFFFF) * 8 - pitch;
    dst = tmp + 7;
    z = (pitch & 0xFFFF) * 4;
    m = (pitch & 0xFFFF) * 2;
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
            s32 ok;

            val = (*dst >> 11) + 0x80;
            ok = 0;
            if (val < 0x100 && val > -1) {
                ok = 1;
            }
            val = (ok) ? val : (0xFF & ~(val >> 31));
            buf[i + r] = (u8)val;
            buf[i + pitch * 6] = (u8)val;
            buf[i + z + pitch] = (u8)val;
            buf[i + z] = (u8)val;
            buf[i + z - pitch] = (u8)val;
            buf[i + m] = (u8)val;
            buf[i + pitch] = (u8)val;
            buf[i] = (u8)val;
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

            {
                s32 val;
                s32 result;

                val = w + n;
                if (val >> 19 != 0) {
                    result = 0xFF & ~(val >> 31);
                } else {
                    result = val >> 11;
                }
                buf[i] = (u8)result;

                val = w - n;
                if (val >> 19 != 0) {
                    result = 0xFF & ~(val >> 31);
                } else {
                    result = val >> 11;
                }
                buf[i + r] = (u8)result;

                val = v + o;
                if (val >> 19 != 0) {
                    result = 0xFF & ~(val >> 31);
                } else {
                    result = val >> 11;
                }
                buf[i + pitch] = (u8)result;

                val = v - o;
                if (val >> 19 != 0) {
                    result = 0xFF & ~(val >> 31);
                } else {
                    result = val >> 11;
                }
                buf[i + pitch * 6] = (u8)result;

                p = z + ((b5 - b3) * 0x8B >> 8);
                q = p + x;

                val = e + q;
                if (val >> 19 != 0) {
                    result = 0xFF & ~(val >> 31);
                } else {
                    result = val >> 11;
                }
                buf[i + m] = (u8)result;

                val = e - q;
                if (val >> 19 != 0) {
                    result = 0xFF & ~(val >> 31);
                } else {
                    result = val >> 11;
                }
                buf[i + z + pitch] = (u8)result;

                val = y + p;
                if (val >> 19 != 0) {
                    result = 0xFF & ~(val >> 31);
                } else {
                    result = val >> 11;
                }
                buf[i + z - pitch] = (u8)result;

                val = y - p;
                if (val >> 19 != 0) {
                    result = 0xFF & ~(val >> 31);
                } else {
                    result = val >> 11;
                }
                buf[i + z] = (u8)result;
            }
        }
        dst--;
    }
}

void TMCJPEGDEC_IdctBlock_Col(s32* block, u8* buf, s32 pitch, s32 mode) {
    s32 tmp[64];
    s32* dst;
    s32 done;
    s32 iter;
    s32 i;
    s32 b1, b2, b3, b4, b5, b6, b7;
    s32 v, e, a, d, m, n, o, p, q, t, u, w, x, y, z;
    s32 x_factor, z_factor, m_part, p_part;
    s32 r;

    if (mode == 0x11) {
        s32 val;
        s32 ok;

        val = block[0] >> 11;
        ok = 0;
        if (val < 0x80 && val > -0x81) {
            ok = 1;
        }
        val = (ok) ? val : ((val < 0) ? -0x80 : 0x7f);
        memset(buf, (s8)val, 0x40);
        return;
    }

    r = (mode >> 4) * 8;
    if ((mode & 0xF) > 2) goto mode_gt_2;
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
            s32 ok;

            val = *dst >> 11;
            ok = 0;
            if (val < 0x80 && val > -0x81) {
                ok = 1;
            }
            val = (ok) ? val : ((val < 0) ? -0x80 : 0x7f);
            buf[i + 56] = (u8)val;
            buf[i + 48] = (u8)val;
            buf[i + 40] = (u8)val;
            buf[i + 32] = (u8)val;
            buf[i + 24] = (u8)val;
            buf[i + 16] = (u8)val;
            buf[i + 8] = (u8)val;
            buf[i] = (u8)val;
        } else {
            s32 ok;
            s32 val;
            s32 result;

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

            val = w + n;
            result = val >> 11;
            ok = 0;
            if (result < 0x80 && result > -0x81) {
                ok = 1;
            }
            result = (ok) ? result : ((result < 0) ? -0x80 : 0x7f);
            buf[i] = (u8)result;

            val = w - n;
            result = val >> 11;
            ok = 0;
            if (result < 0x80 && result > -0x81) {
                ok = 1;
            }
            result = (ok) ? result : ((result < 0) ? -0x80 : 0x7f);
            buf[i + 56] = (u8)result;

            p = z + ((b5 - b3) * 0x8B >> 8);
            q = p + x;

            val = v + o;
            result = val >> 11;
            ok = 0;
            if (result < 0x80 && result > -0x81) {
                ok = 1;
            }
            result = (ok) ? result : ((result < 0) ? -0x80 : 0x7f);
            buf[i + 8] = (u8)result;

            val = v - o;
            result = val >> 11;
            ok = 0;
            if (result < 0x80 && result > -0x81) {
                ok = 1;
            }
            result = (ok) ? result : ((result < 0) ? -0x80 : 0x7f);
            buf[i + 48] = (u8)result;

            val = e + q;
            result = val >> 11;
            ok = 0;
            if (result < 0x80 && result > -0x81) {
                ok = 1;
            }
            result = (ok) ? result : ((result < 0) ? -0x80 : 0x7f);
            buf[i + 16] = (u8)result;

            val = e - q;
            result = val >> 11;
            ok = 0;
            if (result < 0x80 && result > -0x81) {
                ok = 1;
            }
            result = (ok) ? result : ((result < 0) ? -0x80 : 0x7f);
            buf[i + 40] = (u8)result;

            val = y + p;
            result = val >> 11;
            ok = 0;
            if (result < 0x80 && result > -0x81) {
                ok = 1;
            }
            result = (ok) ? result : ((result < 0) ? -0x80 : 0x7f);
            buf[i + 24] = (u8)result;

            val = y - p;
            result = val >> 11;
            ok = 0;
            if (result < 0x80 && result > -0x81) {
                ok = 1;
            }
            result = (ok) ? result : ((result < 0) ? -0x80 : 0x7f);
            buf[i + 32] = (u8)result;
        }
        dst--;
    }
}
