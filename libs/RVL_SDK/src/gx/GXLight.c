#include <private/os.h>
#include <revolution/os.h>

#include <revolution/gx.h>
#include <private/gx.h>

#include <private/hollywood.h>

#include <revolution/base/PPCArch.h>

#pragma optimizewithasm off

inline void PushLight(const register GXLightObj* lt_obj, register void* dest) {
    register u32 zero, color;
    register f32 a0_a1, a2_k0, k1_k2;
    register f32 px_py, pz_dx, dy_dz;
#ifdef __MWERKS__
    asm volatile {
        lwz     color, 12(lt_obj)
        xor     zero, zero, zero
        psq_l   a0_a1, 16(lt_obj), 0, 0
        psq_l   a2_k0, 24(lt_obj), 0, 0
        psq_l   k1_k2, 32(lt_obj), 0, 0
        psq_l   px_py, 40(lt_obj), 0, 0
        psq_l   pz_dx, 48(lt_obj), 0, 0
        psq_l   dy_dz, 56(lt_obj), 0, 0

        stw     zero,  0(dest)
        stw     zero,  0(dest)
        stw     zero,  0(dest)

        stw     color, 0(dest)
        psq_st  a0_a1, 0(dest), 0, 0
        psq_st  a2_k0, 0(dest), 0, 0
        psq_st  k1_k2, 0(dest), 0, 0
        psq_st  px_py, 0(dest), 0, 0
        psq_st  pz_dx, 0(dest), 0, 0
        psq_st  dy_dz, 0(dest), 0, 0
    }
#endif
}

void GXInitLightPos(GXLightObj* lt_obj, f32 x, f32 y, f32 z) {
    __GXLightObjInt* obj = (__GXLightObjInt*)lt_obj;

    obj->lpos[0] = x;
    obj->lpos[1] = y;
    obj->lpos[2] = z;
}

void GXInitLightColor(GXLightObj* lt_obj, GXColor color) {
    __GXLightObjInt* obj = (__GXLightObjInt*)lt_obj;

    *(u32*)&obj->Color = *(u32*)&color;
}

void GXLoadLightObjImm(const GXLightObj* lt_obj, GXLightID light) {
    u32 addr;
    u32 idx;
    __GXLightObjInt* obj;

    obj = (__GXLightObjInt*)lt_obj;

    idx = 31 - __cntlzw(light);

    idx &= 7;

    addr = idx * 0x10 + 0x600;
    GX_WRITE_U8(0x10);
    GX_WRITE_U32(addr | 0xF0000);

    PushLight(lt_obj, (void*)GXFIFO_ADDR);

    __GXData->bpSentNot = GX_TRUE;
}

#define GXCOLOR_AS_U32(color) (*((u32*)&(color)))
void GXSetChanAmbColor(GXChannelID chan, GXColor amb_color) {
    u32 reg;
    u32 rgb;
    u32 colIdx;

    switch (chan) {
        case GX_COLOR0: {
            reg = __GXData->ambColor[GX_COLOR0];
            rgb = GXCOLOR_AS_U32(amb_color) >> 8;
            SET_REG_FIELD(reg, 24, 8, rgb);
            colIdx = 0;
            break;
        }
        case GX_COLOR1: {
            reg = __GXData->ambColor[GX_COLOR1];
            rgb = GXCOLOR_AS_U32(amb_color) >> 8;
            SET_REG_FIELD(reg, 24, 8, rgb);
            colIdx = 1;
            break;
        }
        case GX_ALPHA0: {
            reg = __GXData->ambColor[GX_COLOR0];
            SET_REG_FIELD(reg, 8, 0, amb_color.a);
            colIdx = 0;
            break;
        }
        case GX_ALPHA1: {
            reg = __GXData->ambColor[GX_COLOR1];
            SET_REG_FIELD(reg, 8, 0, amb_color.a);
            colIdx = 1;
            break;
        }
        case GX_COLOR0A0: {
            reg = GXCOLOR_AS_U32(amb_color);
            colIdx = 0;
            break;
        }
        case GX_COLOR1A1: {
            reg = GXCOLOR_AS_U32(amb_color);
            colIdx = 1;
            break;
        }
        default: {
            return;
        }
    }

    __GXData->dirtyState |= 0x100 << colIdx;
    *(u32*)&__GXData->ambColor[colIdx] = reg;
}

