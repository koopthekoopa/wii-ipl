#include <revolution/gx.h>
#include <private/gx.h>

static void __GXXfVtxSpecs() {
    u32 nTex, nNrm, nCols = 0;
    u32 reg;

    nNrm = __GXData->hasBiNrms ? 2 : __GXData->hasNrms ? GX_TRUE : GX_FALSE;

    nCols = (33 - (u32)__cntlzw(GET_REG_FIELD(__GXData->vcdLo, 4, 13))) >> 1;

    nTex = (33 - (u32)__cntlzw(GET_REG_FIELD(__GXData->vcdHi, 16, 0))) >> 1;

    reg = (nCols) | (nNrm << 2) | (nTex << 4);
    GX_WRITE_XF_REG(0x1008, reg);

    __GXData->bpSentNot = GX_TRUE;
}

static inline void SETVCDATTR(GXAttr Attr, GXAttrType Type) {
    switch (Attr) {
        case GX_VA_PNMTXIDX:    { SET_REG_FIELD(__GXData->vcdLo, 1, 0, Type); break; }
        case GX_VA_TEX0MTXIDX:  { SET_REG_FIELD(__GXData->vcdLo, 1, 1, Type); break; }
        case GX_VA_TEX1MTXIDX:  { SET_REG_FIELD(__GXData->vcdLo, 1, 2, Type); break; }
        case GX_VA_TEX2MTXIDX:  { SET_REG_FIELD(__GXData->vcdLo, 1, 3, Type); break; }
        case GX_VA_TEX3MTXIDX:  { SET_REG_FIELD(__GXData->vcdLo, 1, 4, Type); break; }
        case GX_VA_TEX4MTXIDX:  { SET_REG_FIELD(__GXData->vcdLo, 1, 5, Type); break; }
        case GX_VA_TEX5MTXIDX:  { SET_REG_FIELD(__GXData->vcdLo, 1, 6, Type); break; }
        case GX_VA_TEX6MTXIDX:  { SET_REG_FIELD(__GXData->vcdLo, 1, 7, Type); break; }
        case GX_VA_TEX7MTXIDX:  { SET_REG_FIELD(__GXData->vcdLo, 1, 8, Type); break; }
        case GX_VA_POS:         { SET_REG_FIELD(__GXData->vcdLo, 2, 9, Type); break; }
        case GX_VA_NRM: {
            if (Type != GX_NONE) {
                __GXData->hasNrms = GX_TRUE;
                __GXData->hasBiNrms = GX_FALSE;
                __GXData->nrmType = Type;
            }
            else {
                __GXData->hasNrms = GX_FALSE;
            }
            break;
        }
        case GX_VA_NBT: {
            if (Type != GX_NONE) {
                __GXData->hasBiNrms = GX_TRUE;
                __GXData->hasNrms = GX_FALSE;
                __GXData->nrmType = Type;
            }
            else {
                __GXData->hasBiNrms = GX_FALSE;
            }
            break;
        }
        case GX_VA_CLR0:        { SET_REG_FIELD(__GXData->vcdLo, 2, 13, Type); break; }
        case GX_VA_CLR1:        { SET_REG_FIELD(__GXData->vcdLo, 2, 15, Type); break; }
        case GX_VA_TEX0:        { SET_REG_FIELD(__GXData->vcdHi, 2, 0, Type); break; }
        case GX_VA_TEX1:        { SET_REG_FIELD(__GXData->vcdHi, 2, 2, Type); break; }
        case GX_VA_TEX2:        { SET_REG_FIELD(__GXData->vcdHi, 2, 4, Type); break; }
        case GX_VA_TEX3:        { SET_REG_FIELD(__GXData->vcdHi, 2, 6, Type); break; }
        case GX_VA_TEX4:        { SET_REG_FIELD(__GXData->vcdHi, 2, 8, Type); break; }
        case GX_VA_TEX5:        { SET_REG_FIELD(__GXData->vcdHi, 2, 10, Type); break; }
        case GX_VA_TEX6:        { SET_REG_FIELD(__GXData->vcdHi, 2, 12, Type); break; }
        case GX_VA_TEX7:        { SET_REG_FIELD(__GXData->vcdHi, 2, 14, Type); break; }
    }
}

void GXSetVtxDesc(GXAttr attr, GXAttrType type) {
    SETVCDATTR(attr, type);

    if (__GXData->hasNrms || __GXData->hasBiNrms) {
        SET_REG_FIELD(__GXData->vcdLo, 2, 11, __GXData->nrmType);
    }
    else {
        SET_REG_FIELD(__GXData->vcdLo, 2, 11, 0);
    }

    __GXData->dirtyState |= 8;
}

