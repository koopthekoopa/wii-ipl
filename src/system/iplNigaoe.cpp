#include "system/iplNigaoe.h"

#include <revolution.h>

#include <cstring>

#include "system/iplSystem.h"

#define GX_RGB5A3_SIZE 2

namespace ipl {
    namespace nigaoe {
        /**
         * @note Address: 0x8133EE00 (4.3U)
         * @note Size: 0x48
         */
        Object::Object(EGG::Heap* pHeap, int width, int height, int faceId, MakeIconCallback callback, void* pArg3) :
        mFaceId(faceId),
        mpCharData(NULL),
        mCallBack(callback),
        unk_0x44(pArg3),
        unk_0x50(0) {

            init(pHeap, width, height);
        }
        
        /**
         * @note Address: 0x8133EE48 (4.3U)
         * @note Size: 0x4C
         */
        Object::Object(EGG::Heap* pHeap, int width, int height, RFLiCharData* charData, MakeIconCallback callback, void* pArg3) :
        mFaceId(-1),
        mpCharData(charData),
        mCallBack(callback),
        unk_0x44(pArg3),
        unk_0x50(0) {
            
            init(pHeap, width, height);
        }
        
        /**
         * @note Address: 0x8133EE94 (4.3U)
         * @note Size: 0x7C
         */
        void Object::init(EGG::Heap* pHeap, int width, int height) {
            mIconSettings.width = width;
            mIconSettings.height = height;
            
            mIconSettings.bgType = RFLIconBG_Direct;
            mIconSettings.bgColor = (GXColor){0, 0, 0, 0};
            
            mIconSettings.drawXluOnly = FALSE;

            u32 iconSize = width * height * GX_RGB5A3_SIZE;
            mIconSize = iconSize;
                
            mpIconTex = new(pHeap, BUFFER_HEAP) u8[iconSize];
        }
        
        /**
         * @note Address: 0x8133EF10 (4.3U)
         * @note Size: 0x58
         */
        Object::~Object() {
            delete[] mpIconTex;
        }
        
        /**
         * @note Address: 0x8133EF68 (4.3U)
         * @note Size: 0x100
         */
        void Object::make_icon() {
            GXRenderModeObj *rMode;
            RFLErrcode err = RFLErrcode_Success;
            
            if (mpCharData != NULL) {
                RFLiMakeIconFromData((void*)mpIconTex, mpCharData, RFLExp_Normal, &mIconSettings);
            }
            else {
                err = RFLMakeIcon((void*)mpIconTex, RFLDataSource_Official, NULL, (u16)mFaceId, RFLExp_Normal, &mIconSettings);
            }
            
            if (err != RFLErrcode_Success) {
                memset(mpIconTex, 0, mIconSize);
                DCStoreRange(mpIconTex, mIconSize);
            }
            
            rMode = System::getRenderModeObj();
            
            GXSetCopyFilter(rMode->aa, rMode->sample_pattern, GX_TRUE, rMode->vfilter);
            GXSetDither(GX_TRUE);
            
            GXInitTexObj(&mFaceTexObj, mpIconTex, mIconSettings.width, mIconSettings.height, GX_TF_RGB5A3, GX_CLAMP, GX_CLAMP, GX_FALSE);
            
            unk_0x50 = 1;
            mCallBack(this, unk_0x44);
        }
    }
}


