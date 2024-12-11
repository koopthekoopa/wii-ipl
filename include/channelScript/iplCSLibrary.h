#ifndef IPL_CS_LIBRARY_H
#define IPL_CS_LIBRARY_H

#include "channelScript/CHANSVm.h"

#define DEFINE_LIB(l)               namespace l { BOOL init(CHANSVm* vm); }

#define INIT_CS_LIB(vm, l)          cs::l::init(vm)

namespace ipl {
    namespace cs {
        // Sytsem Menu
        DEFINE_LIB(system)
        // Layout
        DEFINE_LIB(layout)
        DEFINE_LIB(pane)
        DEFINE_LIB(material)
        DEFINE_LIB(texture)
        // Save data
        DEFINE_LIB(savedata)
        // Math stuff
        DEFINE_LIB(vec3)
        DEFINE_LIB(mtx34)
        // Graphics
        DEFINE_LIB(gx)
        // Text
        DEFINE_LIB(textwriter)
        DEFINE_LIB(font)
        // Rectangle
        DEFINE_LIB(rect)
        DEFINE_LIB(size)
        // Color
        DEFINE_LIB(color)
        DEFINE_LIB(color_s10)
        // Animation
        DEFINE_LIB(anim)
        // Sound
        DEFINE_LIB(sound)
        // Allocator
        DEFINE_LIB(iplimage)
    }
}

#undef DEFINE_LIB

#endif // IPL_CS_LIBRARY_H