void GXSetChanMatColor(GXChannelID chan, GXColor mat_color) {
    u32 reg;
    u32 rgb;
    u32 colIdx;

    switch (chan) {
        case GX_COLOR0: {
            reg = __GXData->matColor[GX_COLOR0];
            rgb = GXCOLOR_AS_U32(mat_color) >> 8;
            SET_REG_FIELD(reg, 24, 8, rgb);
            colIdx = 0;
            break;
        }
        case GX_COLOR1: {
            reg = __GXData->matColor[GX_COLOR1];
            rgb = GXCOLOR_AS_U32(mat_color) >> 8;
            SET_REG_FIELD(reg, 24, 8, rgb);
            colIdx = 1;
            break;
        }
        case GX_ALPHA0: {
            reg = __GXData->matColor[GX_COLOR0];
            SET_REG_FIELD(reg, 8, 0, mat_color.a);
            colIdx = 0;
            break;
        }
        case GX_ALPHA1: {
            reg = __GXData->matColor[GX_COLOR1];
            SET_REG_FIELD(reg, 8, 0, mat_color.a);
            colIdx = 1;
            break;
        }
        case GX_COLOR0A0: {
            reg = GXCOLOR_AS_U32(mat_color);
            colIdx = 0;
            break;
        }
        case GX_COLOR1A1: {
            reg = GXCOLOR_AS_U32(mat_color);
            colIdx = 1;
            break;
        }
        default: {
            return;
        }
    }

    __GXData->dirtyState |= 0x400 << colIdx;
    *(u32*)&__GXData->matColor[colIdx] = reg;
}

void GXSetNumChans(u8 nChans) {
    SET_REG_FIELD(__GXData->genMode, 3, 4, nChans);
    __GXData->dirtyState |= 0x1000000;
    __GXData->dirtyState |= 0x04;
}

void GXSetChanCtrl(GXChannelID chan, GXBool enable, GXColorSrc amb_src, GXColorSrc mat_src, u32 light_mask, GXDiffuseFn diff_fn, GXAttnFn attn_fn) {
    u32 idx = chan & 3;
    u32 reg = 0;

    SET_REG_FIELD(reg, 1, 1, enable);
    SET_REG_FIELD(reg, 1, 0, mat_src);
    SET_REG_FIELD(reg, 1, 6, amb_src);
    
    SET_REG_FIELD(reg, 2, 7, (attn_fn == GX_AF_SPEC) ? GX_DF_NONE : diff_fn);
    SET_REG_FIELD(reg, 1, 9, (attn_fn != GX_AF_NONE));
    SET_REG_FIELD(reg, 1, 10, (attn_fn != GX_AF_SPEC));

    SET_REG_FIELD(reg, 4, 2, light_mask & 0xF);
    SET_REG_FIELD(reg, 4, 11, (light_mask >> 4) & 0xF);

    __GXData->chanCtrl[idx] = reg;
    __GXData->dirtyState |= 0x1000 << (idx);

    if (chan == GX_COLOR0A0) {
        __GXData->chanCtrl[GX_ALPHA0] = reg;
        __GXData->dirtyState |= (1<<12);
        __GXData->dirtyState |= (1<<14);
    }
    else if (chan == GX_COLOR1A1) {
        __GXData->chanCtrl[GX_ALPHA1] = reg;
        __GXData->dirtyState |= (1<<13);
        __GXData->dirtyState |= (1<<15);
    }
}
