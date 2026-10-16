#ifndef IPL_SCENE_MEMORY_CARD_BASE_H
#define IPL_SCENE_MEMORY_CARD_BASE_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        class MemoryBase {
            public:

            struct AnmName {
                const char* animName;
                const char* groupName;
            };

            MemoryBase();
            virtual ~MemoryBase();

            // Must be virtual to match vtable offset 0x30!
            virtual void add_animation(const AnmName* anims, int count);

            private:

            u32 mField_0x04;            // +0x04
            u32 mField_0x08;            // +0x08
            u32 mUnkPad_0x0C;           // +0x0C

            nw4r::ut::List mList_0x10;  // +0x10
            nw4r::ut::List mList_0x1C;  // +0x1C
            nw4r::ut::List mList_0x28;  // +0x28
        };
    }
}

#endif // IPL_SCENE_MEMORY_CARD_BASE_H
