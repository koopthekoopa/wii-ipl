#ifndef REVOLUTION_GX_ENUM_H
#define REVOLUTION_GX_ENUM_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef u8 GXBool;

#define GX_TRUE    ((GXBool)1)
#define GX_FALSE   ((GXBool)0)
#define GX_ENABLE  ((GXBool)1)
#define GX_DISABLE ((GXBool)0)

typedef enum _GXAttr {
    GX_VA_PNMTXIDX = 0,
    GX_VA_TEX0MTXIDX,
    GX_VA_TEX1MTXIDX,
    GX_VA_TEX2MTXIDX,
    GX_VA_TEX3MTXIDX,
    GX_VA_TEX4MTXIDX,
    GX_VA_TEX5MTXIDX,
    GX_VA_TEX6MTXIDX,
    GX_VA_TEX7MTXIDX,
    GX_VA_POS = 9,
    GX_VA_NRM,
    GX_VA_CLR0,
    GX_VA_CLR1,
    GX_VA_TEX0,
    GX_VA_TEX1,
    GX_VA_TEX2,
    GX_VA_TEX3,
    GX_VA_TEX4,
    GX_VA_TEX5,
    GX_VA_TEX6,
    GX_VA_TEX7,
    GX_POS_MTX_ARRAY,
    GX_NRM_MTX_ARRAY,
    GX_TEX_MTX_ARRAY,
    GX_LIGHT_ARRAY,
    GX_VA_NBT,
    GX_VA_MAX_ATTR,
    GX_VA_NULL = 0xff
} GXAttr;

typedef enum _GXVtxFmt {
    GX_VTXFMT0 = 0,
    GX_VTXFMT1,
    GX_VTXFMT2,
    GX_VTXFMT3,
    GX_VTXFMT4,
    GX_VTXFMT5,
    GX_VTXFMT6,
    GX_VTXFMT7,
    GX_MAX_VTXFMT
} GXVtxFmt;

typedef enum _GXAttrType {
    GX_NONE = 0,
    GX_DIRECT,
    GX_INDEX8,
    GX_INDEX16
} GXAttrType;

typedef enum _GXTexCoordID {
    GX_TEXCOORD0 = 0x0,
    GX_TEXCOORD1,
    GX_TEXCOORD2,
    GX_TEXCOORD3,
    GX_TEXCOORD4,
    GX_TEXCOORD5,
    GX_TEXCOORD6,
    GX_TEXCOORD7,
    GX_MAX_TEXCOORD = 8,
    GX_TEXCOORD_NULL = 0xff
} GXTexCoordID;

typedef enum _GXTexGenType {
    GX_TG_MTX3x4 = 0,
    GX_TG_MTX2x4,
    GX_TG_BUMP0,
    GX_TG_BUMP1,
    GX_TG_BUMP2,
    GX_TG_BUMP3,
    GX_TG_BUMP4,
    GX_TG_BUMP5,
    GX_TG_BUMP6,
    GX_TG_BUMP7,
    GX_TG_SRTG
} GXTexGenType;

typedef enum _GXTexGenSrc {
    GX_TG_POS = 0,
    GX_TG_NRM,
    GX_TG_BINRM,
    GX_TG_TANGENT,
    GX_TG_TEX0,
    GX_TG_TEX1,
    GX_TG_TEX2,
    GX_TG_TEX3,
    GX_TG_TEX4,
    GX_TG_TEX5,
    GX_TG_TEX6,
    GX_TG_TEX7,
    GX_TG_TEXCOORD0,
    GX_TG_TEXCOORD1,
    GX_TG_TEXCOORD2,
    GX_TG_TEXCOORD3,
    GX_TG_TEXCOORD4,
    GX_TG_TEXCOORD5,
    GX_TG_TEXCOORD6,
    GX_TG_COLOR0,
    GX_TG_COLOR1
} GXTexGenSrc;

