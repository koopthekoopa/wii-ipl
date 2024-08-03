#ifndef IPL_NIGAOE_H
#define IPL_NIGAOE_H

#include <decomp.h>

#include <revolution.h>

#include <egg/core.h>

#include <RVLFaceLibPrivate.h>

namespace ipl {
    namespace nigaoe {
        class Object {
            public:
                Object(EGG::Heap* pHeap, int width, int height, int faceId, void (*someFunc)(Object*, void*), void* pArg3);
                Object(EGG::Heap* pHeap, int width, int height, RFLiCharData* pCharData, void (*someFunc)(Object*, void*), void* pArg3);
                ~Object();

                /**
                 * @param pArg0 Argument 1.
                 */
                void    SomeFunc(void* pArg0) { return (*mSomeFunc)(this, pArg0); }
            
            private:
                void    init(EGG::Heap* pHeap, int width, int height);
                void    make_icon();
                
                u8*             mpIconTex;                      // 0x00
                size_t          mIconSize;                      // 0x04
                
                RFLIconSetting  mIconSettings;                  // 0x08
                
                GXTexObj        mFaceTexObj;                    // 0x18
                
                RFLiCharData*   mpCharData;                     // 0x38
                u32             mFaceId;                        // 0x3c
                
                void            (*mSomeFunc)(Object*, void*);   // 0x40
                
                void*           unk_0x44;
                undefined4      unused_0x48;
                undefined4      unused_0x4c;
                u8              unk_0x50;
        };
    }
}

#endif // IPL_NIGAOE_H


