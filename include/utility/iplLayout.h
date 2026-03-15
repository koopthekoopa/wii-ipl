#ifndef IPL_UTILITY_LAYOUT_H
#define IPL_UTILITY_LAYOUT_H

#include <revolution/gx/GXStruct.h>
#include <revolution/types.h>

#include <nw4r/lyt/material.h>
#include <nw4r/lyt/pane.h>

namespace ipl {
    namespace utility {
        namespace layout {
            void set_string(nw4r::lyt::Pane* pane, const wchar_t* string);

            void set_texture(nw4r::lyt::Material* dest, const GXTexObj& texObj);
            void set_texture(nw4r::lyt::Material* dest, const nw4r::lyt::Material* src, u8 texMap = GX_TEXMAP0);
        }  // namespace layout
    }  // namespace utility
}  // namespace ipl

#endif  // IPL_UTILITY_LAYOUT_H