typedef enum _GXCompType {
    GX_U8 = 0,
    GX_S8 = 1,
    GX_U16 = 2,
    GX_S16 = 3,
    GX_F32 = 4,

    GX_RGB565 = 0,
    GX_RGB8 = 1,
    GX_RGBX8 = 2,
    GX_RGBA4 = 3,
    GX_RGBA6 = 4,
    GX_RGBA8 = 5
} GXCompType;

typedef enum _GXChannelID {
    GX_COLOR0,
    GX_COLOR1,
    GX_ALPHA0,
    GX_ALPHA1,
    GX_COLOR0A0,
    GX_COLOR1A1,
    GX_COLOR_ZERO,
    GX_ALPHA_BUMP,
    GX_ALPHA_BUMPN,
    GX_COLOR_NULL = 0xff
} GXChannelID;

typedef enum _GXColorSrc { GX_SRC_REG = 0, GX_SRC_VTX } GXColorSrc;

typedef enum _GXTlut {
    GX_TLUT0 = 0,
    GX_TLUT1,
    GX_TLUT2,
    GX_TLUT3,
    GX_TLUT4,
    GX_TLUT5,
    GX_TLUT6,
    GX_TLUT7,
    GX_TLUT8,
    GX_TLUT9,
    GX_TLUT10,
    GX_TLUT11,
    GX_TLUT12,
    GX_TLUT13,
    GX_TLUT14,
    GX_TLUT15,
    GX_BIGTLUT0,
    GX_BIGTLUT1,
    GX_BIGTLUT2,
    GX_BIGTLUT3
} GXTlut;

typedef enum _GXTexMapID {
    GX_TEXMAP0,
    GX_TEXMAP1,
    GX_TEXMAP2,
    GX_TEXMAP3,
    GX_TEXMAP4,
    GX_TEXMAP5,
    GX_TEXMAP6,
    GX_TEXMAP7,
    GX_MAX_TEXMAP,
    GX_TEXMAP_NULL = 0xff,
    GX_TEX_DISABLE = 0x100
} GXTexMapID;

typedef enum _GXIndTexFormat {
    GX_ITF_8,
    GX_ITF_5,
    GX_ITF_4,
    GX_ITF_3,
    GX_MAX_ITFORMAT
} GXIndTexFormat;

typedef enum _GXIndTexBiasSel {
    GX_ITB_NONE,
    GX_ITB_S,
    GX_ITB_T,
    GX_ITB_ST,
    GX_ITB_U,
    GX_ITB_SU,
    GX_ITB_TU,
    GX_ITB_STU,
    GX_MAX_ITBIAS
} GXIndTexBiasSel;

typedef enum _GXIndTexAlphaSel {
    GX_ITBA_OFF,
    GX_ITBA_S,
    GX_ITBA_T,
    GX_ITBA_U,
    GX_MAX_ITBALPHA
} GXIndTexAlphaSel;

typedef enum _GXIndTexMtxID {
    GX_ITM_OFF,
    GX_ITM_0,
    GX_ITM_1,
    GX_ITM_2,
    GX_ITM_S0 = 5,
    GX_ITM_S1,
    GX_ITM_S2,
    GX_ITM_T0 = 9,
    GX_ITM_T1,
    GX_ITM_T2
} GXIndTexMtxID;

typedef enum _GXIndTexWrap {
    GX_ITW_OFF,
    GX_ITW_256,
    GX_ITW_128,
    GX_ITW_64,
    GX_ITW_32,
    GX_ITW_16,
    GX_ITW_0,
    GX_MAX_ITWRAP
} GXIndTexWrap;

typedef enum _GXIndTexScale {
    GX_ITS_1,
    GX_ITS_2,
    GX_ITS_4,
    GX_ITS_8,
    GX_ITS_16,
    GX_ITS_32,
    GX_ITS_64,
    GX_ITS_128,
    GX_ITS_256,
    GX_MAX_ITSCALE
} GXIndTexScale;

