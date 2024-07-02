#ifndef IPL_NIGAOE_H
#define IPL_NIGAOE_H

#include <decomp_types.h>
#include <revolution.h>
#include <egg/core/eggHeap.h>
#include <RVLFaceLibPrivate.h>

namespace ipl {
    namespace nigaoe {
        class Object {
            public:
                Object(EGG::Heap* pHeap, int width, int height, int faceId, void (*someFunc)(ipl::nigaoe::Object*, void*), void* pArg3);
                Object(EGG::Heap* pHeap, int width, int height, RFLiCharData* charData, void (*someFunc)(ipl::nigaoe::Object*, void*), void* pArg3);
                ~Object();
            
            private:
                void init(EGG::Heap* pHeap, int width, int height);
                void make_icon();
                
                u8* mpIconTex;                                  // 0x00
                size_t mIconSize;                               // 0x04
                
                RFLIconSetting mIconSettings;                   // 0x08
                
                GXTexObj mFaceTexObj;                           // 0x18
                
                RFLiCharData* mpCharData;                       // 0x38
                u32 mFaceId;                                    // 0x3c
                
                void (*mSomeFunc)(ipl::nigaoe::Object*, void*); // 0x40
                
                void* field_0x44;
                u32 unused_0x48;
                u32 unused_0x4c;
                u8 field_0x50;
        };
    }
}

#endif // IPL_NIGAOE_H