void __GXSetVCD() {
    GX_WRITE_SOME_REG4(8, 0x50, __GXData->vcdLo, -12);
    GX_WRITE_SOME_REG4(8, 0x60, __GXData->vcdHi, -12);

    __GXXfVtxSpecs();
}

void __GXCalculateVLim() {
    static u8 tbl1[] = { 0, 4,  1, 2 };
    static u8 tbl2[] = { 0, 8,  1, 2 };
    static u8 tbl3[] = { 0, 12, 1, 2 };

    GXCompCnt nc = GX_POS_XY;

    u32 vlm;
    u32 vl, vh, va;

    u32 b;

    if (__GXData->vNum != 0) {
        vl = __GXData->vcdLo;
        vh = __GXData->vcdHi;
        va = __GXData->vatA[0];
        nc = GET_REG_FIELD(va, 1, 9);

        vlm  = GET_REG_FIELD(vl, 1, 0);
        vlm += (u8)GET_REG_FIELD(vl, 1, 1);
        vlm += (u8)GET_REG_FIELD(vl, 1, 2);
        vlm += (u8)GET_REG_FIELD(vl, 1, 3);
        vlm += (u8)GET_REG_FIELD(vl, 1, 4);
        vlm += (u8)GET_REG_FIELD(vl, 1, 5);
        vlm += (u8)GET_REG_FIELD(vl, 1, 6);
        vlm += (u8)GET_REG_FIELD(vl, 1, 7);
        vlm += (u8)GET_REG_FIELD(vl, 1, 8);
        vlm += tbl3[(u8)GET_REG_FIELD(vl, 2, 9)];
        
        if (nc == 1) {
            b = 3;
        }
        else {
            b = 1;
        }

        vlm += tbl3[(u8)GET_REG_FIELD(vl, 2, 11)] * b;
        vlm += tbl1[(u8)GET_REG_FIELD(vl, 2, 13)];
        vlm += tbl1[(u8)GET_REG_FIELD(vl, 2, 15)];
        vlm += tbl2[(u8)GET_REG_FIELD(vh, 2, 0)];
        vlm += tbl2[(u8)GET_REG_FIELD(vh, 2, 2)];
        vlm += tbl2[(u8)GET_REG_FIELD(vh, 2, 4)];
        vlm += tbl2[(u8)GET_REG_FIELD(vh, 2, 6)];
        vlm += tbl2[(u8)GET_REG_FIELD(vh, 2, 8)];
        vlm += tbl2[(u8)GET_REG_FIELD(vh, 2, 10)];
        vlm += tbl2[(u8)GET_REG_FIELD(vh, 2, 12)];
        vlm += tbl2[(u8)GET_REG_FIELD(vh, 2, 14)];

        __GXData->vLim = vlm;
    }
}

void GXClearVtxDesc() {
    __GXData->vcdLo = 0;

    SET_REG_FIELD(__GXData->vcdLo, 2, 9, 1);

    __GXData->vcdHi = 0;

    __GXData->hasNrms = GX_FALSE;
    __GXData->hasBiNrms = GX_FALSE;

    __GXData->dirtyState |= 8;
}

