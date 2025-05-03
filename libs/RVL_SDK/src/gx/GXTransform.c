
#include <private/os.h>
#include <revolution/os.h>

#include <revolution/gx.h>
#include <private/gx.h>

#include <private/hollywood.h>

#include <revolution/base/PPCArch.h>

#pragma optimizewithasm off

static void WriteProjPS(const register f32 proj[6], register volatile void* dest) {
    register f32 p01, p23, p45;

#ifdef __MWERKS__
    asm volatile {
        psq_l  p01,  0(proj), 0, 0
        psq_l  p23,  8(proj), 0, 0
        psq_l  p45, 16(proj), 0, 0
        psq_st p01,  0(dest), 0, 0
        psq_st p23,  0(dest), 0, 0
        psq_st p45,  0(dest), 0, 0
    }
#endif // __MWERKS__
}

inline void Copy6Floats(const register f32* dst, register const f32* src) {
    register f32 ps_0, ps_1, ps_2;

#ifdef __MWERKS__
    asm volatile {
        psq_l  ps_0,  0(src), 0, 0
        psq_l  ps_1,  8(src), 0, 0
        psq_l  ps_2, 16(src), 0, 0
        psq_st ps_0,  0(dst), 0, 0
        psq_st ps_1,  8(dst), 0, 0
        psq_st ps_2, 16(dst), 0, 0
    }
#endif // __MWERKS__
}

static void WriteMTXPS4x3(const register f32 mtx[3][4], register volatile f32* dest) {
    register f32 a00_a01;
    register f32 a02_a03;
    register f32 a10_a11;
    register f32 a12_a13;
    register f32 a20_a21;
    register f32 a22_a23;

#ifdef __MWERKS__
    asm volatile {
        psq_l a00_a01, 0x00(mtx), 0, 0
        psq_l a02_a03, 0x08(mtx), 0, 0
        psq_l a10_a11, 0x10(mtx), 0, 0
        psq_l a12_a13, 0x18(mtx), 0, 0
        psq_l a20_a21, 0x20(mtx), 0, 0
        psq_l a22_a23, 0x28(mtx), 0, 0
        psq_st a00_a01, 0(dest), 0, 0
        psq_st a02_a03, 0(dest), 0, 0
        psq_st a10_a11, 0(dest), 0, 0
        psq_st a12_a13, 0(dest), 0, 0
        psq_st a20_a21, 0(dest), 0, 0
        psq_st a22_a23, 0(dest), 0, 0
    }
#endif // __MWERKS__
}

static void WriteMTXPS3x3from3x4(register f32 mtx[3][4], register volatile f32* dest) {
    register f32 a00_a01;
    register f32 a02_a03;
    register f32 a10_a11;
    register f32 a12_a13;
    register f32 a20_a21;
    register f32 a22_a23;

#ifdef __MWERKS__
    asm volatile {
        psq_l  a00_a01, 0x00(mtx), 0, 0
        lfs    a02_a03, 0x08(mtx)
        psq_l  a10_a11, 0x10(mtx), 0, 0
        lfs    a12_a13, 0x18(mtx)
        psq_l  a20_a21, 0x20(mtx), 0, 0
        lfs    a22_a23, 0x28(mtx)
        psq_st a00_a01, 0(dest), 0, 0
        stfs   a02_a03, 0(dest)
        psq_st a10_a11, 0(dest), 0, 0
        stfs   a12_a13, 0(dest)
        psq_st a20_a21, 0(dest), 0, 0
        stfs   a22_a23, 0(dest)
    }
#endif // __MWERKS__
}

static void WriteMTXPS4x2(const register f32 mtx[2][4], register volatile f32* dest) {
    register f32 a00_a01;
    register f32 a02_a03;
    register f32 a10_a11;
    register f32 a12_a13;

#ifdef __MWERKS__
    asm volatile {
        psq_l a00_a01, 0x00(mtx), 0, 0
        psq_l a02_a03, 0x08(mtx), 0, 0
        psq_l a10_a11, 0x10(mtx), 0, 0
        psq_l a12_a13, 0x18(mtx), 0, 0
        psq_st a00_a01, 0(dest), 0, 0
        psq_st a02_a03, 0(dest), 0, 0
        psq_st a10_a11, 0(dest), 0, 0
        psq_st a12_a13, 0(dest), 0, 0
    }
#endif // __MWERKS__
}