typedef enum _GXIndTexStageID {
    GX_INDTEXSTAGE0,
    GX_INDTEXSTAGE1,
    GX_INDTEXSTAGE2,
    GX_INDTEXSTAGE3,
    GX_MAX_INDTEXSTAGE
} GXIndTexStageID;

typedef enum _GXTevStageID {
    GX_TEVSTAGE0,
    GX_TEVSTAGE1,
    GX_TEVSTAGE2,
    GX_TEVSTAGE3,
    GX_TEVSTAGE4,
    GX_TEVSTAGE5,
    GX_TEVSTAGE6,
    GX_TEVSTAGE7,
    GX_TEVSTAGE8,
    GX_TEVSTAGE9,
    GX_TEVSTAGE10,
    GX_TEVSTAGE11,
    GX_TEVSTAGE12,
    GX_TEVSTAGE13,
    GX_TEVSTAGE14,
    GX_TEVSTAGE15,
    GX_MAX_TEVSTAGE
} GXTevStageID;

#define _GX_TF_CTF 0x20 /* copy-texture-format only */
#define _GX_TF_ZTF 0x10 /* Z-texture-format */

typedef enum _GXTexFmt {
    GX_TF_I4 =      0x0,
    GX_TF_I8 =      0x1,
    GX_TF_IA4 =     0x2,
    GX_TF_IA8 =     0x3,
    GX_TF_RGB565 =  0x4,
    GX_TF_RGB5A3 =  0x5,
    GX_TF_RGBA8 =   0x6,
    GX_TF_CMPR =    0xE,

    GX_CTF_R4 =     0x0 | _GX_TF_CTF,
    GX_CTF_RA4 =    0x2 | _GX_TF_CTF,
    GX_CTF_RA8 =    0x3 | _GX_TF_CTF,
    GX_CTF_YUVA8 =  0x6 | _GX_TF_CTF,
    GX_CTF_A8 =     0x7 | _GX_TF_CTF,
    GX_CTF_R8 =     0x8 | _GX_TF_CTF,
    GX_CTF_G8 =     0x9 | _GX_TF_CTF,
    GX_CTF_B8 =     0xA | _GX_TF_CTF,
    GX_CTF_RG8 =    0xB | _GX_TF_CTF,
    GX_CTF_GB8 =    0xC | _GX_TF_CTF,

    GX_TF_Z8 =      0x1 | _GX_TF_ZTF,
    GX_TF_Z16 =     0x3 | _GX_TF_ZTF,
    GX_TF_Z24X8 =   0x6 | _GX_TF_ZTF,

    GX_CTF_Z4 =     0x0 | _GX_TF_ZTF | _GX_TF_CTF,
    GX_CTF_Z8M =    0x9 | _GX_TF_ZTF | _GX_TF_CTF,
    GX_CTF_Z8L =    0xA | _GX_TF_ZTF | _GX_TF_CTF,
    GX_CTF_Z16L =   0xC | _GX_TF_ZTF | _GX_TF_CTF,

    GX_TF_A8 = GX_CTF_A8
} GXTexFmt;

typedef enum _GXTexOffset {
    GX_TO_ZERO      = 0,
    GX_TO_SIXTEENTH = 1,
    GX_TO_EIGHTH    = 2,
    GX_TO_FOURTH    = 3,
    GX_TO_HALF      = 4,
    GX_TO_ONE       = 5,
    GX_MAX_TEXOFFSET,
} GXTexOffset;

typedef enum _GXCullMode {
    GX_CULL_NONE,
    GX_CULL_FRONT,
    GX_CULL_BACK,
    GX_CULL_ALL
} GXCullMode;

typedef enum _GXClipMode { GX_CLIP_ENABLE = 0, GX_CLIP_DISABLE = 1 } GXClipMode;

typedef enum _GXTexWrapMode {
    GX_CLAMP,
    GX_REPEAT,
    GX_MIRROR,
    GX_MAX_TEXWRAPMODE
} GXTexWrapMode;

