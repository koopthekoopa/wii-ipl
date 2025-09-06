#ifndef TEXTINPUT_HKB_MANAGER_H
#define TEXTINPUT_HKB_MANAGER_H

#include <revolution/types.h>

#include <revolution/mem/allocator.h>

namespace textinput {
    namespace input {
        class HKBManager {
            public:
                static HKBManager&  getInstance() { return sInstance; }

                void                Initialize();
                void                Update();

            private:
                u8  unk_0x00[0xFC];

                static HKBManager sInstance;
        };
    }
}

#endif // TEXTINPUT_HKB_MANAGER_H
