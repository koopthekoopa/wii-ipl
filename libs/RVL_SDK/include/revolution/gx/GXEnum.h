#ifndef REVOLUTION_GX_ENUM_H
#define REVOLUTION_GX_ENUM_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef u8 GXBool;

#define GX_TRUE        ((GXBool)TRUE)
#define GX_FALSE       ((GXBool)FALSE)

#define _GX_TF_ZTF     0x10 /* Z Texture format */
#define _GX_TF_CTF     0x20 /* Copy texture format */

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

typedef enum _GXTexFmt {
    GX_TF_I4     = 0x00,
    GX_TF_I8     = 0x01,
    GX_TF_IA4    = 0x02,
    GX_TF_IA8    = 0x03,
    GX_TF_RGB565 = 0x04,
    GX_TF_RGB5A3 = 0x05,
    GX_TF_RGBA8  = 0x06,
    GX_TF_CMPR   = 0x0E,
    
    GX_TF_Z8     = 0x01 | _GX_TF_ZTF,
    GX_TF_Z16    = 0x03 | _GX_TF_ZTF,
    GX_TF_Z24X8  = 0x06 | _GX_TF_ZTF,
    
    GX_CTF_R4    = 0x00 | _GX_TF_CTF,
    GX_CTF_RA4   = 0x02 | _GX_TF_CTF,
    GX_CTF_RA8   = 0x03 | _GX_TF_CTF,
    GX_CTF_YUVA8 = 0x06 | _GX_TF_CTF,
    GX_CTF_A8    = 0x07 | _GX_TF_CTF,
    GX_CTF_R8    = 0x08 | _GX_TF_CTF,
    GX_CTF_G8    = 0x09 | _GX_TF_CTF,
    GX_CTF_B8    = 0x0A | _GX_TF_CTF,
    GX_CTF_RG8   = 0x0B | _GX_TF_CTF,
    GX_CTF_GB8   = 0x0C | _GX_TF_CTF,

    GX_CTF_Z4    = 0x00 | _GX_TF_ZTF | _GX_TF_CTF,
    GX_CTF_Z8M   = 0x09 | _GX_TF_ZTF | _GX_TF_CTF,
    GX_CTF_Z8L   = 0x0A | _GX_TF_ZTF | _GX_TF_CTF,
    GX_CTF_Z16L  = 0x0C | _GX_TF_ZTF | _GX_TF_CTF,

    GX_TF_A8     = GX_CTF_A8
} GXTexFmt;

typedef enum _GXCITexFmt {
    GX_TF_C4    = 0x08,
    GX_TF_C8    = 0x09,
    GX_TF_C14X2 = 0x0A,
} GXCITexFmt;

typedef enum _GXPosNrmMtx {
    GX_PNMTX0   = 0,
    GX_PNMTX1   = 3,
    GX_PNMTX2   = 6,
    GX_PNMTX3   = 9,
    GX_PNMTX4   = 12,
    GX_PNMTX5   = 15,
    GX_PNMTX6   = 18,
    GX_PNMTX7   = 21,
    GX_PNMTX8   = 24,
    GX_PNMTX9   = 27
} GXPosNrmMtx;

typedef enum _GXTexWrapMode {
    GX_CLAMP,
    GX_REPEAT,
    GX_MIRROR,
    GX_MAX_TEXWRAPMODE
} GXTexWrapMode;

typedef enum _GXTexFilter {
    GX_NEAR = 0,
    GX_LINEAR,
    GX_NEAR_MIP_NEAR,
    GX_LIN_MIP_NEAR,
    GX_NEAR_MIP_LIN,
    GX_LIN_MIP_LIN
} GXTexFilter;

typedef enum _GXAnisotropy {
    GX_ANISO_1 = 0,
    GX_ANISO_2,
    GX_ANISO_4,
    GX_MAX_ANISOTROPY
} GXAnisotropy;

typedef enum _GXDistAttnFn {
    GX_DA_OFF = 0,
    GX_DA_GENTLE,
    GX_DA_MEDIUM,
    GX_DA_STEEP
} GXDistAttnFn;

typedef enum _GXSpotFn {
    GX_SP_OFF = 0,
    GX_SP_FLAT,
    GX_SP_COS,
    GX_SP_COS2 ,
    GX_SP_SHARP,
    GX_SP_RING1,
    GX_SP_RING2,
} GXSpotFn;

typedef enum _GXLightID {
    GX_LIGHT0 = (1 << 0),
    GX_LIGHT1 = (1 << 1),
    GX_LIGHT2 = (1 << 2),
    GX_LIGHT3 = (1 << 3),
    GX_LIGHT4 = (1 << 4),
    GX_LIGHT5 = (1 << 5),
    GX_LIGHT6 = (1 << 6),
    GX_LIGHT7 = (1 << 7),

    GX_MAX_LIGHT = (1 << 8),
    GX_LIGHT_NULL = 0
} GXLightID;

typedef enum _GXFogType {
    GX_FOG_NONE,

    GX_FOG_PERSP_LIN = 2,
    GX_FOG_PERSP_EXP = 4,
    GX_FOG_PERSP_EXP2 = 5,
    GX_FOG_PERSP_REVEXP = 6,
    GX_FOG_PERSP_REVEXP2 = 7,

    // Fourth bit is set to mark orthographic
    GX_FOG_ORTHO_LIN = 1 << 3 | GX_FOG_PERSP_LIN,
    GX_FOG_ORTHO_EXP = 1 << 3 | GX_FOG_PERSP_EXP,
    GX_FOG_ORTHO_EXP2 = 1 << 3 | GX_FOG_PERSP_EXP2,
    GX_FOG_ORTHO_REVEXP = 1 << 3 | GX_FOG_PERSP_REVEXP,
    GX_FOG_ORTHO_REVEXP2 = 1 << 3 | GX_FOG_PERSP_REVEXP2
} GXFogType;

typedef enum _GXCullMode {
    GX_CULL_NONE,
    GX_CULL_FRONT,
    GX_CULL_BACK,
    GX_CULL_ALL
} GXCullMode;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_ENUM_H
