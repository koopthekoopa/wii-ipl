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

typedef enum {
    GX_CLAMP,
    GX_REPEAT,
    GX_MIRROR,
    GX_MAX_TEXWRAPMODE
} GXTexWrapMode;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_ENUM_H


