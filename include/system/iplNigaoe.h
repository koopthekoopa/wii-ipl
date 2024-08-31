#ifndef IPL_NIGAOE_H
#define IPL_NIGAOE_H

#include <decomp.h>

#include <revolution.h>

#include <egg/core.h>

#include <RVLFaceLibPrivate.h>

namespace ipl {
    namespace nigaoe {
        class Object {
            typedef void (*MakeIconCallback)(Object*, void*);

            public:
                Object(EGG::Heap* pHeap, int width, int height, int faceId, MakeIconCallback callback, void* pArg3);
                Object(EGG::Heap* pHeap, int width, int height, RFLiCharData* pCharData, MakeIconCallback callback, void* pArg3);
                ~Object();
            
            private:
                void    init(EGG::Heap* pHeap, int width, int height);
                void    make_icon();
                
                u8*                 mpIconTex;      // 0x00
                size_t              mIconSize;      // 0x04
                
                RFLIconSetting      mIconSettings;  // 0x08
                
                GXTexObj            mFaceTexObj;    // 0x18
                
                RFLiCharData*       mpCharData;     // 0x38
                u32                 mFaceId;        // 0x3c
                
                MakeIconCallback    mCallBack;      // 0x40
                
                void*               unk_0x44;
                undefined4          unused_0x48;
                undefined4          unused_0x4c;
                u8                  unk_0x50;
        };
    }
}

#endif // IPL_NIGAOE_H


