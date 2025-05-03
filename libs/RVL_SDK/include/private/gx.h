#ifndef PRIVATE_GX_H
#define PRIVATE_GX_H

#include <revolution/types.h>

#include <revolution/gx/GXStruct.h>
#include <revolution/gx/GXFifo.h>
#include <revolution/gx/GXTexture.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct __GXData_struct {
    u16             vNumNot;
    u16             bpSentNot;

    u16             vNum;
    u16             vLim;

    u32             cpEnable;
    u32             cpStatus;
    u32             cpClr;

    u32             vcdLo;
    u32             vcdHi;

    u32             vatA[8];
    u32             vatB[8];
    u32             vatC[8];

    u32             lpSize;

    u32             matIdxA;
    u32             matIdxB;

    u32             indexBase[4];
    u32             indexStride[4];

    u32             ambColor[2];
    u32             matColor[2];

    u32             chanCtrl[4];
    u32             texGenCtrl[8];
    u32             texGenCtrl2[8];

    u32             suTs0[8];
    u32             suTs1[8];
    u32             suScis0;
    u32             suScis1;

    u32             tref[8];
    u32             iref;

    u32             bpMask;

    u32             IndTexScale0;
    u32             IndTexScale1;

    u32             tevc[16];
    u32             teva[16];
    u32             tevKsel[8];

    u32             cmode0;
    u32             cmode1;

    u32             zmode;

    u32             peCtrl;

    u32             cpDispSrc;
    u32             cpDispSize;
    u32             cpDispStride;
    u32             cpDisp;
    u32             cpTexSrc;
    u32             cpTexSize;
    u32             cpTexStride;
    u32             cpTex;
    GXBool          cpTexZ;

    u32             genMode;

    GXTexRegion     TexRegions0[8];
    GXTexRegion     TexRegions1[8];
    GXTexRegion     TexRegions2[8];

    GXTlutRegion    TlutRegions[20];

    GXTexRegion* (*texRegionCallback)(GXTexObj*, GXTexMapID);
    GXTlutRegion* (*tlutRegionCallback)(u32);

    GXAttrType      nrmType;
    GXBool          hasNrms;
    GXBool          hasBiNrms;

    u32             projType;
    f32             projMtx[6];

    f32             vpLeft;
    f32             vpTop;
    f32             vpWd;
    f32             vpHt;
    f32             vpNearz;
    f32             vpFarz;

    f32             zOffset;
    f32             zScale;

    u32             tImage0[8];
    u32             tMode0[8];
    u32             texmapId[16];

    u32             tcsManEnab;
    u32             tevTcEnab;

    GXPerf0         perf0;
    GXPerf1         perf1;
    u32             perfSel;

    GXBool          inDispList;
    GXBool          dlSaveContext;
    GXBool          abtWaitPECopy;

    u8              dirtyVAT;
    u32             dirtyState;
} GXData;

extern GXData* const __GXData;

extern void* __memReg;
extern void* __peReg;
extern void* __cpReg;
extern void* __piReg;

// Private structs

typedef struct __GXFifoObj {
    u8* base;
    u8* top;
    u32 size;
    u32 hiWatermark;
    u32 loWatermark;
    void* rdPtr;
    void* wrPtr;
    s32 count;
    GXBool wrap;
    GXBool bind_cpu;
    GXBool bind_gp;
} __GXFifoObj;

typedef struct __GXLightObjInt_struct {
    u32 reserved[3];    // 0x00
    u32 Color;          // 0x0C
    f32 a[3];           // 0x10
    f32 k[3];           // 0x1C
    f32 lpos[3];        // 0x28
    f32 ldir[3];        // 0x34
} __GXLightObjInt;

typedef struct TEVCOpTable {
    u32 rid : 8;
    u32 dest : 2;
    u32 shift : 2;
    u32 clamp : 1;
    u32 sub : 1;
    u32 bias : 2;
    u32 sela : 4;
    u32 selb : 4;
    u32 selc : 4;
    u32 seld : 4;
} TEVCOpTable;

typedef struct TEVAOpTable {
    u32 rid : 8;
    u32 dest : 2;
    u32 shift : 2;
    u32 clamp : 1;
    u32 sub : 1;
    u32 bias : 2;
    u32 sela : 3;
    u32 selb : 3;
    u32 selc : 3;
    u32 seld : 3;
    u32 swap : 2;
    u32 mode : 2;
} TEVAOpTable;

typedef struct __GXTexObjInt_struct {
    u32 mode0;
    u32 mode1;
    u32 image0;
    u32 image3;
    void* userData;
    GXTexFmt fmt;
    u32 tlutName;
    u16 loadCnt;
    u8 loadFmt;
    u8 flags;
} __GXTexObjInt;

typedef struct __GXTexRegionInt_struct {
    u32 image1;
    u32 image2;
    u16 sizeEven;
    u16 sizeOdd;
    u8 is32bMipmap;
    u8 isCached;
} __GXTexRegionInt;

typedef struct __GXTlutObjInt_struct {
    u32 tlut;
    u32 loadTlut0;
    u16 numEntries;
} __GXTlutObjInt;

typedef struct __GXTlutRegionInt_struct {
    u32 loadTlut1;
    __GXTlutObjInt tlutObj;
} __GXTlutRegionInt;

// Private functions

// Init
void __GXInitGX();
void __GXInitRevisionBits();

// Attr
void __GXSetVCD();
void __GXCalculateVLim();
void __GXSetVAT();

// Bump
void __GXUpdateBPMask();
void __GXSetIndirectMask(u32 mask);
void __GXFlushTextureState();

