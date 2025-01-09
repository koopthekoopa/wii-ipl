#ifndef IPL_NIGAOE_H
#define IPL_NIGAOE_H

#include "nw4r/ut/list.h"
#include <decomp.h>

#include <revolution.h>

#include <nw4r/ut.h>

#include <egg/core.h>

#include <RVLFaceLib.h>

namespace ipl {
    namespace nigaoe {
        class Object {
            public:
                typedef void (*MakeIconCallback)(Object*, void*);

                Object(EGG::Heap* heap, int width, int height, int faceId, MakeIconCallback callback, void* callbackWork);
                Object(EGG::Heap* heap, int width, int height, RFLiCharData* faceData, MakeIconCallback callback, void* callbackWork);
                ~Object();
            
            private:
                void    init(EGG::Heap* heap, int width, int height);
                void    make_icon();

                BOOL    created() const         { return mbCreated; }
                u8*     getIconTexture() const  { return mpIconTex; }

                u8*                 mpIconTex;          // 0x00
                u32                 mIconSize;          // 0x04
                
                RFLIconSetting      mIconSettings;      // 0x08
                
                GXTexObj            mFaceTexObj;        // 0x18
                
                RFLiCharData*       mpCharData;         // 0x38
                u32                 mFaceId;            // 0x3C
                
                MakeIconCallback    mCallBack;          // 0x40
                
                void*               mpCallBackWork;     // 0x44
                
                nw4r::ut::Link      mLink;              // 0x48

                bool                mbCreated;          // 0x50
            
            friend class Manager;
        };
    }
}

#endif // IPL_NIGAOE_H
