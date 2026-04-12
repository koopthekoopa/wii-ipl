#ifndef TEXTINPUT_HKB_MANAGER_H
#define TEXTINPUT_HKB_MANAGER_H

#include <revolution/types.h>

#include <revolution/mem/allocator.h>

#include "keyboard/tiCpData.h"

namespace textinput {
    namespace input {
        class HKBManager {
        public:
            static HKBManager& getInstance() { return sInstance; }

            void Initialize();
            void Update();

            u32 GetModifierState() const;
            void SetModifierState(u32, u32);

            class KeySet {
            private:
                keyboard::cellphonetype::PaneNameToCharCode* pPaneNameToCharCode;  // 0x00
                wchar_t szKeySetName[17];                                          // 0x04
                u16 uNum;                                                          // 0x26
                u16 uType;                                                         // 0x28
            };

        private:
            u8 unk_0x00[0xFC];

            static HKBManager sInstance;
        };
    }  // namespace input
}  // namespace textinput

#endif  // TEXTINPUT_HKB_MANAGER_H