typedef enum _GXTexFilter {
    GX_NEAR,
    GX_LINEAR,
    GX_NEAR_MIP_NEAR,
    GX_LIN_MIP_NEAR,
    GX_NEAR_MIP_LIN,
    GX_LIN_MIP_LIN
} GXTexFilter;

typedef enum _GXLightID {
    GX_LIGHT0 =     0x001,
    GX_LIGHT1 =     0x002,
    GX_LIGHT2 =     0x004,
    GX_LIGHT3 =     0x008,
    GX_LIGHT4 =     0x010,
    GX_LIGHT5 =     0x020,
    GX_LIGHT6 =     0x040,
    GX_LIGHT7 =     0x080,
    GX_MAX_LIGHT =  0x100,
    GX_LIGHT_NULL = 0x000
} GXLightID;

typedef enum _GXDiffuseFn {
    GX_DF_NONE = 0,
    GX_DF_SIGN,
    GX_DF_CLAMP
} GXDiffuseFn;

typedef enum _GXAttnFn { GX_AF_SPEC = 0, GX_AF_SPOT = 1, GX_AF_NONE } GXAttnFn;

typedef enum _GXCompCnt {
    GX_POS_XY   = 0,
    GX_POS_XYZ  = 1,
    GX_NRM_XYZ  = 0,
    GX_NRM_NBT  = 1,  // one index per NBT
    GX_NRM_NBT3 = 2, // one index per each of N/B/T
    GX_CLR_RGB  = 0,
    GX_CLR_RGBA = 1,
    GX_TEX_S    = 0,
    GX_TEX_ST   = 1
} GXCompCnt;

typedef enum _GXTevRegID {
    GX_TEVPREV = 0,
    GX_TEVREG0,
    GX_TEVREG1,
    GX_TEVREG2,
    GX_MAX_TEVREG
} GXTevRegID;

typedef enum _GXTevOp {
    GX_TEV_ADD = 0,
    GX_TEV_SUB = 1,

    GX_TEV_COMP_R8_GT       = 8,
    GX_TEV_COMP_R8_EQ       = 9,
    GX_TEV_COMP_GR16_GT     = 10,
    GX_TEV_COMP_GR16_EQ     = 11,
    GX_TEV_COMP_BGR24_GT    = 12,
    GX_TEV_COMP_BGR24_EQ    = 13,
    GX_TEV_COMP_RGB8_GT     = 14,
    GX_TEV_COMP_RGB8_EQ     = 15,

    GX_TEV_COMP_A8_GT       = GX_TEV_COMP_RGB8_GT, // for alpha channel
    GX_TEV_COMP_A8_EQ       = GX_TEV_COMP_RGB8_EQ  // for alpha channel
} GXTevOp;

typedef enum _GXTevColorArg {
    GX_CC_CPREV,
    GX_CC_APREV,
    GX_CC_C0,
    GX_CC_A0,
    GX_CC_C1,
    GX_CC_A1,
    GX_CC_C2,
    GX_CC_A2,
    GX_CC_TEXC,
    GX_CC_TEXA,
    GX_CC_RASC,
    GX_CC_RASA,
    GX_CC_ONE,
    GX_CC_HALF,
    GX_CC_KONST,
    GX_CC_ZERO
} GXTevColorArg;

typedef enum _GXTevAlphaArg {
    GX_CA_APREV,
    GX_CA_A0,
    GX_CA_A1,
    GX_CA_A2,
    GX_CA_TEXA,
    GX_CA_RASA,
    GX_CA_KONST,
    GX_CA_ZERO
} GXTevAlphaArg;

typedef enum _GXTevBias {
    GX_TB_ZERO,
    GX_TB_ADDHALF,
    GX_TB_SUBHALF,
    GX_MAX_TEVBIAS
} GXTevBias;

typedef enum _GXTevClampMode {
    GX_TC_LINEAR,
    GX_TC_GE,
    GX_TC_EQ,
    GX_TC_LE,
    GX_MAX_TEVCLAMPMODE
} GXTevClampMode;