void __GXSetProjection() {
    u32 reg = 0x00061020;
    volatile void* GXFifoAddr = (volatile void*)GXFIFO_ADDR;
    GX_WRITE_U8(0x10);
    GX_WRITE_U32(reg);

    WriteProjPS(__GXData->projMtx, GXFifoAddr);
    GX_WRITE_U32(__GXData->projType);
}

void GXSetProjection(const Mtx44 mtx, GXProjectionType type) {
    __GXData->projType = type;
    __GXData->projMtx[0] = mtx[0][0];
    __GXData->projMtx[2] = mtx[1][1];
    __GXData->projMtx[4] = mtx[2][2];
    __GXData->projMtx[5] = mtx[2][3];
    if (type == GX_ORTHOGRAPHIC) {
        __GXData->projMtx[1] = mtx[0][3];
        __GXData->projMtx[3] = mtx[1][3];
    }
    else {
        __GXData->projMtx[1] = mtx[0][2];
        __GXData->projMtx[3] = mtx[1][2];
    }

    __GXData->dirtyState |= 0x8000000;
}


void GXSetProjectionv(const f32* ptr) {
    __GXData->projType = ptr[0] == 0.0f ? GX_PERSPECTIVE : GX_ORTHOGRAPHIC;
    Copy6Floats(__GXData->projMtx, &ptr[1]);
    __GXData->dirtyState |= 0x8000000;
}

void GXGetProjectionv(f32* ptr) {
    ptr[0] = (u32)__GXData->projType != GX_PERSPECTIVE ? 1.0f : 0.0f;

    Copy6Floats(&ptr[1], __GXData->projMtx);
}

void GXLoadPosMtxImm(Mtx mtx, u32 id) {
    u32 reg;
    u32 addr;

    addr = id * 4;
    reg = addr | 0xB0000;

    GX_WRITE_U8(0x10);
    GX_WRITE_U32(reg);

    WriteMTXPS4x3(mtx, &GXWGFifo.f32);
}

void GXLoadNrmMtxImm(const Mtx mtx, u32 id) {
    u32 reg;
    u32 addr;

    addr = id * 3 + 0x400;
    reg = addr | 0x80000;

    GX_WRITE_U8(0x10);
    GX_WRITE_U32(reg);

    WriteMTXPS3x3from3x4((void*)mtx, &GXWGFifo.f32);
}

void GXSetCurrentMtx(u32 id) {
    SET_REG_FIELD(__GXData->matIdxA, 6, 0, id);
    __GXData->dirtyState |= 0x4000000;
}

void GXLoadTexMtxImm(const f32 mtx[][4], u32 id, GXTexMtxType type) {
    u32 reg;
    u32 addr;
    u32 count;

    if (id >= GX_PTTEXMTX0) {
        addr = (id - GX_PTTEXMTX0) * 4 + 0x500;
    }
    else {
        addr = id * 4;
    }
    count = (type == GX_MTX2x4) ? 8 : 12;
    reg = addr | ((count - 1) << 16);

    GX_WRITE_U8(0x10);
    GX_WRITE_U32(reg);

    if (type == GX_MTX3x4) {
        WriteMTXPS4x3(mtx, &GXWGFifo.f32);
    }
    else {
        WriteMTXPS4x2(mtx, &GXWGFifo.f32);
    }
}

void __GXSetViewport() {
    f32 sx, sy, sz;
    f32 ox, oy, oz;
    f32 zmin, zmax;
    u32 reg;

    sx = __GXData->vpWd / 2.0f;
    sy = -__GXData->vpHt / 2.0f;
    ox = 342.0f + (__GXData->vpLeft + (__GXData->vpWd / 2.0f));
    oy = 342.0f + (__GXData->vpTop + (__GXData->vpHt / 2.0f));

    zmin = __GXData->vpNearz * __GXData->zScale;
    zmax = __GXData->vpFarz * __GXData->zScale;

    sz = zmax - zmin;
    oz = zmax + __GXData->zOffset;

    reg = 0x5101A;
    GX_WRITE_U8(0x10);
    GX_WRITE_U32(reg);
    GX_WRITE_XF_REG_F(26, sx);
    GX_WRITE_XF_REG_F(27, sy);
    GX_WRITE_XF_REG_F(28, sz);
    GX_WRITE_XF_REG_F(29, ox);
    GX_WRITE_XF_REG_F(30, oy);
    GX_WRITE_XF_REG_F(31, oz);
}

