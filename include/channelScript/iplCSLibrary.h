#ifndef IPL_CS_LIBRARY_H
#define IPL_CS_LIBRARY_H

#include "channelScript/CHANSVm.h"

#define INIT_EXTERN(l)              namespace l { BOOL init(CHANSVm* vm); }

#define CS_LIB_DONE(vm, l)          cs::l::init(vm)

namespace ipl {
    namespace cs {
        INIT_EXTERN(system)

        INIT_EXTERN(layout)
        INIT_EXTERN(pane)
        INIT_EXTERN(material)
        INIT_EXTERN(texture)

        INIT_EXTERN(savedata)

        INIT_EXTERN(vec3)
        INIT_EXTERN(mtx34)
        INIT_EXTERN(gx)

        INIT_EXTERN(textwriter)
        INIT_EXTERN(font)
        INIT_EXTERN(rect)
        INIT_EXTERN(color)
        INIT_EXTERN(color_s10)
        INIT_EXTERN(size)

        INIT_EXTERN(anim)

        INIT_EXTERN(sound)

        INIT_EXTERN(iplimage)
    }
}

#endif // IPL_CS_LIBRARY_H


