#ifndef IPL_CS_LIBRARY_H
#define IPL_CS_LIBRARY_H

#include "channelScript/CHANSVm.h"
#include "channelScript/iplCSUtil.h"

#include <nw4r/ut/Color.h>
#include <revolution/gx/GXStruct.h>

// messy but so as CHANS

#define EXTERN_IPL_LIB(l)               namespace l { BOOL init(CHANSVm* vm); }

#define EXTERN_IPL_LIB_CTOR(l)          namespace l { BOOL _ctor(CHANSVm* VmInst, CHANSVmObjHdr* VmObj); }
#define EXTERN_IPL_LIB_CTOR_ARG(l, ...) namespace l { BOOL _ctor(CHANSVm* VmInst, CHANSVmObjHdr* VmObj, __VA_ARGS__); }

#define CS_IPL_CTOR(vm, obj, ...)       _ctor(vm, obj, __VA_ARGS__)

#define DEFINE_CS_IPL_CTOR()            BOOL _ctor(CHANSVm* VmInst, CHANSVmObjHdr* VmObj)
#define DEFINE_CS_IPL_CTOR_ARG(...)     BOOL _ctor(CHANSVm* VmInst, CHANSVmObjHdr* VmObj, __VA_ARGS__)

namespace ipl {
    namespace cs {
        // Sytsem Menu
        EXTERN_IPL_LIB(system)
        // Layout
        EXTERN_IPL_LIB(layout)
        EXTERN_IPL_LIB(pane)        EXTERN_IPL_LIB_CTOR_ARG(pane, u32 pane)
        EXTERN_IPL_LIB(material)    EXTERN_IPL_LIB_CTOR_ARG(material, u32 material)
        EXTERN_IPL_LIB(texture)
        // Save data
        EXTERN_IPL_LIB(savedata)
        // Math stuff
        EXTERN_IPL_LIB(vec3)        EXTERN_IPL_LIB_CTOR_ARG(material, f32 x, f32 y, f32 z)
        EXTERN_IPL_LIB(mtx34)
        // Graphics
        EXTERN_IPL_LIB(gx)
        // Text
        EXTERN_IPL_LIB(textwriter)
        EXTERN_IPL_LIB(font)        EXTERN_IPL_LIB_CTOR_ARG(font, u32 font)
        // Rectangle
        EXTERN_IPL_LIB(rect)        EXTERN_IPL_LIB_CTOR    (rect)
        EXTERN_IPL_LIB(size)        EXTERN_IPL_LIB_CTOR_ARG(size, f32 width, f32 height)
        // Color
        EXTERN_IPL_LIB(color)       EXTERN_IPL_LIB_CTOR_ARG(color, nw4r::ut::Color color)
        EXTERN_IPL_LIB(color_s10)   EXTERN_IPL_LIB_CTOR_ARG(color_s10, GXColorS10 color)
        // Animation
        EXTERN_IPL_LIB(anim)        EXTERN_IPL_LIB_CTOR_ARG(anim, u32 anim)
        // Sound
        EXTERN_IPL_LIB(sound)
        // Allocator
        EXTERN_IPL_LIB(iplimage)
    }
}

#undef EXTERN_IPL_LIB

#endif // IPL_CS_LIBRARY_H