static inline void SETVAT(u32* va, u32* vb, u32* vc, GXAttr attr, GXCompCnt cnt, GXCompType type, u8 shft) {
    switch (attr) {
        case GX_VA_POS: {
            SET_REG_FIELD(*va, 1, 0, cnt);
            SET_REG_FIELD(*va, 3, 1, type);
            SET_REG_FIELD(*va, 5, 4, shft);
            break;
        }
        case GX_VA_NRM:
        case GX_VA_NBT: {
            SET_REG_FIELD(*va, 3, 10, type);
            if (cnt == GX_NRM_NBT3) {
                SET_REG_FIELD(*va, 1, 9, 1);
                SET_REG_FIELD(*va, 1, 31, 1);
            }
            else {
                SET_REG_FIELD(*va, 1, 9, cnt);
                SET_REG_FIELD(*va, 1, 31, 0);
            }
            break;
        }
        case GX_VA_CLR0: {
            SET_REG_FIELD(*va, 1, 13, cnt);
            SET_REG_FIELD(*va, 3, 14, type);
            break;
        }
        case GX_VA_CLR1: {
            SET_REG_FIELD(*va, 1, 0x11, cnt);
            SET_REG_FIELD(*va, 3, 18, type);
            break;
        }
        case GX_VA_TEX0: {
            SET_REG_FIELD(*va, 1, 0x15, cnt);
            SET_REG_FIELD(*va, 3, 0x16, type);
            SET_REG_FIELD(*va, 5, 0x19, shft);
            break;
        }
        case GX_VA_TEX1: {
            SET_REG_FIELD(*vb, 1, 0, cnt);
            SET_REG_FIELD(*vb, 3, 1, type);
            SET_REG_FIELD(*vb, 5, 4, shft);
            break;
        }
        case GX_VA_TEX2: {
            SET_REG_FIELD(*vb, 1, 9, cnt);
            SET_REG_FIELD(*vb, 3, 10, type);
            SET_REG_FIELD(*vb, 5, 13, shft);
            break;
        }
        case GX_VA_TEX3: {
            SET_REG_FIELD(*vb, 1, 18, cnt);
            SET_REG_FIELD(*vb, 3, 19, type);
            SET_REG_FIELD(*vb, 5, 22, shft);
            break;
        }
        case GX_VA_TEX4: {
            SET_REG_FIELD(*vb, 1, 27, cnt);
            SET_REG_FIELD(*vb, 3, 28, type);
            SET_REG_FIELD(*vc, 5, 0, shft);
            break;
        }
        case GX_VA_TEX5: {
            SET_REG_FIELD(*vc, 1, 5, cnt);
            SET_REG_FIELD(*vc, 3, 6, type);
            SET_REG_FIELD(*vc, 5, 9, shft);
            break;
        }
        case GX_VA_TEX6: {
            SET_REG_FIELD(*vc, 1, 14, cnt);
            SET_REG_FIELD(*vc, 3, 15, type);
            SET_REG_FIELD(*vc, 5, 18, shft);
            break;
        }
        case GX_VA_TEX7: {
            SET_REG_FIELD(*vc, 1, 23, cnt);
            SET_REG_FIELD(*vc, 3, 24, type);
            SET_REG_FIELD(*vc, 5, 27, shft);
            break;
        }
    }
}

void GXSetVtxAttrFmt(GXVtxFmt vtxfmt, GXAttr attr, GXCompCnt cnt, GXCompType type, u8 frac) {
    u32* va;
    u32* vb;
    u32* vc;

    va = &__GXData->vatA[vtxfmt];
    vb = &__GXData->vatB[vtxfmt];
    vc = &__GXData->vatC[vtxfmt];

    SETVAT(va, vb, vc, attr, cnt, type, frac);

    __GXData->dirtyState |= 0x10;
    __GXData->dirtyVAT |= (u8)(1 << (u8)vtxfmt);
}

void GXSetVtxAttrFmtv(GXVtxFmt vtxfmt, const GXVtxAttrFmtList* list) {
    u32* va;
    u32* vb;
    u32* vc;

    va = &__GXData->vatA[vtxfmt];
    vb = &__GXData->vatB[vtxfmt];
    vc = &__GXData->vatC[vtxfmt];

    while (list->attr != GX_VA_NULL) {
        SETVAT(va, vb, vc, list->attr, list->cnt, list->type, list->frac);
        list++;
    }
    __GXData->dirtyState |= 0x10;
    __GXData->dirtyVAT |= (u8)(1 << (u8)vtxfmt);
}

void __GXSetVAT() {
    s32 i;
    u32 dirty = __GXData->dirtyVAT;
    
    i = 0;
    do {
        if (dirty & 1) {
            GX_WRITE_SOME_REG4(8, i | 0x70, __GXData->vatA[i], i - 12);
            GX_WRITE_SOME_REG4(8, i | 0x80, __GXData->vatB[i], i - 12);
            GX_WRITE_SOME_REG4(8, i | 0x90, __GXData->vatC[i], i - 12);
        }

        dirty >>= 1;
        i++;
    } while (dirty != 0);

    GX_WRITE_U8(0);

    __GXData->dirtyVAT = 0;
}

void GXSetArray(GXAttr attr, void* base_ptr, u8 stride) {
    GXAttr cpAttr;
    u32 phyAddr;

    if (attr == GX_VA_NBT) {
        attr = GX_VA_NRM;
    }

    cpAttr = attr - GX_VA_POS;
    phyAddr = (u32)base_ptr & 0x3FFFFFFF;

    GX_WRITE_SOME_REG2(8, cpAttr | 0xA0, phyAddr, cpAttr - 12);
    GX_WRITE_SOME_REG3(8, cpAttr | 0xB0, stride, cpAttr - 12);
}

void GXInvalidateVtxCache() {
    GX_WRITE_U8(0x48);
}

