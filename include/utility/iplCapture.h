#ifndef IPL_CAPTURE_H
#define IPL_CAPTURE_H

#include <decomp.h>

#include <revolution.h>

#include <egg/core.h>

namespace ipl {
    namespace utility {
        class Capture {
            public:
                Capture(EGG::Heap* pHeap, int x, int y, int width, int height, _GXTexFmt texFmt);
                ~Capture();

                void    capture(BOOL copyFilter);
            
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


