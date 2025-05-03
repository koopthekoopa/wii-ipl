#include <private/os.h>
#include <revolution/os.h>

#include <revolution/gx.h>
#include <private/gx.h>

#include <private/hollywood.h>

#include <revolution/base/PPCArch.h>

#define GX_WRITE_SOME_REG5(a, b) {  \
    GX_WRITE_U8(a);                 \
    GX_WRITE_U32(b);                \
}

void GXSetTevIndirect(GXTevStageID tev_stage, GXIndTexStageID ind_stage, GXIndTexFormat format, GXIndTexBiasSel bias_sel, GXIndTexMtxID matrix_sel, GXIndTexWrap wrap_s, GXIndTexWrap wrap_t, GXBool add_prev, GXBool utc_lod, GXIndTexAlphaSel alpha_sel) NO_INLINE {
    u32 reg = 0;

    SET_REG_FIELD(reg, 2, 0, ind_stage);
    SET_REG_FIELD(reg, 2, 2, format);
    SET_REG_FIELD(reg, 3, 4, bias_sel);
    SET_REG_FIELD(reg, 2, 7, alpha_sel);
    SET_REG_FIELD(reg, 4, 9, matrix_sel);
    SET_REG_FIELD(reg, 3, 13, wrap_s);
    SET_REG_FIELD(reg, 3, 16, wrap_t);
    SET_REG_FIELD(reg, 1, 19, utc_lod);
    SET_REG_FIELD(reg, 1, 20, add_prev);
    SET_REG_FIELD(reg, 8, 24, tev_stage + 16);

    GX_WRITE_SOME_REG5(GX_LOAD_BP_REG, reg);

    __GXData->bpSentNot = GX_FALSE;
}

void GXSetIndTexMtx(GXIndTexMtxID mtx_id, const Mtx23 offset, s8 scale_exp) {
    s32 mtx[6];
    u32 reg;
    u32 id;

    switch (mtx_id) {
        case GX_ITM_0:
        case GX_ITM_1:
        case GX_ITM_2: {
            id = mtx_id - 1;
            break;
        }
        case GX_ITM_S0:
        case GX_ITM_S1:
        case GX_ITM_S2: {
            id = mtx_id - 5;
            break;
        }
        case GX_ITM_T0:
        case GX_ITM_T1:
        case GX_ITM_T2: {
            id = mtx_id - 9;
            break;
        }
        default: {
            id = 0;
            break;
        }
    }

    mtx[0] = (int)(1024.0f * offset[0][0]) & 0x7FF;
    mtx[1] = (int)(1024.0f * offset[1][0]) & 0x7FF;
    scale_exp += 17;
    reg = 0;
    SET_REG_FIELD(reg, 11, 0, mtx[0]);
    SET_REG_FIELD(reg, 11, 11, mtx[1]);
    SET_REG_FIELD(reg, 2, 22, scale_exp & 3);
    SET_REG_FIELD(reg, 8, 24, id * 3 + 6);
    GX_WRITE_SOME_REG5(GX_LOAD_BP_REG, reg);

    mtx[2] = (int)(1024.0f * offset[0][1]) & 0x7FF;
    mtx[3] = (int)(1024.0f * offset[1][1]) & 0x7FF;
    reg = 0;
    SET_REG_FIELD(reg, 11, 0, mtx[2]);
    SET_REG_FIELD(reg, 11, 11, mtx[3]);
    SET_REG_FIELD(reg, 2, 22, (scale_exp >> 2) & 3);
    SET_REG_FIELD(reg, 8, 24, id * 3 + 7);
    GX_WRITE_SOME_REG5(GX_LOAD_BP_REG, reg);

    mtx[4] = (int)(1024.0f * offset[0][2]) & 0x7FF;
    mtx[5] = (int)(1024.0f * offset[1][2]) & 0x7FF;
    reg = 0;
    SET_REG_FIELD(reg, 11, 0, mtx[4]);
    SET_REG_FIELD(reg, 11, 11, mtx[5]);
    SET_REG_FIELD(reg, 2, 22, (scale_exp >> 4) & 3);
    SET_REG_FIELD(reg, 8, 24, id * 3 + 8);
    GX_WRITE_SOME_REG5(GX_LOAD_BP_REG, reg);

    __GXData->bpSentNot = GX_FALSE;
}

