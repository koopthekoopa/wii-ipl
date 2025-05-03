#include <private/os.h>
#include <revolution/os.h>

#include <revolution/gx.h>
#include <private/gx.h>

#include <private/hollywood.h>

#include <revolution/base/PPCArch.h>

void __GXSetGenMode();
void __GXSendFlushPrim();

inline void __GXSetAmbMat(u32 amState) {
    if (amState & 0x100) {
        GX_WRITE_XF_REG(0x100A, __GXData->ambColor[0]);
    }
    
    if (amState & 0x200) {
        GX_WRITE_XF_REG(0x100B, __GXData->ambColor[1]);
    }

    if (amState & 0x400) {
        GX_WRITE_XF_REG(0x100C, __GXData->matColor[0]);
    }
    
    if (amState & 0x800) {
        GX_WRITE_XF_REG(0x100D, __GXData->matColor[1]);
    }
}

inline void __GXSetLightChan(volatile s32 dirtyFlags) {
    int i;
    u32 bits;
    u32 addr = 0x100E;

    if (dirtyFlags & 0x1000000) {
        u32 colors = ((__GXData->genMode & 0x70) >> 4);
        GX_WRITE_XF_REG(0x1009, colors);
    }

    bits = dirtyFlags;
    bits = (bits >> 12) & 0xF;
    i = 0;
    for (; bits != 0; i++, addr++, bits >>= 1) {
        if (bits & 1) {
            GX_WRITE_XF_REG(addr, __GXData->chanCtrl[i]);
        }
    }
}

inline void __GXSetTexGen(volatile s32 dirtyFlags) {
    int i;
    u32 bits;
    u32 taddr = 0x1040;
    u32 dtaddr;

    if (dirtyFlags & 0x2000000) {
        u32 gens = __GXData->genMode & 0xF;
        GX_WRITE_XF_REG(0x103F, gens);
    }

    bits = dirtyFlags;
    bits = (bits >> 16) & 0xFF;
    i = 0;
    for (; bits != 0; taddr++, i++, bits >>= 1) {
        dtaddr = taddr + 0x1050 - 0x1040;
        if (bits & 1) {
            GX_WRITE_XF_REG(taddr, __GXData->texGenCtrl[i]);
            GX_WRITE_XF_REG(dtaddr, __GXData->texGenCtrl2[i]);
        }
    }
}

void __GXSetDirtyState() {
    u32 dState = __GXData->dirtyState;

    if (dState & 1) {
        __GXSetSUTexRegs();
    }
    if (dState & 2) {
        __GXUpdateBPMask();
    }
    if (dState & 4) {
        __GXSetGenMode();
    }
    if (dState & 8) {
        __GXSetVCD();
    }
    if (dState & 0x10) {
        __GXSetVAT();
    }
    if (dState & 0x18) {
        __GXCalculateVLim();
    }

    dState &= 0xFFFFFF00;

    if (dState) {
        u32 dStateLocal;

        dStateLocal = dState & 0x00000F00;

        if (dStateLocal) {
            __GXSetAmbMat(dStateLocal);
        }
        
        dStateLocal = dState & (0x01000000|0x0000F000);

        if (dStateLocal) {
            __GXSetLightChan(dStateLocal);
        }

        dStateLocal = dState & (0x02000000|0x00FF0000);

        if (dStateLocal) {
            __GXSetTexGen(dStateLocal);
        }

        dStateLocal = dState & 0x04000000;
        if (dStateLocal) {
            __GXSetMatrixIndex(GX_VA_PNMTXIDX);
            __GXSetMatrixIndex(GX_VA_TEX4MTXIDX);
        }

        dStateLocal = dState & 0x10000000;
        if (dStateLocal) {
            __GXSetViewport();
        }

        dStateLocal = dState & 0x8000000;
        if (dStateLocal) {
            __GXSetProjection();
        } 

        __GXData->bpSentNot = GX_TRUE;
    }

    __GXData->dirtyState = 0;
}

void GXBegin(GXPrimitive type, GXVtxFmt vtxfmt, u16 nverts) {
    if (__GXData->dirtyState != 0) {
        __GXSetDirtyState();
    }
    if (*(u32*)&__GXData->vNumNot == 0) {  // checks both vNum and bpSentNot
        __GXSendFlushPrim();
    }

    GX_WRITE_U8(vtxfmt | type);
    GX_WRITE_U16(nverts);
}

void __GXSendFlushPrim() {
    u32 i;
    u32 numD = __GXData->vNum * __GXData->vLim;

    GX_WRITE_U8(0x98);
    GX_WRITE_U16(__GXData->vNum);

    for (i = 0; i < numD; i += 4) {
        GX_WRITE_U32(0);
    }

    __GXData->bpSentNot = GX_TRUE;
}

void GXSetLineWidth(u8 width, GXTexOffset texOffsets) {
    SET_REG_FIELD(__GXData->lpSize, 8, 0, width);
    SET_REG_FIELD(__GXData->lpSize, 3, 16, texOffsets);
    GX_WRITE_RAS_REG(__GXData->lpSize);
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetPointSize(u8 pointSize, GXTexOffset texOffsets) {
    SET_REG_FIELD(__GXData->lpSize, 8, 8, pointSize);
    SET_REG_FIELD(__GXData->lpSize, 3, 19, texOffsets);
    GX_WRITE_RAS_REG(__GXData->lpSize);
    __GXData->bpSentNot = GX_FALSE;
}

void GXEnableTexOffsets(GXTexCoordID coord, u8 line_enable, u8 point_enable) {
    SET_REG_FIELD(__GXData->suTs0[coord], 1, 18, line_enable);
    SET_REG_FIELD(__GXData->suTs0[coord], 1, 19, point_enable);
    GX_WRITE_RAS_REG(__GXData->suTs0[coord]);
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetCullMode(GXCullMode mode) {
    GXCullMode hwMode = (GXCullMode)(((mode & 0x1)<<1) | ((mode & 0x2)>>1));

    SET_REG_FIELD(__GXData->genMode, 2, 14, hwMode);
    __GXData->dirtyState |= 4;
}

void GXSetCoPlanar(GXBool enable) {
    u32 reg;

    SET_REG_FIELD(__GXData->genMode, 1, 19, enable);
    reg = 0xFE080000;
    GX_WRITE_RAS_REG(reg);
    GX_WRITE_RAS_REG(__GXData->genMode);
}

void __GXSetGenMode() {
    GX_WRITE_RAS_REG(__GXData->genMode);
    __GXData->bpSentNot = GX_FALSE;
}