typedef enum _GXTevKColorID {
    GX_KCOLOR0 = 0,
    GX_KCOLOR1,
    GX_KCOLOR2,
    GX_KCOLOR3,
    GX_MAX_KCOLOR
} GXTevKColorID;

typedef enum _GXTevKColorSel {
    GX_TEV_KCSEL_8_8    = 0x00,
    GX_TEV_KCSEL_7_8    = 0x01,
    GX_TEV_KCSEL_6_8    = 0x02,
    GX_TEV_KCSEL_5_8    = 0x03,
    GX_TEV_KCSEL_4_8    = 0x04,
    GX_TEV_KCSEL_3_8    = 0x05,
    GX_TEV_KCSEL_2_8    = 0x06,
    GX_TEV_KCSEL_1_8    = 0x07,

    GX_TEV_KCSEL_1      = GX_TEV_KCSEL_8_8,
    GX_TEV_KCSEL_3_4    = GX_TEV_KCSEL_6_8,
    GX_TEV_KCSEL_1_2    = GX_TEV_KCSEL_4_8,
    GX_TEV_KCSEL_1_4    = GX_TEV_KCSEL_2_8,

    GX_TEV_KCSEL_K0     = 0x0C,
    GX_TEV_KCSEL_K1     = 0x0D,
    GX_TEV_KCSEL_K2     = 0x0E,
    GX_TEV_KCSEL_K3     = 0x0F,
    GX_TEV_KCSEL_K0_R   = 0x10,
    GX_TEV_KCSEL_K1_R   = 0x11,
    GX_TEV_KCSEL_K2_R   = 0x12,
    GX_TEV_KCSEL_K3_R   = 0x13,
    GX_TEV_KCSEL_K0_G   = 0x14,
    GX_TEV_KCSEL_K1_G   = 0x15,
    GX_TEV_KCSEL_K2_G   = 0x16,
    GX_TEV_KCSEL_K3_G   = 0x17,
    GX_TEV_KCSEL_K0_B   = 0x18,
    GX_TEV_KCSEL_K1_B   = 0x19,
    GX_TEV_KCSEL_K2_B   = 0x1A,
    GX_TEV_KCSEL_K3_B   = 0x1B,
    GX_TEV_KCSEL_K0_A   = 0x1C,
    GX_TEV_KCSEL_K1_A   = 0x1D,
    GX_TEV_KCSEL_K2_A   = 0x1E,
    GX_TEV_KCSEL_K3_A   = 0x1F
} GXTevKColorSel;

typedef enum _GXTevKAlphaSel {
    GX_TEV_KASEL_8_8    = 0x00,
    GX_TEV_KASEL_7_8    = 0x01,
    GX_TEV_KASEL_6_8    = 0x02,
    GX_TEV_KASEL_5_8    = 0x03,
    GX_TEV_KASEL_4_8    = 0x04,
    GX_TEV_KASEL_3_8    = 0x05,
    GX_TEV_KASEL_2_8    = 0x06,
    GX_TEV_KASEL_1_8    = 0x07,

    GX_TEV_KASEL_1      = GX_TEV_KASEL_8_8,
    GX_TEV_KASEL_3_4    = GX_TEV_KASEL_6_8,
    GX_TEV_KASEL_1_2    = GX_TEV_KASEL_4_8,
    GX_TEV_KASEL_1_4    = GX_TEV_KASEL_2_8,

    GX_TEV_KASEL_K0_R   = 0x10,
    GX_TEV_KASEL_K1_R   = 0x11,
    GX_TEV_KASEL_K2_R   = 0x12,
    GX_TEV_KASEL_K3_R   = 0x13,
    GX_TEV_KASEL_K0_G   = 0x14,
    GX_TEV_KASEL_K1_G   = 0x15,
    GX_TEV_KASEL_K2_G   = 0x16,
    GX_TEV_KASEL_K3_G   = 0x17,
    GX_TEV_KASEL_K0_B   = 0x18,
    GX_TEV_KASEL_K1_B   = 0x19,
    GX_TEV_KASEL_K2_B   = 0x1A,
    GX_TEV_KASEL_K3_B   = 0x1B,
    GX_TEV_KASEL_K0_A   = 0x1C,
    GX_TEV_KASEL_K1_A   = 0x1D,
    GX_TEV_KASEL_K2_A   = 0x1E,
    GX_TEV_KASEL_K3_A   = 0x1F
} GXTevKAlphaSel;

