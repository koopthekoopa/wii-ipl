#ifndef IPL_FRAME_WORK_H
#define IPL_FRAME_WORK_H

#include "revolution/gx/GXStruct.h"
#include <revolution/types.h>

#include <revolution/gx.h>
#include <revolution/vi.h>

#include <egg/core.h>

namespace ipl {
    class Framework {
        public:
            Framework(EGG::Heap* heap);

            void                beginFrame();
            void                beginRender();
            void                endRender();
            void                endFrame();

            void                resetRenderMode();

            GXRenderModeObj*    getRenderMode() const   { return mpRMode; }
            BOOL                isWidescreen() const    { return mWideScreen; }
            f32                 getDelta() const        { return mDelta; }

        private:
            void    flip_xfb();
            
            void    init_vi();
            void    init_xfb(EGG::Heap* heap);
            void    reset_render_mode();

            GXRenderModeObj*    mpRMode;        // 0x00

            int                 mCurXfb;        // 0x04
            u8*                 mpXfb[2];       // 0x08

            BOOL                mWideScreen;    // 0x10

            f32                 mDelta;         // 0x14
    };
}

#endif // IPL_FRAME_WORK_H
