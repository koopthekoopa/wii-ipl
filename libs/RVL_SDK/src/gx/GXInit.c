#include <revolution/gx.h>
#include <private/gx.h>

#include <revolution/os.h>
#include <private/os.h>

#include <revolution/vi.h>

#include <revolution/base/PPCArch.h>

#include <revolution/verdefs.h>

SDKDefineVersion(GX, "Apr 20 2010", "11:20:31");

static GXFifoObj FifoObj;

static GXData gxData;
GXData* const __GXData = &gxData;

// these are supposed to be in-function static, but it messed up sbss order
static u32 shutdownFuncRegistered;
static u32 calledOnce;
static OSTime time;
static u32 peCount;

void* __memReg;
void* __peReg;
void* __cpReg;
void* __piReg;

static u16 DefaultTexData[] ALIGN32 = {
    0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF,
    0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF,
};

static GXVtxAttrFmtList GXDefaultVATList[] = {
    {GX_VA_POS, GX_POS_XYZ, GX_F32, 0},
    {GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0},
    {GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0},
    {GX_VA_CLR1, GX_CLR_RGBA, GX_RGBA8, 0},
    {GX_VA_TEX0, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX1, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX2, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX3, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX4, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX5, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX6, GX_TEX_ST, GX_F32, 0},
    {GX_VA_TEX7, GX_TEX_ST, GX_F32, 0},
    {GX_VA_NULL, 0, 0, 0},
};

static f32 GXDefaultProjData[] = {1.0f, 0.0f, 1.0f, 0.0f, -1.0f, -2.0f, 0.0f};

static u32 GXTexRegionAddrTable[] = {
    0x00000, 0x10000, 0x20000, 0x30000, 0x40000, 0x50000, 0x60000, 0x70000, 0x08000, 0x18000,
    0x28000, 0x38000, 0x48000, 0x58000, 0x68000, 0x78000, 0x00000, 0x90000, 0x20000, 0xB0000,
    0x40000, 0x98000, 0x60000, 0xB8000, 0x80000, 0x10000, 0xA0000, 0x30000, 0x88000, 0x50000,
    0xA8000, 0x70000, 0x00000, 0x90000, 0x20000, 0xB0000, 0x40000, 0x90000, 0x60000, 0xB0000,
    0x80000, 0x10000, 0xA0000, 0x30000, 0x80000, 0x50000, 0xA0000, 0x70000,
};

static BOOL __GXShutdown(BOOL final, u32 event);

OSShutdownFunctionInfo GXShutdownFuncInfo = {__GXShutdown, 0x7F, NULL, NULL};

static void EnableWriteGatherPipe() {
    u32 hid2 = PPCMfhid2();

    PPCMtwpar(OSUncachedToPhysical((void*)GXFIFO_ADDR));
    hid2 |= 0x40000000;
    PPCMthid2(hid2);
}

static void DisableWriteGatherPipe() {
    u32 hid2 = PPCMfhid2();

    hid2 &= ~0x40000000;
    PPCMthid2(hid2);
}

static GXTexRegion*__GXDefaultTexRegionCallback(const GXTexObj* t_obj, GXTexMapID id) {
    GXTexFmt fmt;
    u8 mm;

    fmt = GXGetTexObjFmt(t_obj);
    mm = GXGetTexObjMipMap(t_obj);
    id = (GXTexMapID)(id % GX_MAX_TEXMAP);

    switch (fmt) {
        case GX_TF_RGBA8: {
            if (mm) {
                return &__GXData->TexRegions2[id];
            }
            return &__GXData->TexRegions1[id];
        }
        case GX_TF_C4:
        case GX_TF_C8:
        case GX_TF_C14X2: {
            return &__GXData->TexRegions0[id];
        }
        default: {
            if (mm) {
                return &__GXData->TexRegions1[id];
            }
            return &__GXData->TexRegions0[id];
        }
    }
}

static GXTlutRegion* __GXDefaultTlutRegionCallback(u32 idx) {
    if (idx >= 20) {
        return NULL;
    }
    return &__GXData->TlutRegions[idx];
}