void GXSetTexCoordGen2(GXTexCoordID dst_coord, GXTexGenType func, GXTexGenSrc src_param, u32 mtx, GXBool normalize, u32 pt_texmtx) {
    u32 reg = 0;
    u32 row;
    u32 form;
    GXAttr mtxIdAttr;

    form = 0;
    row = 5;
    switch (src_param) {
        case GX_TG_POS:     { row = 0; form = 1; break; }
        case GX_TG_NRM:     { row = 1; form = 1; break; }
        case GX_TG_BINRM:   { row = 3; form = 1; break; }
        case GX_TG_TANGENT: { row = 4; form = 1; break; }
        case GX_TG_COLOR0:  { row = 2; break; }
        case GX_TG_COLOR1:  { row = 2; break; }
        case GX_TG_TEX0:    { row = 5; break; }
        case GX_TG_TEX1:    { row = 6; break; }
        case GX_TG_TEX2:    { row = 7; break; }
        case GX_TG_TEX3:    { row = 8; break; }
        case GX_TG_TEX4:    { row = 9; break; }
        case GX_TG_TEX5:    { row = 10; break; }
        case GX_TG_TEX6:    { row = 11; break; }
        case GX_TG_TEX7:    { row = 12; break; }
        default: {
            break;
        }
    }

    switch (func) {
        case GX_TG_MTX2x4: {
            SET_REG_FIELD(reg, 1, 1, 0);
            SET_REG_FIELD(reg, 1, 2, form);
            SET_REG_FIELD(reg, 3, 4, 0);
            SET_REG_FIELD(reg, 5, 7, row);
            break;
        }
        case GX_TG_MTX3x4: {
            SET_REG_FIELD(reg, 1, 1, 1);
            SET_REG_FIELD(reg, 1, 2, form);
            SET_REG_FIELD(reg, 3, 4, 0);
            SET_REG_FIELD(reg, 5, 7, row);
            break;
        }
        case GX_TG_BUMP0:
        case GX_TG_BUMP1:
        case GX_TG_BUMP2:
        case GX_TG_BUMP3:
        case GX_TG_BUMP4:
        case GX_TG_BUMP5:
        case GX_TG_BUMP6:
        case GX_TG_BUMP7: {
            SET_REG_FIELD(reg, 1, 1, 0);
            SET_REG_FIELD(reg, 1, 2, form);
            SET_REG_FIELD(reg, 3, 4, 1);
            SET_REG_FIELD(reg, 5, 7, row);
            SET_REG_FIELD(reg, 3, 12, src_param - 12);
            SET_REG_FIELD(reg, 3, 15, func - 2);
            break;
        }
        case GX_TG_SRTG: {
            SET_REG_FIELD(reg, 1, 1, 0);
            SET_REG_FIELD(reg, 1, 2, form);
            if (src_param == GX_TG_COLOR0) {
                SET_REG_FIELD(reg, 3, 4, 2);
            }
            else {
                SET_REG_FIELD(reg, 3, 4, 3);
            }
            SET_REG_FIELD(reg, 5, 7, 2);
            break;
        }
        default: {
            break;
        }
    }

    __GXData->texGenCtrl[dst_coord] = reg;
    __GXData->dirtyState |= (0x10000 << dst_coord);

    reg = 0;
    SET_REG_FIELD(reg, 6, 0, pt_texmtx - 64);
    SET_REG_FIELD(reg, 1, 8, normalize);
    
    __GXData->texGenCtrl2[dst_coord] = reg;

    switch (dst_coord) {
        case GX_TEXCOORD0: { SET_REG_FIELD(__GXData->matIdxA, 6, 6, mtx);  break; }
        case GX_TEXCOORD1: { SET_REG_FIELD(__GXData->matIdxA, 6, 12, mtx); break; }
        case GX_TEXCOORD2: { SET_REG_FIELD(__GXData->matIdxA, 6, 18, mtx); break; }
        case GX_TEXCOORD3: { SET_REG_FIELD(__GXData->matIdxA, 6, 24, mtx); break; }
        case GX_TEXCOORD4: { SET_REG_FIELD(__GXData->matIdxB, 6, 0, mtx);  break; }
        case GX_TEXCOORD5: { SET_REG_FIELD(__GXData->matIdxB, 6, 6, mtx);  break; }
        case GX_TEXCOORD6: { SET_REG_FIELD(__GXData->matIdxB, 6, 12, mtx); break; }
        default:           { SET_REG_FIELD(__GXData->matIdxB, 6, 18, mtx); break; }
    }

    mtxIdAttr = (GXAttr)(GX_VA_TEX0MTXIDX + (dst_coord - GX_TEXCOORD0));
    __GXData->dirtyState |= 0x4000000;
}

void GXSetNumTexGens(u8 nTexGens) {
    SET_REG_FIELD(__GXData->genMode, 4, 0, nTexGens);
    __GXData->dirtyState |= 0x2000004;
}