void GXSetIndTexCoordScale(GXIndTexStageID ind_state, GXIndTexScale scale_s, GXIndTexScale scale_t) {
    switch (ind_state) {
        case GX_INDTEXSTAGE0: {
            SET_REG_FIELD(__GXData->IndTexScale0, 4, 0, scale_s);
            SET_REG_FIELD(__GXData->IndTexScale0, 4, 4, scale_t);
            SET_REG_FIELD(__GXData->IndTexScale0, 8, 24, 0x25);
            GX_WRITE_SOME_REG5(GX_LOAD_BP_REG, __GXData->IndTexScale0);
            break;
        }
        case GX_INDTEXSTAGE1: {
            SET_REG_FIELD(__GXData->IndTexScale0, 4, 8, scale_s);
            SET_REG_FIELD(__GXData->IndTexScale0, 4, 12, scale_t);
            SET_REG_FIELD(__GXData->IndTexScale0, 8, 24, 0x25);
            GX_WRITE_SOME_REG5(GX_LOAD_BP_REG, __GXData->IndTexScale0);
            break;
        }
        case GX_INDTEXSTAGE2: {
            SET_REG_FIELD(__GXData->IndTexScale1, 4, 0, scale_s);
            SET_REG_FIELD(__GXData->IndTexScale1, 4, 4, scale_t);
            SET_REG_FIELD(__GXData->IndTexScale1, 8, 24, 0x26);
            GX_WRITE_SOME_REG5(GX_LOAD_BP_REG, __GXData->IndTexScale1);
            break;
        }
        case GX_INDTEXSTAGE3: {
            SET_REG_FIELD(__GXData->IndTexScale1, 4, 8, scale_s);
            SET_REG_FIELD(__GXData->IndTexScale1, 4, 12, scale_t);
            SET_REG_FIELD(__GXData->IndTexScale1, 8, 24, 0x26);
            GX_WRITE_SOME_REG5(GX_LOAD_BP_REG, __GXData->IndTexScale1);
            break;
        }
        default: {
            break;
        }
    }

    __GXData->bpSentNot = GX_FALSE;
}

void GXSetIndTexOrder(GXIndTexStageID ind_stage, GXTexCoordID tex_coord, GXTexMapID tex_map) {
    if (tex_map == GX_TEXMAP_NULL) {
        tex_map = GX_TEXMAP0;
    }

    if (tex_coord == GX_TEXCOORD_NULL) {
        tex_coord = GX_TEXCOORD0;
    }

    switch (ind_stage) {
        case GX_INDTEXSTAGE0: {
            SET_REG_FIELD(__GXData->iref, 3, 0, tex_map);
            SET_REG_FIELD(__GXData->iref, 3, 3, tex_coord);
            break;
        }
        case GX_INDTEXSTAGE1: {
            SET_REG_FIELD(__GXData->iref, 3, 6, tex_map);
            SET_REG_FIELD(__GXData->iref, 3, 9, tex_coord);
            break;
        }
        case GX_INDTEXSTAGE2: {
            SET_REG_FIELD(__GXData->iref, 3, 12, tex_map);
            SET_REG_FIELD(__GXData->iref, 3, 15, tex_coord);
            break;
        }
        case GX_INDTEXSTAGE3: {
            SET_REG_FIELD(__GXData->iref, 3, 18, tex_map);
            SET_REG_FIELD(__GXData->iref, 3, 21, tex_coord);
            break;
        }
        default: {
            break;
        }
    }
    GX_WRITE_SOME_REG5(GX_LOAD_BP_REG, __GXData->iref);

    __GXData->dirtyState |= 3;

    __GXData->bpSentNot = GX_FALSE;
}

void GXSetNumIndStages(u8 nIndStages) {
    SET_REG_FIELD(__GXData->genMode, 3, 16, nIndStages);
    __GXData->dirtyState |= 6;
}

void GXSetTevDirect(GXTevStageID tev_stage) {
    GXSetTevIndirect(tev_stage, GX_INDTEXSTAGE0, GX_ITF_8, GX_ITB_NONE, GX_ITM_OFF, GX_ITW_OFF, GX_ITW_OFF, GX_FALSE, GX_FALSE, GX_ITBA_OFF);
}

void __GXUpdateBPMask() {}

void __GXSetIndirectMask(u32 mask) {
    SET_REG_FIELD(__GXData->bpMask, 8, ~0xFF, mask);

    GX_WRITE_SOME_REG5(GX_LOAD_BP_REG, __GXData->bpMask);

    __GXData->bpSentNot = GX_FALSE;
}

void __GXFlushTextureState() {
    GX_WRITE_SOME_REG5(GX_LOAD_BP_REG, __GXData->bpMask);

    __GXData->bpSentNot = GX_FALSE;
}
