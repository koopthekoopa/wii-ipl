#ifndef IPL_SCENE_ADDRESS_H
#define IPL_SCENE_ADDRESS_H

#include "iplSceneHeader.h"

#include <revolution/nwc24.h>

namespace ipl {
    namespace scene {
        class FriendListCache {
            public:
                const NWC24FriendInfo&  getInfo(int index) const    { return mInfos[index]; }

            private:
                NWC24FriendInfo mInfos[100];
        };

        FADER_SCENE_CLASS(Address) {
            public:
                Address(EGG::Heap* heap, int);

                enum {
                    SCENE_ADD_WII = 1,
                    SCENE_ADD_EMAIL,
                };

                int                 getChosenFriendIndex()  { return unk_0xC0; }
                FriendListCache*    getFriendCache()        { return unk_0x274; }

            private:
                u8                  unk_0x58[0x68];
                int                 unk_0xC0;
                u8                  unk_0xC4[0x1B0];
                FriendListCache*    unk_0x274;
                u8                  unk_0x278[0x28];
        };
    }
}

#endif // IPL_SCENE_ADDRESS_H
