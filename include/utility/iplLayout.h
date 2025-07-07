#ifndef IPL_UTILITY_LAYOUT_H
#define IPL_UTILITY_LAYOUT_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

#include <nw4r/lyt/pane.h>
#include <nw4r/lyt/material.h>

namespace ipl {
    namespace utility {
        namespace layout {
            void    set_string(nw4r::lyt::Pane* pane, const wchar_t* string);

            void    set_texture(nw4r::lyt::Material* dest, const GXTexObj& texObj);
            void    set_texture(nw4r::lyt::Material* dest, const nw4r::lyt::Material* src, u8 texMap = GX_TEXMAP0);
        }
    }
}

#endif // IPL_UTILITY_LAYOUT_H