typedef enum _GXAlphaOp {
    GX_AOP_AND,
    GX_AOP_OR,
    GX_AOP_XOR,
    GX_AOP_XNOR,
    GX_MAX_ALPHAOP
} GXAlphaOp;

typedef enum _GXTevScale {
    GX_CS_SCALE_1,
    GX_CS_SCALE_2,
    GX_CS_SCALE_4,
    GX_CS_DIVIDE_2,
    GX_MAX_TEVSCALE
} GXTevScale;

typedef enum _GXFogType {
    GX_FOG_NONE             = 0x00,
    GX_FOG_PERSP_LIN        = 0x02,
    GX_FOG_PERSP_EXP        = 0x04,
    GX_FOG_PERSP_EXP2       = 0x05,
    GX_FOG_PERSP_REVEXP     = 0x06,
    GX_FOG_PERSP_REVEXP2    = 0x07,
    GX_FOG_ORTHO_LIN        = 0x0A,
    GX_FOG_ORTHO_EXP        = 0x0C,
    GX_FOG_ORTHO_EXP2       = 0x0D,
    GX_FOG_ORTHO_REVEXP     = 0x0E,
    GX_FOG_ORTHO_REVEXP2    = 0x0F,
    GX_FOG_LIN              = GX_FOG_PERSP_LIN,
    GX_FOG_EXP              = GX_FOG_PERSP_EXP,
    GX_FOG_EXP2             = GX_FOG_PERSP_EXP2,
    GX_FOG_REVEXP           = GX_FOG_PERSP_REVEXP,
    GX_FOG_REVEXP2          = GX_FOG_PERSP_REVEXP2
} GXFogType;

typedef enum _GXBlendMode {
    GX_BM_NONE,
    GX_BM_BLEND,
    GX_BM_LOGIC,
    GX_BM_SUBTRACT,
    GX_MAX_BLENDMODE
} GXBlendMode;

typedef enum _GXBlendFactor {
    GX_BL_ZERO,
    GX_BL_ONE,
    GX_BL_SRCCLR,
    GX_BL_INVSRCCLR,
    GX_BL_SRCALPHA,
    GX_BL_INVSRCALPHA,
    GX_BL_DSTALPHA,
    GX_BL_INVDSTALPHA,

    GX_BL_DSTCLR    = GX_BL_SRCCLR,
    GX_BL_INVDSTCLR = GX_BL_INVSRCCLR
} GXBlendFactor;

typedef enum _GXCompare {
    GX_NEVER,
    GX_LESS,
    GX_EQUAL,
    GX_LEQUAL,
    GX_GREATER,
    GX_NEQUAL,
    GX_GEQUAL,
    GX_ALWAYS
} GXCompare;

typedef enum _GXLogicOp {
    GX_LO_CLEAR,
    GX_LO_AND,
    GX_LO_REVAND,
    GX_LO_COPY,
    GX_LO_INVAND,
    GX_LO_NOOP,
    GX_LO_XOR,
    GX_LO_OR,
    GX_LO_NOR,
    GX_LO_EQUIV,
    GX_LO_INV,
    GX_LO_REVOR,
    GX_LO_INVCOPY,
    GX_LO_INVOR,
    GX_LO_NAND,
    GX_LO_SET
} GXLogicOp;

typedef enum _GXPixelFmt {
    GX_PF_RGB8_Z24,
    GX_PF_RGBA6_Z24,
    GX_PF_RGB565_Z16,
    GX_PF_Z24,
    GX_PF_Y8,
    GX_PF_U8,
    GX_PF_V8,
    GX_PF_YUV420
} GXPixelFmt;