void GXSetViewportJitter(f32 left, f32 top, f32 wd, f32 ht, f32 nearz, f32 farz, u32 field) {
    if (field == 0) {
        top -= 0.5f;
    }

    __GXData->vpLeft = left;
    __GXData->vpTop = top;
    __GXData->vpWd = wd;
    __GXData->vpHt = ht;
    __GXData->vpNearz = nearz;
    __GXData->vpFarz = farz;
    
    __GXData->dirtyState |= 0x10000000;
}

void GXSetViewport(f32 left, f32 top, f32 wd, f32 ht, f32 nearz, f32 farz) {
    GXSetViewportJitter(left, top, wd, ht, nearz, farz, 1);
}

void GXGetViewportv(f32* vp) {
    Copy6Floats(vp, &__GXData->vpLeft);
}

void GXSetZScaleOffset(f32 scale, f32 offset) {
    f32 sz;
    f32 oz;
    f32 zmin, zmax;

    oz = offset * 1.6777215e7f;
    __GXData->zOffset = oz;

    sz = (scale * 1.6777215e7f) + 1.0f;
    __GXData->zScale = sz;

    zmin = __GXData->vpNearz * sz;
    zmax = __GXData->vpFarz * sz;
    sz = zmax - zmin;
    oz = oz + zmax;

    __GXData->dirtyState |= 0x10000000;
}

void GXSetScissor(u32 left, u32 top, u32 wd, u32 ht) {
    u32 tp, lf;
    u32 bm, rt;

    tp = top + 342;
    lf = left + 342;
    bm = tp + ht - 1;
    rt = lf + wd - 1;

    SET_REG_FIELD(__GXData->suScis0, 11, 0, tp);
    SET_REG_FIELD(__GXData->suScis0, 11, 12, lf);
    SET_REG_FIELD(__GXData->suScis1, 11, 0, bm);
    SET_REG_FIELD(__GXData->suScis1, 11, 12, rt);

    GX_WRITE_RAS_REG(__GXData->suScis0);
    GX_WRITE_RAS_REG(__GXData->suScis1);
    __GXData->bpSentNot = GX_FALSE;
}

void GXGetScissor(u32* left, u32* top, u32* wd, u32* ht) {
    u32 tp, lf;
    u32 bm, rt;

    tp = __GXData->suScis0 & 0x7FF;
    lf = (__GXData->suScis0 & 0x7FF000) >> 12;
    bm = __GXData->suScis1 & 0x7FF;
    rt = (__GXData->suScis1 & 0x7FF000) >> 12;

    *left = lf - 342;
    *top = tp - 342;
    *wd = rt - lf + 1;
    *ht = bm - tp + 1;
}

void GXSetScissorBoxOffset(s32 x_off, s32 y_off) {
    u32 reg = 0;
    u32 hx, hy;

    hx = (u32)(x_off + 342) >> 1;
    hy = (u32)(y_off + 342) >> 1;

    SET_REG_FIELD(reg, 10, 0, hx);
    SET_REG_FIELD(reg, 10, 10, hy);
    SET_REG_FIELD(reg, 8, 24, 0x59);
    GX_WRITE_RAS_REG(reg);
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetClipMode(GXClipMode mode) {
    GX_WRITE_XF_REG(0x1005, mode);
    __GXData->bpSentNot = GX_TRUE;
}

void __GXSetMatrixIndex(GXAttr matIdxAttr) NO_INLINE {
    if (matIdxAttr < GX_VA_TEX4MTXIDX) {
        GX_WRITE_SOME_REG4(8, 0x30, __GXData->matIdxA, -12);
        GX_WRITE_XF_REG(0x1018, __GXData->matIdxA);
    }
    else {
        GX_WRITE_SOME_REG4(8, 0x40, __GXData->matIdxB, -12);
        GX_WRITE_XF_REG(0x1019, __GXData->matIdxB);
    }
    __GXData->bpSentNot = GX_TRUE;
}
