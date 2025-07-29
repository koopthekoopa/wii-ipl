#ifndef IPL_GRAPHICS_H
#define IPL_GRAPHICS_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

#include <nw4r/math/types.h>
#include <nw4r/ut/Rect.h>

#include "iplMath.h"

namespace ipl {
    namespace utility {
        class Graphics {
            public:
                class Arg {
                    private:
                        Arg();

                        nw4r::math::MTX44   mProjMtx;       // 0x00
                        nw4r::math::MTX34   mViewMtx;       // 0x40

                        ipl::math::VEC3     mOrthoTrans;    // 0x70
                        ipl::math::VEC2     mOrthoScale;    // 0x7C
                    friend class Graphics;
                };
                typedef enum Orientation {
                    ORIENTATION_0 = 0,
                    ORIENTATION_1,
                    ORIENTATION_2
                } Orientation;

                static nw4r::math::MTX34&   getViewMtx() { return mArg.mViewMtx; }

                static void                 setOrtho(u32 ortho = GX_PNMTX0);
                static void                 setDefaultOrtho(u32 ortho = GX_PNMTX0);

                static void                 setOrthoProjection(const math::VEC3& translate, const math::VEC2& scale);
                static void                 setOrthoProjection(u32 id);

                static void                 calcOrthoCamera();
                static void                 setCamera(u32 id = 0);

                static void                 drawPolygon(const nw4r::ut::Rect& rect, GXColor color);
                static void                 drawTexture(const nw4r::ut::Rect& rect, const GXTexObj& texObj, GXColor color, u8 texCoord, Orientation ori);
            private:
                static Arg  mArg;
        };
    }
}

#endif // IPL_GRAPHICS_H