typedef enum _GXZFmt16 {
    GX_ZC_LINEAR,
    GX_ZC_NEAR,
    GX_ZC_MID,
    GX_ZC_FAR
} GXZFmt16;

typedef enum _GXTevMode {
    GX_MODULATE,
    GX_DECAL,
    GX_BLEND,
    GX_REPLACE,
    GX_PASSCLR
} GXTevMode;

typedef enum _GXGamma { GX_GM_1_0, GX_GM_1_7, GX_GM_2_2 } GXGamma;

typedef enum _GXProjectionType {
    GX_PERSPECTIVE,
    GX_ORTHOGRAPHIC
} GXProjectionType;

typedef enum _GXEvent {
    GX_VCACHE_MISS_ALL,
    GX_VCACHE_MISS_POS,
    GX_VCACHE_MISS_NRM
} GXEvent;

typedef enum _GXFBClamp {
    GX_CLAMP_NONE,
    GX_CLAMP_TOP,
    GX_CLAMP_BOTTOM
} GXFBClamp;

typedef enum _GXAnisotropy {
    GX_ANISO_1,
    GX_ANISO_2,
    GX_ANISO_4,
    GX_MAX_ANISOTROPY
} GXAnisotropy;

typedef enum _GXZTexOp {
    GX_ZT_DISABLE,
    GX_ZT_ADD,
    GX_ZT_REPLACE,
    GX_MAX_ZTEXOP

} GXZTexOp;

typedef enum _GXTexMtxType { GX_MTX3x4 = 0, GX_MTX2x4 } GXTexMtxType;

typedef enum _GXPrimitive {
    GX_POINTS           = 0xb8,
    GX_LINES            = 0xa8,
    GX_LINESTRIP        = 0xb0,
    GX_TRIANGLES        = 0x90,
    GX_TRIANGLESTRIP    = 0x98,
    GX_TRIANGLEFAN      = 0xa0,
    GX_QUADS            = 0x80
} GXPrimitive;

typedef enum _GXPerf0 {
    GX_PERF0_VERTICES,
    GX_PERF0_CLIP_VTX,
    GX_PERF0_CLIP_CLKS,
    GX_PERF0_XF_WAIT_IN,
    GX_PERF0_XF_WAIT_OUT,
    GX_PERF0_XF_XFRM_CLKS,
    GX_PERF0_XF_LIT_CLKS,
    GX_PERF0_XF_BOT_CLKS,
    GX_PERF0_XF_REGLD_CLKS,
    GX_PERF0_XF_REGRD_CLKS,
    GX_PERF0_CLIP_RATIO,
    GX_PERF0_TRIANGLES,
    GX_PERF0_TRIANGLES_CULLED,
    GX_PERF0_TRIANGLES_PASSED,
    GX_PERF0_TRIANGLES_SCISSORED,
    GX_PERF0_TRIANGLES_0TEX,
    GX_PERF0_TRIANGLES_1TEX,
    GX_PERF0_TRIANGLES_2TEX,
    GX_PERF0_TRIANGLES_3TEX,
    GX_PERF0_TRIANGLES_4TEX,
    GX_PERF0_TRIANGLES_5TEX,
    GX_PERF0_TRIANGLES_6TEX,
    GX_PERF0_TRIANGLES_7TEX,
    GX_PERF0_TRIANGLES_8TEX,
    GX_PERF0_TRIANGLES_0CLR,
    GX_PERF0_TRIANGLES_1CLR,
    GX_PERF0_TRIANGLES_2CLR,
    GX_PERF0_QUAD_0CVG,
    GX_PERF0_QUAD_NON0CVG,
    GX_PERF0_QUAD_1CVG,
    GX_PERF0_QUAD_2CVG,
    GX_PERF0_QUAD_3CVG,
    GX_PERF0_QUAD_4CVG,
    GX_PERF0_AVG_QUAD_CNT,
    GX_PERF0_CLOCKS,
    GX_PERF0_NONE
} GXPerf0;

