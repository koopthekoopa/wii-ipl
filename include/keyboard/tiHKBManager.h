#ifndef TEXTINPUT_HKB_MANAGER_H
#define TEXTINPUT_HKB_MANAGER_H

#include <revolution/kbd.h>
#include <revolution/mem/allocator.h>
#include <revolution/types.h>

#include "keyboard/tiCpData.h"

namespace textinput {
    namespace input {
        class HKBManager {
        public:
            static HKBManager& getInstance() { return sInstance; }

            HKBManager();

            void Initialize();
            void ClearState();
            void Update();

            u32 GetModifierState() const;
            void SetModifierState(u32 state, u32 updateMask);
            void SetForceModifierState(u32 state, u32 forceMask);

            void SetCountry(u8);

            class KeySet {
            public:
                enum {
                    KEY_PHASE_ACTIVE = 0,
                    KEY_PHASE_TRIGGERED = 1,
                    KEY_PHASE_RELEASED = 2,
                    KEY_PHASE_REPEATED = 3,
                };

                bool IsValid() const;

                u8 GetKey() const;
                wchar_t GetVCode() const;
                wchar_t GetWChar() const;
                KeySet GetNext() const;

                KeySet operator++() {
                    *this = GetNext();
                    return *this;
                }

            private:
                KeySet(const HKBManager* manager, u8 keyPhase)
                    : mKeyPhase(keyPhase), mBufIdx(-1), mDevIdx(0), mResolvedVCode(0), mpManager(manager) {}
                friend class HKBManager;

                bool IsValid_() const;

            private:
                const HKBManager* mpManager;     // 0x0
                u8 mKeyPhase;                    // 0x4
                s8 mBufIdx;                      // 0x5
                u8 mDevIdx;                      // 0x6
                mutable wchar_t mResolvedVCode;  // 0x8
            };

            KeySet GetTriggeredKeySet() const;
            KeySet GetReleasedKeySet() const;
            KeySet GetRepeatedKeySet() const;

        private:
            struct KeyState_ {
            public:
                u8 mDevIdx;  // 0x00

                u32 mActiveMask;     // 0x04
                u32 mTriggeredMask;  // 0x08
                u32 mReleasedMask;   // 0x0C
                u32 mRepeatedMask;   // 0x10

                u32 mPressedMaskPrev;  // 0x14
                u32 mPressedMaskCurr;  // 0x18
                u32 mPressedMaskNext;  // 0x1C

                u32 mModifierState;           // 0x20
                u32 mForceModifierState;      // 0x24
                u32 mModifierStateForceMask;  // 0x28

                int mCountry;      // 0x2C
                bool mbLedsUnset;  // 0x30

                u8 mKeysPrev[8];       // 0x31
                u8 mKeysCurr[8];       // 0x39
                u8 mKeysNext[8];       // 0x41
                u32 mRepeatDelays[8];  // 0x4C

                void NotifyEvent(u8 flag, u8 key);
                void Update();

                void Clear();
                void SetModifierStateLEDs();

                u32 GetModifierState() const;

            private:
                void UpdateModState_();
            };

            struct KBDListenerOwn {
            public:
                KBDListenerOwn() : mpNextListener(NULL), mbDontListen(FALSE), mpManager(NULL) {}

                virtual ~KBDListenerOwn();                    // 0x08
                virtual void OnAttach(KBDDevEvent* event);    // 0x0C
                virtual void OnDetach(KBDDevEvent* event);    // 0x10
                virtual void OnKeyEvent(KBDKeyEvent* event);  // 0x14

                BOOL mbDontListen;               // 0x4
                KBDListenerOwn* mpNextListener;  // 0x8
                HKBManager* mpManager;           // 0xC
            };

            wchar_t FilterAllowList_(wchar_t key) const;
            void DoSetLedsAsyncCallback(u8 bitI);
            void DetachState(u8 devIdx);

            bool mbInitialized;            // 0x00
            bool mStateAttachedFlags[2];   // 0x01
            u32 mModifierState;            // 0x04
            volatile u32 mEnabledLEDBits;  // 0x08
            wchar_t* mpCharsWhitelist;     // 0x0C
            u32 mCharsWhitelistLen;        // 0x10
            KeyState_ mKeyStates[2];       // 0x14
            KBDListenerOwn mListener;      // 0xEC

            static HKBManager sInstance;
            static void SetLedCB(KBDEc ec, void* data);
            static void AttachCB(KBDDevEvent* event);
            static void DetachCB(KBDDevEvent* event);
            static void KeyEventCB(KBDKeyEvent* event);
        };
    }  // namespace input
}  // namespace textinput

#endif  // TEXTINPUT_HKB_MANAGER_H