// Fifo
GXBool  __GXIsGPFifoReady();
void    __GXFifoInit();
void    __GXCleanGPFifo();

// Geometry
void __GXSetDirtyState();
void __GXSendFlushPrim();
void __GXSetGenMode();

// Misc
void __GXAbort();
void __GXPEInit();

// Transform
void __GXSetProjection();
void __GXSetViewport();
void __GXSetMatrixIndex(GXAttr matIdxAttr) NO_INLINE;

// Texture
void __GXSetSUTexRegs();
void __GXSetTmemConfig(u32 config);
void __GetImageTileCount(GXTexFmt fmt, u16 wd, u16 ht, u32* rowTiles, u32* colTiles, u32* cmpTiles);

// Private Macros

#define GX_WRITE_U8(ub)     GXWGFifo.u8 = (u8)(ub)
#define GX_WRITE_U16(us)    GXWGFifo.u16 = (u16)(us)
#define GX_WRITE_U32(ui)    GXWGFifo.u32 = (u32)(ui)
#define GX_WRITE_F32(f)     GXWGFifo.f32 = (f32)(f)

#define GX_WRITE_XF_REG(addr, value) {          \
    GX_WRITE_U8(0x10);                          \
    GX_WRITE_U32(addr);                         \
    GX_WRITE_U32(value);                        \
}

#define GX_WRITE_XF_REG_2(addr, value) {    \
    GX_WRITE_U32(value);                    \
}

#define GX_WRITE_XF_REG_F(addr, value) {    \
    GX_WRITE_F32(value);                    \
}

#define GX_WRITE_RAS_REG(value) {   \
    GX_WRITE_U8(0x61);              \
    GX_WRITE_U32(value);            \
}

#define GX_WRITE_SOME_REG2(a, b, c, addr) { \
    GX_WRITE_U8(a);                         \
    GX_WRITE_U8(b);                         \
    GX_WRITE_U32(c);                        \
}

#define GX_WRITE_SOME_REG3(a, b, c, addr) { \
    GX_WRITE_U8(a);                         \
    GX_WRITE_U8(b);                         \
    GX_WRITE_U32(c);                        \
}

#define GX_WRITE_SOME_REG4(a, b, c, addr) { \
    s32 regAddr;                            \
    GX_WRITE_U8(a);                         \
    GX_WRITE_U8(b);                         \
    GX_WRITE_U32(c);                        \
    regAddr = addr;                         \
}

#define GET_REG_FIELD(reg, size, shift) ((int)((reg) >> (shift)) & ((1 << (size)) - 1))

#define OLD_SET_REG_FIELD(reg, size, shift, val)  {                               \
    (reg) = ((u32)(reg) & ~(((1 << (size)) - 1) << (shift))) | ((u32)(val) << (shift)); \
}

#define SET_REG_FIELD(reg, size, shift, val) {                                            \
    (reg) = ((u32)__rlwimi((u32)(reg), (val), (shift), 32 - (shift) - (size), 31 - (shift)));   \
}

#define GX_GET_MEM_REG(offset) (*(vu16*)((vu16*)(__memReg) + (offset)))
#define GX_GET_CP_REG(offset)  (*(vu16*)((vu16*)(__cpReg) + (offset)))
#define GX_GET_PE_REG(offset)  (*(vu16*)((vu16*)(__peReg) + (offset)))
#define GX_GET_PI_REG(offset)  (*(vu32*)((vu32*)(__piReg) + (offset)))

#define GX_SET_MEM_REG(offset, val)     (*(vu16*)((vu16*)(__memReg) + (offset)) = val)
#define GX_SET_CP_REG(offset, val)      (*(vu16*)((vu16*)(__cpReg) + (offset)) = val)
#define GX_SET_PE_REG(offset, val)      (*(vu16*)((vu16*)(__peReg) + (offset)) = val)
#define GX_SET_PI_REG(offset, val)      (*(vu32*)((vu32*)(__piReg) + (offset)) = val)

static inline u32 __GXReadCPCounterU32(u32 regAddrL, u32 regAddrH) {
    u32 ctrH0;
    u32 ctrH1;
    u32 ctrL;

    ctrH0 = GX_GET_CP_REG(regAddrH);

    do {
        ctrH1 = ctrH0;
        ctrL = GX_GET_CP_REG(regAddrL);
        ctrH0 = GX_GET_CP_REG(regAddrH);
    } while (ctrH0 != ctrH1);

    return (ctrH0 << 0x10) | ctrL;
}

static inline u32 __GXReadMEMCounterU32(u32 regAddrL, u32 regAddrH) {
    u32 ctrH0;
    u32 ctrH1;
    u32 ctrL;

    ctrH0 = GX_GET_MEM_REG(regAddrH);

    do {
        ctrH1 = ctrH0;
        ctrL = GX_GET_MEM_REG(regAddrL);
        ctrH0 = GX_GET_MEM_REG(regAddrH);
    } while (ctrH0 != ctrH1);

    return (ctrH0 << 0x10) | ctrL;
}

static inline u32 __GXReadPECounterU32(u32 regAddrL, u32 regAddrH) {
    u32 ctrH0;
    u32 ctrH1;
    u32 ctrL;

    ctrH0 = GX_GET_PE_REG(regAddrH);

    do {
        ctrH1 = ctrH0;
        ctrL = GX_GET_PE_REG(regAddrL);
        ctrH0 = GX_GET_PE_REG(regAddrH);
    } while (ctrH0 != ctrH1);

    return (ctrH0 << 0x10) | ctrL;
}

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_GX_H
