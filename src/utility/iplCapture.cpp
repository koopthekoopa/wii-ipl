#include "utility/iplCapture.h"

#include "system/iplSystem.h"

namespace ipl {
    namespace utility {
        /**
         * @note Address: 0x813632A8 (4.3U)
         * @note Size: 0x9C
         */
        Capture::Capture(EGG::Heap* pHeap, int x, int y, int width, int height, _GXTexFmt texFmt)
        : mXPos(x), mYPos(y), mTextureWidth(width), mTextureHeight(height), mTextureFormat(texFmt) {
            mTextureSize = GXGetTexBufferSize(width, height, texFmt, GX_FALSE, 1);
            mTextureBuffer = new(pHeap, DOLPHIN_ALIGNMENT) u8[mTextureSize];
            
            GXInitTexObj(&mTexObj, mTextureBuffer, mTextureWidth, mTextureHeight, mTextureFormat, GX_CLAMP, GX_CLAMP, GX_FALSE);
        }
        
        /**
         * @note Address: 0x81363344 (4.3U)
         * @note Size: 0x58
         */
        Capture::~Capture() {
            delete[] mTextureBuffer;
        }
        
        /**
         * @note Address: 0x8136339C (4.3U)
         * @note Size: 0xC0
         */
        void Capture::capture(BOOL disableFilter) {
            DCInvalidateRange(mTextureBuffer, mTextureSize);
            
            if (!disableFilter) {
                GXRenderModeObj *pRmode = System::getRenderModeObj();
                GXSetCopyFilter(GX_FALSE, pRmode->sample_pattern, GX_FALSE, pRmode->vfilter);
            }
            
            GXSetTexCopySrc(mXPos, mYPos, mTextureWidth, mTextureHeight);
            GXSetTexCopyDst(mTextureWidth, mTextureHeight, mTextureFormat, GX_FALSE);
            
            GXCopyTex(mTextureBuffer, GX_FALSE);
            GXPixModeSync();
            
            if (!disableFilter) {
                GXRenderModeObj *pRmode = System::getRenderModeObj();
                GXSetCopyFilter(pRmode->aa, pRmode->sample_pattern, GX_TRUE, pRmode->vfilter);
            }
        }
    }
}


