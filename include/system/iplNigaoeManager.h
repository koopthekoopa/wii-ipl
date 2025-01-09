#ifndef IPL_NIGAOE_MANAGER_H
#define IPL_NIGAOE_MANAGER_H

#include "system/iplNigaoe.h"
#include "system/iplNand.h"

#include <revolution/nwc24.h>

#include <nw4r/ut.h>

namespace ipl {
    namespace nigaoe {
        class Manager {
            public:
                Manager(EGG::Heap* heap);

                Object*     create(EGG::Heap* heap, int width, int height, int faceId, Object::MakeIconCallback callback, void* callbackWork);
                Object*     create(EGG::Heap* heap, int width, int height, RFLiCharData* faceData, Object::MakeIconCallback callback, void* callbackWork);

                void        makeIcon();

                void        detach(Object* obj);

                BOOL        isAvalable(u16 faceId);
                BOOL        isValid(const RFLiCharData* faceData) const;

                RFLErrcode  addHiddenDB(const NWC24MsgObj* faceDB);
                void        commitHiddenDB();

            private:
                nand::File*     mResFile;   // 0x00
                RFLErrcode      mErrcode;   // 0x04
                nw4r::ut::List  mObjects;   // 0x08
        };
    }
}

#endif // IPL_NIGAOE_MANAGER_H