static BOOL __GXShutdown(BOOL final, u32 event) {
    u32 reg;
    u32 peCountNew;
    OSTime timeNew;

    if (!final) {
        if (!calledOnce) {
            peCount = __GXReadMEMCounterU32(0x28, 0x27);
            time = OSGetTime();
            calledOnce = 1;
            return FALSE;
        }

        timeNew = OSGetTime();
        peCountNew = __GXReadMEMCounterU32(0x28, 0x27);

        if (timeNew - time < 10) {
            return FALSE;
        }

        if (peCountNew != peCount) {
            peCount = peCountNew;
            time = timeNew;
            return FALSE;
        }
    }
    else {
        GXSetBreakPtCallback(NULL);
        GXSetDrawSyncCallback(NULL);
        GXSetDrawDoneCallback(NULL);

        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);
        GX_WRITE_U32(0);

        PPCSync();

        reg = 0;
        GX_SET_CP_REG(1, reg);

        reg = 3;
        GX_SET_CP_REG(2, reg);

        __GXData->abtWaitPECopy = GX_TRUE;

        __GXAbort();
    }

    return TRUE;
}

void __GXInitRevisionBits() {
    u32 i;

    for (i = 0; i < 8; i++) {
        s32 regAddr;
        SET_REG_FIELD(__GXData->vatA[i], 1, 30, 1);
        SET_REG_FIELD(__GXData->vatB[i], 1, 31, 1);

        GX_WRITE_U8(0x8);
        GX_WRITE_U8(i | 0x80);
        GX_WRITE_U32(__GXData->vatB[i]);
        regAddr = i - 12;
    }

    {
        u32 reg1 = 0;
        u32 reg2 = 0;

        SET_REG_FIELD(reg1, 1, 0, 1);
        SET_REG_FIELD(reg1, 1, 1, 1);
        SET_REG_FIELD(reg1, 1, 2, 1);
        SET_REG_FIELD(reg1, 1, 3, 1);
        SET_REG_FIELD(reg1, 1, 4, 1);
        SET_REG_FIELD(reg1, 1, 5, 1);
        GX_WRITE_XF_REG(0x1000, reg1);

        SET_REG_FIELD(reg2, 1, 0, 1);
        GX_WRITE_XF_REG(0x1012, reg2);
    }

    {
        u32 reg = 0;
        SET_REG_FIELD(reg, 1, 0, 1);
        SET_REG_FIELD(reg, 1, 1, 1);
        SET_REG_FIELD(reg, 1, 2, 1);
        SET_REG_FIELD(reg, 1, 3, 1);
        SET_REG_FIELD(reg, 8, 24, 0x58);
        GX_WRITE_RAS_REG(reg);
    }
}

