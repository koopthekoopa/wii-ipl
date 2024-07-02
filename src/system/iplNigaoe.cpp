#include "system/iplSystem.h"
#include "system/iplNigaoe.h"
#include <revolution/gx.h>
#include <string.h>

#define GX_RGB5A3_SIZE 2

namespace ipl {
    namespace nigaoe {
        /*
            @Address: 0x8133EE00
            @Size: 0x48
        */
        Object::Object(EGG::Heap* pHeap, int width, int height, int faceId, void (*someFunc)(ipl::nigaoe::Object*, void*), void* pArg3) {
            mFaceId = faceId;
            mpCharData = NULL;
            
            mSomeFunc = someFunc;
            
            field_0x44 = pArg3;
            field_0x50 = 0;
            
            init(pHeap, width, height);
        }
        
        /*
            @Address: 0x8133EE48
            @Size: 0x4C
        */
        Object::Object(EGG::Heap* pHeap, int width, int height, RFLiCharData* charData, void (*someFunc)(ipl::nigaoe::Object*, void*), void* pArg3) {
            mpCharData = charData;
            mFaceId = -1;
            
            mSomeFunc = someFunc;
            
            field_0x44 = pArg3;
            field_0x50 = 0;
            
            init(pHeap, width, height);
        }
        
        /*
            @Address: 0x8133EE94
            @Size: 0x7C
        */
        void Object::init(EGG::Heap* pHeap, int width, int height) {
            mIconSettings.width = width;
            mIconSettings.height = height;
            
            mIconSettings.bgType = RFLIconBG_Direct;
            mIconSettings.bgColor = (GXColor){0, 0, 0, 0};
            
            mIconSettings.drawXluOnly = FALSE;

            {
                u32 iconSize = width * height * GX_RGB5A3_SIZE;
                mIconSize = iconSize;
                
                mpIconTex = new(pHeap, DOLPHIN_ALIGNMENT) u8[iconSize];
            }
        }
        
        /*
            @Address: 0x8133EF10
            @Size: 0x58
        */
        Object::~Object() {
            delete[] mpIconTex;
        }
        
        /*
            @Address: 0x8133EF68
            @Size: 0x100
        */
        void Object::make_icon() {
            GXRenderModeObj *rMode;
            RFLErrcode err = RFLErrcode_Success;
            
            if (mpCharData != NULL) {
                RFLiMakeIconFromData((void*)mpIconTex, mpCharData, RFLExp_Normal, &mIconSettings);
            }
            else {
                err = RFLMakeIcon((void*)mpIconTex, RFLDataSource_Official, NULL, (mFaceId & 0xFFFF), RFLExp_Normal, &mIconSettings);
            }
            
            if (err != RFLErrcode_Success) {
                memset(mpIconTex, 0, mIconSize);
                DCStoreRange(mpIconTex, mIconSize);
            }
            
            rMode = System::getRenderModeObj();
            
            GXSetCopyFilter(rMode->aa, rMode->sample_pattern, GX_TRUE, rMode->vfilter);
            GXSetDither(GX_TRUE);
            
            GXInitTexObj(&mFaceTexObj, mpIconTex, mIconSettings.width, mIconSettings.height, GX_TF_RGB5A3, GX_CLAMP, GX_CLAMP, GX_FALSE);
            
            field_0x50 = 1;
            mSomeFunc(this, field_0x44);
        }
    }
}


