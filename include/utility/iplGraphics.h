#ifndef IPL_GRAPHICS_H
#define IPL_GRAPHICS_H

#include <revolution/types.h>
#include <revolution/gx.h>

namespace ipl {
    namespace utility {
        class Graphics {
            public:
                static void setDefaultOrtho(u32 ortho = GX_PNMTX0);
        };
    }
}

#endif // IPL_GRAPHICS_H


