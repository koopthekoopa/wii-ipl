#include "system/iplSystem.h"
#include "utility/iplCapture.h"

namespace ipl {
    namespace utility {
        /*
            @Address: 0x813632A8
            @Size: 0x9C
        */
        Capture::Capture(EGG::Heap* pHeap, int x, int y, int width, int height, _GXTexFmt texFmt) {
            mXPos = (u16)x;
            mYPos = (u16)y;
            
            mTextureWidth = (u16)width;
            mTextureHeight = (u16)height;
            
            mTextureFormat = texFmt;
            
            mTextureSize = GXGetTexBufferSize(width, height, texFmt, GX_FALSE, 1);
            mTextureBuffer = new(pHeap, DOLPHIN_ALIGNMENT) u8[mTextureSize];
            
            GXInitTexObj(&mTexObj, mTextureBuffer, mTextureWidth, mTextureHeight, mTextureFormat, GX_CLAMP, GX_CLAMP, GX_FALSE);
        }
        
        /*
            @Address: 0x81363344
            @Size: 0x58
        */
        Capture::~Capture() {
            delete[] mTextureBuffer;
        }
        
        /*
            @Address: 0x8136339C
            @Size: 0xC0
        */
        void Capture::capture(BOOL unk) {
            DCInvalidateRange(mTextureBuffer, mTextureSize);
            
            if (!unk) {
                GXRenderModeObj *pRmode = System::getRenderModeObj();
                GXSetCopyFilter(GX_FALSE, pRmode->sample_pattern, GX_FALSE, pRmode->vfilter);
            }
            
            GXSetTexCopySrc(mXPos, mYPos, mTextureWidth, mTextureHeight);
            GXSetTexCopyDst(mTextureWidth, mTextureHeight, mTextureFormat, GX_FALSE);
            
            GXCopyTex(mTextureBuffer, GX_FALSE);
            GXPixModeSync();
            
            if (unk == FALSE) {
                GXRenderModeObj *pRmode = System::getRenderModeObj();
                GXSetCopyFilter(pRmode->aa, pRmode->sample_pattern, GX_TRUE, pRmode->vfilter);
            }
        }
    }
}

