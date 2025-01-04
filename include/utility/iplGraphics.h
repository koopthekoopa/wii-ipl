#ifndef IPL_GRAPHICS_H
#define IPL_GRAPHICS_H

#include <revolution/types.h>
#include <revolution/gx.h>
#include <revolution/mtx.h>

#include "iplMath.h"

namespace ipl {
    namespace utility {
        class Graphics {
            public:
                class Arg {
                    private:
                        u8          unk_0x00[0x40 - 0x00];
                        math::MTX34 unk_0x3C;
                        u8          unk_0x6C[0x88 - 0x6C];
                    friend class Graphics;
                };
                static void setOrtho(u32 ortho = GX_PNMTX0);
                static void setDefaultOrtho(u32 ortho = GX_PNMTX0);
                static void calcOrthoCamera();
                
                static math::MTX34* getUnk3C() { return &mArg.unk_0x3C; }

            private:
                static Arg  mArg;
        };
    }
}

#endif // IPL_GRAPHICS_H