GXFifoObj* GXInit(void* base, u32 size) {
    u32 i;
    u32 reg;
    u32 freqBase;

    OSRegisterVersion(GetVersion(GX));

    __GXData->inDispList = FALSE;
    __GXData->dlSaveContext = TRUE;
    __GXData->abtWaitPECopy = 1;
    __GXData->tcsManEnab = FALSE;
    __GXData->tevTcEnab = FALSE;
    
    GXSetMisc(GX_MT_XF_FLUSH, 0);

    __piReg = OSPhysicalToUncached(0xC003000);
    __cpReg = OSPhysicalToUncached(0xC000000);
    __peReg = OSPhysicalToUncached(0xC001000);
    __memReg = OSPhysicalToUncached(0xC004000);
    __GXFifoInit();
    GXInitFifoBase(&FifoObj, base, size);
    GXSetCPUFifo(&FifoObj);
    GXSetGPFifo(&FifoObj);

    if (!shutdownFuncRegistered) {
        OSRegisterShutdownFunction(&GXShutdownFuncInfo);
        shutdownFuncRegistered = 1;
    }

    __GXPEInit();
    EnableWriteGatherPipe();

    __GXData->genMode = 0;
    SET_REG_FIELD(__GXData->genMode, 8, 24, 0);
    __GXData->bpMask = 255;
    SET_REG_FIELD(__GXData->bpMask, 8, 24, 0x0F);
    __GXData->lpSize = 0;
    SET_REG_FIELD(__GXData->lpSize, 8, 24, 0x22);

    for (i = 0; i < 16; ++i) {
        __GXData->tevc[i] = 0;
        __GXData->teva[i] = 0;
        __GXData->tref[i / 2] = 0;
        __GXData->texmapId[i] = GX_TEXMAP_NULL;
        SET_REG_FIELD(__GXData->tevc[i], 8, 24, 0xC0 + i * 2);
        SET_REG_FIELD(__GXData->teva[i], 8, 24, 0xC1 + i * 2);
        SET_REG_FIELD(__GXData->tevKsel[i / 2], 8, 24, 0xF6 + i / 2);
        SET_REG_FIELD(__GXData->tref[i / 2], 8, 24, 0x28 + i / 2);
    }

    __GXData->iref = 0;
    SET_REG_FIELD(__GXData->iref, 8, 24, 0x27);

    for (i = 0; i < 8; ++i) {
        __GXData->suTs0[i] = 0;
        __GXData->suTs1[i] = 0;
        SET_REG_FIELD(__GXData->suTs0[i], 8, 24, 0x30 + i * 2);
        SET_REG_FIELD(__GXData->suTs1[i], 8, 24, 0x31 + i * 2);
    }

    SET_REG_FIELD(__GXData->suScis0, 8, 24, 0x20);
    SET_REG_FIELD(__GXData->suScis1, 8, 24, 0x21);
    SET_REG_FIELD(__GXData->cmode0, 8, 24, 0x41);
    SET_REG_FIELD(__GXData->cmode1, 8, 24, 0x42);
    SET_REG_FIELD(__GXData->zmode, 8, 24, 0x40);
    SET_REG_FIELD(__GXData->peCtrl, 8, 24, 0x43);
    SET_REG_FIELD(__GXData->cpTex, 2, 7, 0);

    __GXData->zScale = 1.6777216E7f;
    __GXData->zOffset = 0.0f;
    __GXData->dirtyState = 0;
    __GXData->dirtyVAT = FALSE;

    freqBase = __OSBusClock / 500;
    __GXFlushTextureState();
    reg = (freqBase >> 11) | 0x400 | 0x69000000;
    GX_WRITE_RAS_REG(reg);

    __GXFlushTextureState();
    reg = (freqBase / 0x1080) | 0x200 | 0x46000000;
    GX_WRITE_RAS_REG(reg);

    __GXInitRevisionBits();

    for (i = 0; i < 8; i++) {
        GXInitTexCacheRegion(&__GXData->TexRegions0[i], GX_FALSE, GXTexRegionAddrTable[i],
                             GX_TEXCACHE_32K, GXTexRegionAddrTable[i + 8], GX_TEXCACHE_32K);
        GXInitTexCacheRegion(&__GXData->TexRegions1[i], GX_FALSE, GXTexRegionAddrTable[i + 16],
                             GX_TEXCACHE_32K, GXTexRegionAddrTable[i + 24], GX_TEXCACHE_32K);
        GXInitTexCacheRegion(&__GXData->TexRegions2[i], GX_TRUE, GXTexRegionAddrTable[i + 32],
                             GX_TEXCACHE_32K, GXTexRegionAddrTable[i + 40], GX_TEXCACHE_32K);
    }

    for (i = 0; i < 16; i++) {
        GXInitTlutRegion(&__GXData->TlutRegions[i], 0xC0000 + 0x2000 * i, GX_TLUT_256);
    }

    for (i = 0; i < 4; i++) {
        GXInitTlutRegion(&__GXData->TlutRegions[i + 16], 0xE0000 + 0x8000 * i, GX_TLUT_1K);
    }

    {
        u32 reg = 0;

        GX_SET_CP_REG(3, reg);

        SET_REG_FIELD(__GXData->perfSel, 4, 4, 0);
        GX_WRITE_U8(0x8);
        GX_WRITE_U8(0x20);
        GX_WRITE_U32(__GXData->perfSel);
    
        reg = 0;
        GX_WRITE_XF_REG(0x1006, reg);
        
        reg = 0x23000000;
        GX_WRITE_RAS_REG(reg);

        reg = 0x24000000;
        GX_WRITE_RAS_REG(reg);

        reg = 0x67000000;
        GX_WRITE_RAS_REG(reg);
    }

    __GXSetIndirectMask(0);
    __GXSetTmemConfig(2);
    __GXInitGX();

    return &FifoObj;
}