typedef enum _GXPerf1 {
    GX_PERF1_TEXELS,
    GX_PERF1_TX_IDLE,
    GX_PERF1_TX_REGS,
    GX_PERF1_TX_MEMSTALL,
    GX_PERF1_TC_CHECK1_2,
    GX_PERF1_TC_CHECK3_4,
    GX_PERF1_TC_CHECK5_6,
    GX_PERF1_TC_CHECK7_8,
    GX_PERF1_TC_MISS,
    GX_PERF1_VC_ELEMQ_FULL,
    GX_PERF1_VC_MISSQ_FULL,
    GX_PERF1_VC_MEMREQ_FULL,
    GX_PERF1_VC_STATUS7,
    GX_PERF1_VC_MISSREP_FULL,
    GX_PERF1_VC_STREAMBUF_LOW,
    GX_PERF1_VC_ALL_STALLS,
    GX_PERF1_VERTICES,
    GX_PERF1_FIFO_REQ,
    GX_PERF1_CALL_REQ,
    GX_PERF1_VC_MISS_REQ,
    GX_PERF1_CP_ALL_REQ,
    GX_PERF1_CLOCKS,
    GX_PERF1_NONE
} GXPerf1;

typedef enum _GXVCachePerf {
    GX_VC_POS,
    GX_VC_NRM,
    GX_VC_CLR0,
    GX_VC_CLR1,
    GX_VC_TEX0,
    GX_VC_TEX1,
    GX_VC_TEX2,
    GX_VC_TEX3,
    GX_VC_TEX4,
    GX_VC_TEX5,
    GX_VC_TEX6,
    GX_VC_TEX7,
    GX_VC_ALL = 0xf
} GXVCachePerf;

typedef enum _GXCopyMode {
    GX_COPY_PROGRESSIVE = 0,
    GX_COPY_INTLC_EVEN  = 2,
    GX_COPY_INTLC_ODD   = 3
} GXCopyMode;

typedef enum _GXTlutFmt {
    GX_TL_IA8       = 0x0,
    GX_TL_RGB565    = 0x1,
    GX_TL_RGB5A3    = 0x2,
    GX_MAX_TLUTFMT
} GXTlutFmt;

typedef enum _GXTevSwapSel {
    GX_TEV_SWAP0 = 0,
    GX_TEV_SWAP1,
    GX_TEV_SWAP2,
    GX_TEV_SWAP3,
    GX_MAX_TEVSWAP
} GXTevSwapSel;

typedef enum _GXPosNrmMtx {
    GX_PNMTX0 = 0,
    GX_PNMTX1 = 3,
    GX_PNMTX2 = 6,
    GX_PNMTX3 = 9,
    GX_PNMTX4 = 12,
    GX_PNMTX5 = 15,
    GX_PNMTX6 = 18,
    GX_PNMTX7 = 21,
    GX_PNMTX8 = 24,
    GX_PNMTX9 = 27
} GXPosNrmMtx;

typedef enum _GXTexMtx {
    GX_TEXMTX0  = 30,
    GX_TEXMTX1  = 33,
    GX_TEXMTX2  = 36,
    GX_TEXMTX3  = 39,
    GX_TEXMTX4  = 42,
    GX_TEXMTX5  = 45,
    GX_TEXMTX6  = 48,
    GX_TEXMTX7  = 51,
    GX_TEXMTX8  = 54,
    GX_TEXMTX9  = 57,
    GX_IDENTITY = 60
} GXTexMtx;

typedef enum _GXTevColorChan {
    GX_CH_RED = 0,
    GX_CH_GREEN,
    GX_CH_BLUE,
    GX_CH_ALPHA
} GXTevColorChan;

typedef enum _GXCITexFmt {
    GX_TF_C4    = 0x8,
    GX_TF_C8    = 0x9,
    GX_TF_C14X2 = 0xA
} GXCITexFmt;


#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_ENUM_H
