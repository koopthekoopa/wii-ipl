#include "system/iplNigaoe.h"

#include <revolution.h>

#include <cstring>

#include "system/iplSystem.h"

#define GX_RGB5A3_SIZE 2

namespace ipl {
    namespace nigaoe {
        Object::Object(EGG::Heap* pHeap, int width, int height, int faceId, MakeIconCallback callback, void* callBackWork) :
        mFaceId(faceId),
        mpCharData(NULL),
        mCallBack(callback),
        mpCallBackWork(callBackWork),
        mbCreated(false) {
            init(pHeap, width, height);
        }

        Object::Object(EGG::Heap* pHeap, int width, int height, RFLiCharData* charData, MakeIconCallback callback, void* callBackWork) :
        mFaceId(-1),
        mpCharData(charData),
        mCallBack(callback),
        mpCallBackWork(callBackWork),
        mbCreated(false) {
            init(pHeap, width, height);
        }

        void Object::init(EGG::Heap* pHeap, int width, int height) {
            // Prepare icon settings
            mIconSettings.width = width;
            mIconSettings.height = height;
            
            mIconSettings.bgType = RFLIconBG_Direct;
            mIconSettings.bgColor = (GXColor){0, 0, 0, 0};
            
            mIconSettings.drawXluOnly = FALSE;

            // Prepare icon buffer.
            u32 iconSize = width * height * GX_RGB5A3_SIZE;
            mIconSize = iconSize;
                
            mpIconTex = new(pHeap, BUFFER_HEAP) u8[iconSize];
        }

        Object::~Object() {
            delete[] mpIconTex;
        }

        void Object::make_icon() {
            GXRenderModeObj *rMode;
            RFLErrcode err = RFLErrcode_Success;
            
            if (mpCharData != NULL) {
                RFLiMakeIconFromData(mpIconTex, mpCharData, RFLExp_Normal, &mIconSettings);
            }
            else {
                err = RFLMakeIcon(mpIconTex, RFLDataSource_Official, NULL, mFaceId, RFLExp_Normal, &mIconSettings);
            }
            
            if (err != RFLErrcode_Success) {
                memset(mpIconTex, 0, mIconSize);
                DCStoreRange(mpIconTex, mIconSize);
            }
            
            rMode = System::getRenderModeObj();
            
            GXSetCopyFilter(rMode->aa, rMode->sample_pattern, GX_TRUE, rMode->vfilter);
            GXSetDither(GX_TRUE);
            
            GXInitTexObj(&mFaceTexObj, mpIconTex, mIconSettings.width, mIconSettings.height, RFL_ICON_TEX_FORMAT, GX_CLAMP, GX_CLAMP, GX_FALSE);
            
            mbCreated = true;
            mCallBack(this, mpCallBackWork);
        }
    }
}