void __GXInitGX() {
    GXRenderModeObj*    rmode;
    GXTexObj            tex_obj;
    Mtx                 identity_mtx;

    GXColor clear = {64, 64, 64, 255};
    GXColor black = {0, 0, 0, 0};
    GXColor white = {255, 255, 255, 255};

    u32 i;

    switch (VIGetTvFormat()) {
        case VI_NTSC: {
            rmode = &GXNtsc480IntDf;
            break;
        }
        case VI_PAL: {
            rmode = &GXPal528IntDf;
            break;
        }
        case VI_EURGB60: {
            rmode = &GXEurgb60Hz480IntDf;
            break;
        }
        case VI_MPAL: {
            rmode = &GXMpal480IntDf;
            break;
        }
        default: {
            rmode = &GXNtsc480IntDf;
            break;
        }
    }

    GXSetCopyClear(clear, 0xFFFFFF);
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 0x3C);
    GXSetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX1, 0x3C);
    GXSetTexCoordGen(GX_TEXCOORD2, GX_TG_MTX2x4, GX_TG_TEX2, 0x3C);
    GXSetTexCoordGen(GX_TEXCOORD3, GX_TG_MTX2x4, GX_TG_TEX3, 0x3C);
    GXSetTexCoordGen(GX_TEXCOORD4, GX_TG_MTX2x4, GX_TG_TEX4, 0x3C);
    GXSetTexCoordGen(GX_TEXCOORD5, GX_TG_MTX2x4, GX_TG_TEX5, 0x3C);
    GXSetTexCoordGen(GX_TEXCOORD6, GX_TG_MTX2x4, GX_TG_TEX6, 0x3C);
    GXSetTexCoordGen(GX_TEXCOORD7, GX_TG_MTX2x4, GX_TG_TEX7, 0x3C);
    GXSetNumTexGens(1);
    GXClearVtxDesc();
    GXInvalidateVtxCache();

    for (i = GX_VA_POS; i <= GX_LIGHT_ARRAY; i++) {
        GXSetArray(i, __GXData, 0);
    }

    for (i = GX_VTXFMT0; i < GX_MAX_VTXFMT; i++) {
        GXSetVtxAttrFmtv(i, GXDefaultVATList);
    }

    GXSetLineWidth(6, GX_TO_ZERO);
    GXSetPointSize(6, GX_TO_ZERO);
    GXEnableTexOffsets(GX_TEXCOORD0, 0, 0);
    GXEnableTexOffsets(GX_TEXCOORD1, 0, 0);
    GXEnableTexOffsets(GX_TEXCOORD2, 0, 0);
    GXEnableTexOffsets(GX_TEXCOORD3, 0, 0);
    GXEnableTexOffsets(GX_TEXCOORD4, 0, 0);
    GXEnableTexOffsets(GX_TEXCOORD5, 0, 0);
    GXEnableTexOffsets(GX_TEXCOORD6, 0, 0);
    GXEnableTexOffsets(GX_TEXCOORD7, 0, 0);
    identity_mtx[0][0] = 1.0f;
    identity_mtx[0][1] = 0.0f;
    identity_mtx[0][2] = 0.0f;
    identity_mtx[0][3] = 0.0f;
    identity_mtx[1][0] = 0.0f;
    identity_mtx[1][1] = 1.0f;
    identity_mtx[1][2] = 0.0f;
    identity_mtx[1][3] = 0.0f;
    identity_mtx[2][0] = 0.0f;
    identity_mtx[2][1] = 0.0f;
    identity_mtx[2][2] = 1.0f;
    identity_mtx[2][3] = 0.0f;
    GXLoadPosMtxImm(identity_mtx, GX_PNMTX0);
    GXLoadNrmMtxImm(identity_mtx, GX_PNMTX0);
    GXSetCurrentMtx(GX_PNMTX0);
    GXLoadTexMtxImm(identity_mtx, GX_IDENTITY, GX_MTX3x4);
    GXLoadTexMtxImm(identity_mtx, GX_PTIDENTITY, GX_MTX3x4);
    GXSetViewport(0.0f, 0.0f, rmode->fbWidth, rmode->xfbHeight, 0.0f, 1.0f);
    GXSetProjectionv(GXDefaultProjData);
    __GXSetGenMode();
    GXSetCoPlanar(GX_DISABLE);
    GXSetCullMode(GX_CULL_BACK);
    GXSetClipMode(GX_CLIP_ENABLE);
    GXSetScissor(0, 0, rmode->fbWidth, rmode->efbHeight);
    GXSetScissorBoxOffset(0, 0);
    GXSetNumChans(0);
    GXSetChanCtrl(GX_COLOR0A0, GX_DISABLE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
    GXSetChanAmbColor(GX_COLOR0A0, black);
    GXSetChanMatColor(GX_COLOR0A0, white);
    GXSetChanCtrl(GX_COLOR1A1, GX_DISABLE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
    GXSetChanAmbColor(GX_COLOR1A1, black);
    GXSetChanMatColor(GX_COLOR1A1, white);
    GXInvalidateTexAll();
    GXSetTexRegionCallback((GXTexRegionCallback)__GXDefaultTexRegionCallback);
    GXSetTlutRegionCallback(__GXDefaultTlutRegionCallback);

    GXInitTexObj(&tex_obj, DefaultTexData, 4, 4, GX_TF_IA8, GX_CLAMP, GX_CLAMP, 0);
    GXLoadTexObj(&tex_obj, GX_TEXMAP0);
    GXLoadTexObj(&tex_obj, GX_TEXMAP1);
    GXLoadTexObj(&tex_obj, GX_TEXMAP2);
    GXLoadTexObj(&tex_obj, GX_TEXMAP3);
    GXLoadTexObj(&tex_obj, GX_TEXMAP4);
    GXLoadTexObj(&tex_obj, GX_TEXMAP5);
    GXLoadTexObj(&tex_obj, GX_TEXMAP6);
    GXLoadTexObj(&tex_obj, GX_TEXMAP7);

    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD2, GX_TEXMAP2, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE3, GX_TEXCOORD3, GX_TEXMAP3, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE4, GX_TEXCOORD4, GX_TEXMAP4, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE5, GX_TEXCOORD5, GX_TEXMAP5, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE6, GX_TEXCOORD6, GX_TEXMAP6, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE7, GX_TEXCOORD7, GX_TEXMAP7, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE8, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE9, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE10, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE11, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE12, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE13, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE14, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE15, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);

    GXSetNumTevStages(1);
    GXSetTevOp(GX_TEVSTAGE0, GX_REPLACE);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_AND, GX_ALWAYS, 0);
    GXSetZTexture(GX_ZT_DISABLE, GX_TF_Z8, 0);

    for (i = GX_TEVSTAGE0; i < GX_MAX_TEVSTAGE; i++) {
        GXSetTevKColorSel((GXTevStageID)i, GX_TEV_KCSEL_1_4);
        GXSetTevKAlphaSel((GXTevStageID)i, GX_TEV_KASEL_1);
        GXSetTevSwapMode((GXTevStageID)i, GX_TEV_SWAP0, GX_TEV_SWAP0);
    }

    GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_RED, GX_CH_RED, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_GREEN, GX_CH_GREEN, GX_CH_GREEN, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP3, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);

    for (i = GX_TEVSTAGE0; i < GX_MAX_TEVSTAGE; i++) {
        GXSetTevDirect((GXTevStageID)i);
    }

    GXSetNumIndStages(0);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE0, GX_ITS_1, GX_ITS_1);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE1, GX_ITS_1, GX_ITS_1);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE2, GX_ITS_1, GX_ITS_1);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE3, GX_ITS_1, GX_ITS_1);

    GXSetFog(GX_FOG_NONE, 0.0f, 1.0f, 0.1f, 1.0f, black);
    GXSetFogRangeAdj(GX_DISABLE, 0, NULL);
    GXSetBlendMode(GX_BM_NONE, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
    GXSetColorUpdate(GX_ENABLE);
    GXSetAlphaUpdate(GX_ENABLE);
    GXSetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
    GXSetZCompLoc(GX_TRUE);
    GXSetDither(GX_ENABLE);
    GXSetDstAlpha(GX_DISABLE, 0);
    GXSetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);
    GXSetFieldMask(GX_ENABLE, GX_ENABLE);
    GXSetFieldMode(rmode->field_rendering,
                   ((rmode->viHeight == 2 * rmode->xfbHeight) ? GX_ENABLE : GX_DISABLE));

    GXSetDispCopySrc(0, 0, rmode->fbWidth, rmode->efbHeight);
    GXSetDispCopyDst(rmode->fbWidth, rmode->efbHeight);
    GXSetDispCopyYScale((f32)(rmode->xfbHeight) / (f32)(rmode->efbHeight));
    GXSetCopyClamp((GXFBClamp)(GX_CLAMP_TOP | GX_CLAMP_BOTTOM));
    GXSetCopyFilter(rmode->aa, rmode->sample_pattern, GX_TRUE, rmode->vfilter);
    GXSetDispCopyGamma(GX_GM_1_0);
    GXSetDispCopyFrame2Field(GX_COPY_PROGRESSIVE);
    GXClearBoundingBox();

    GXPokeColorUpdate(GX_TRUE);
    GXPokeAlphaUpdate(GX_TRUE);
    GXPokeDither(GX_FALSE);
    GXPokeBlendMode(GX_BM_NONE, GX_BL_ZERO, GX_BL_ONE, GX_LO_SET);
    GXPokeAlphaMode(GX_ALWAYS, 0);
    GXPokeAlphaRead(GX_READ_FF);
    GXPokeDstAlpha(GX_DISABLE, 0);
    GXPokeZMode(GX_TRUE, GX_ALWAYS, GX_TRUE);

    GXSetGPMetric(GX_PERF0_NONE, GX_PERF1_NONE);
    GXClearGPMetric();
}
