#ifndef IPL_CAPTURE_H
#define IPL_CAPTURE_H

#include <decomp.h>

#include <revolution.h>

#include <egg/core.h>

namespace ipl {
    namespace utility {
        class Capture {
            public:
                /**
                 * @param heap The memory heap used for this.
                 * @param x The X position of the capture.
                 * @param y The Y position of the capture.
                 * @param width The width position of the capture.
                 * @param height The height position of the capture.
                 * @param texFmt Texture format of the capture. (RGB5A3 by default)
                 */
                Capture(EGG::Heap* heap, int x, int y, int width, int height, _GXTexFmt texFmt = GX_TF_RGB5A3);
                ~Capture();

                /**
                 * @brief Capture the screen
                 * 
                 * @param disableFilter Disable the GX filter on capture.
                 */
                void    capture(BOOL disableFilter);
            
            private:
                u16         mXPos;          // 0x00
                u16         mYPos;          // 0x02
                
                u16         mTextureWidth;  // 0x04
                u16         mTextureHeight; // 0x08
                
                GXTexFmt    mTextureFormat; // 0x08
                
                u32         mTextureSize;   // 0x0C
                u8*         mTextureBuffer; // 0x10
                
                GXTexObj    mTexObj;        // 0x14
        };
    }
}

#endif // IPL_CAPTURE_H


