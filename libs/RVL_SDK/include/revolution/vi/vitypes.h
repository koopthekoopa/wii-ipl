#ifndef REVOLUTION_VI_TYPES_H
#define REVOLUTION_VI_TYPES_H

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    VI_NTSC = 0,
    VI_PAL,
    VI_MPAL,
    VI_DEBUG,
    VI_DEBUG_PAL,
    VI_EURGB60
};

typedef enum {
    VI_INTERLACE = 0,
    VI_NON_INTERLACE,
    VI_PROGRESSIVE
};

#define VI_TVMODE(format, interlace)   (((format) << 2) + (interlace))

typedef enum {
    VI_TVMODE_NTSC_INT      = VI_TVMODE(VI_NTSC, VI_INTERLACE),
    VI_TVMODE_NTSC_DS       = VI_TVMODE(VI_NTSC, VI_NON_INTERLACE),
    VI_TVMODE_NTSC_PROG     = VI_TVMODE(VI_NTSC, VI_PROGRESSIVE),

    VI_TVMODE_PAL_INT       = VI_TVMODE(VI_PAL, VI_INTERLACE),
    VI_TVMODE_PAL_DS        = VI_TVMODE(VI_PAL, VI_NON_INTERLACE),

    VI_TVMODE_EURGB60_INT   = VI_TVMODE(VI_EURGB60, VI_INTERLACE),
    VI_TVMODE_EURGB60_DS    = VI_TVMODE(VI_EURGB60, VI_NON_INTERLACE),
    VI_TVMODE_EURGB60_PROG  = VI_TVMODE(VI_EURGB60, VI_PROGRESSIVE),
    
    VI_TVMODE_MPAL_INT      = VI_TVMODE(VI_MPAL, VI_INTERLACE),
    VI_TVMODE_MPAL_DS       = VI_TVMODE(VI_MPAL, VI_NON_INTERLACE),
    VI_TVMODE_MPAL_PROG     = VI_TVMODE(VI_MPAL, VI_PROGRESSIVE),
    
    VI_TVMODE_DEBUG_INT     = VI_TVMODE(VI_DEBUG, VI_INTERLACE),

    VI_TVMODE_DEBUG_PAL_INT = VI_TVMODE(VI_DEBUG_PAL, VI_INTERLACE),
    VI_TVMODE_DEBUG_PAL_DS  = VI_TVMODE(VI_DEBUG_PAL, VI_NON_INTERLACE)
} VITVMode;
    
typedef enum {
    VI_XFBMODE_SF           = 0,
    VI_XFBMODE_DF
} VIXFBMode;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_VI_TYPES_H


