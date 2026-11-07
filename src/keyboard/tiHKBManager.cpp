#include "keyboard/tiHKBManager.h"

#include <revolution/kbd.h>
#include <revolution/kbd/hidtypes.h>

#include <revolution/os/OSInterrupt.h>

namespace textinput {
    namespace input {
        HKBManager HKBManager::sInstance;

        typedef union {
            struct {
                u8 devIdx;
                u32 unk_0x4;
            };
            void* asVoid;
        } SetLedsAsyncData;

        void HKBManager::DoSetLedsAsyncCallback(u8 devIdx) {
            SetLedsAsyncData cmdData;
            cmdData.devIdx = devIdx;
            cmdData.unk_0x4 = 0;

            BOOL level = OSDisableInterrupts();
            mUnsyncedLEDBits &= ~(1 << devIdx);
            OSRestoreInterrupts(level);

            if (KBDSetLedsAsync(devIdx, 0, SetLedCB, cmdData.asVoid) == KBD_EC_SET_LED) {
                BOOL level = OSDisableInterrupts();
                mUnsyncedLEDBits |= (1 << devIdx);
                OSRestoreInterrupts(level);
            }
        }

        void HKBManager::SetLedCB(KBDEc ec, void* data) {
            if (ec != KBD_EC_SET_LED)
                return;

            SetLedsAsyncData setLedsAsyncData;
            setLedsAsyncData.asVoid = data;
            getInstance().DoSetLedsAsyncCallback(setLedsAsyncData.devIdx);
        }

        void HKBManager::KBDListenerOwn::OnAttach(KBDDevEvent* event) {
            if (event->devIdx >= 2) {
                KBDSetLockProcessing(event->devIdx, 0);
                mpManager->DoSetLedsAsyncCallback(event->devIdx);
            } else {
                mpManager->mStateAttachedFlags[event->devIdx] = true;
                KBDSetLockProcessing(event->devIdx, 0);
                mpManager->mKeyStates[event->devIdx].mbLedsUnset = true;
            }
        }
        void HKBManager::KBDListenerOwn::OnDetach(KBDDevEvent* event) {
            if (event->devIdx >= 2)
                return;
            mpManager->DetachState(event->devIdx);
        }
        void HKBManager::DetachState(u8 devIdx) {
            mStateAttachedFlags[devIdx] = false;
            mKeyStates[devIdx].Clear();
        }

        void HKBManager::KBDListenerOwn::OnKeyEvent(KBDKeyEvent* event) {
            if (event->devIdx >= 2)
                return;
            if (event->flags & KBD_KEYSTATE_IS_REPEAT)
                return;

            mpManager->mKeyStates[event->devIdx].NotifyEvent(event->flags & KBD_KEYSTATE_IS_DOWN, event->keyCode);
        }

        void HKBManager::AttachCB(KBDDevEvent* event) {
            KBDListenerOwn* currListener = &getInstance().mListener;
            while (currListener != NULL) {
                currListener->OnAttach(event);
                currListener = currListener->mpNextListener;
                if (currListener == &getInstance().mListener)
                    break;
            }
        }
        void HKBManager::DetachCB(KBDDevEvent* event) {
            KBDListenerOwn* currListener = &getInstance().mListener;
            while (currListener != NULL) {
                currListener->OnDetach(event);
                currListener = currListener->mpNextListener;
                if (currListener == &getInstance().mListener)
                    break;
            }
        }
        void HKBManager::KeyEventCB(KBDKeyEvent* event) {
            KBDListenerOwn* currListener = &getInstance().mListener;
            while (currListener != NULL) {
                currListener->OnKeyEvent(event);
                currListener = currListener->mpNextListener;
                if (currListener == &getInstance().mListener)
                    break;
            }
        }

        void HKBManager::KeyState_::Clear() {
            mActiveMask = 0;
            mTriggeredMask = 0;
            mReleasedMask = 0;
            mRepeatedMask = 0;
            mPressedMaskCurr = 0;
            mPressedMaskNext = 0;
            mModifierState &= KBD_HID_MODS_WITHLEDS;
            mModifierStateForceMask = 0;
            mForceModifierState = 0;
            mbLedsUnset = false;
        }

        HKBManager::HKBManager() : mbInitialized(false), mModifierState(0), mUnsyncedLEDBits(0), mpCharsWhitelist(NULL), mCharsWhitelistLen(0) {
            mListener.mpManager = this;
            for (u8 i = 0; i < 2; i++) {
                mStateAttachedFlags[i] = false;
                mKeyStates[i].Clear();
                mKeyStates[i].mDevIdx = i;
                mKeyStates[i].mCountry = KBD_CC_JAPAN;
                mKeyStates[i].mModifierState = 0;
            }
        }
        HKBManager::KBDListenerOwn::~KBDListenerOwn() {
        }

        void HKBManager::Initialize() {
            if (mbInitialized)
                return;

            mbInitialized = true;

#if defined(VERSION_43U)
            KBDInitRegionUS();
#elif defined(VERSION_43K)
            KBDInitRegionUS();
#elif defined(VERSION_43E)
            KBDInitRegionEU();
#elif defined(VERSION_43J)
            KBDInitRegionJP();
#endif

            KBDInit();
            if (!mListener.mbDontListen) {
                KBDSetAttachCallback(AttachCB);
                KBDSetDetachCallback(DetachCB);
                KBDSetKeyCallback(KeyEventCB);
            }
            for (u8 i = 0; i < 2; i++) {
                KBDSetCountry(i, mKeyStates[i].mCountry);
            }
        }

        void HKBManager::ClearState() {
            for (u8 i = 0; i < 2; i++) {
                mKeyStates[i].Clear();
            }
        }

        void HKBManager::KeyState_::SetModifierStateLEDs() {
            KBDSetModState(mDevIdx, mModifierState);

            u8 ledFlags = 0;
            if (mModifierState & KBD_HID_MOD_NUM_LOCK) {
                ledFlags |= 1;
            }
            if (mModifierState & KBD_HID_MOD_CAPSLOCK) {
                ledFlags |= 2;
            }
            if (mModifierState & KBD_HID_MOD_SCROLL_LOCK) {
                ledFlags |= 4;
            }
            if (KBDSetLeds(mDevIdx, ledFlags) == KBD_EC_SET_LED) {
                mbLedsUnset = true;
            }
        }

        u32 HKBManager::KeyState_::GetModifierState() const {
            u32 state = mModifierState;
            u32 modStateForceMask0 = mModifierStateForceMask;

            state &= ~modStateForceMask0;
            state |= mForceModifierState & modStateForceMask0;
            return state;
        }

        u32 HKBManager::GetModifierState() const {
            // // fakematched i think, probably an inline on KeyState_
            // u32 modStateForceMask0, modState0;
            // modState0 = mKeyStates[0].mModifierState;
            // modStateForceMask0 = mKeyStates[0].mModifierStateForceMask;
            // modState0 &= ~modStateForceMask0;
            // modState0 |= mKeyStates[0].mForceModifierState & modStateForceMask0;

            // u32 modStateForceMask1, modState1;
            // modState1 = mKeyStates[1].mModifierState;
            // modStateForceMask1 = mKeyStates[1].mModifierStateForceMask;
            // modState1 &= ~modStateForceMask1;
            // modState1 |= mKeyStates[1].mForceModifierState & modStateForceMask1;
            // return modState0 | modState1;

            u32 modState0 = mKeyStates[0].GetModifierState();
            u32 modState1 = mKeyStates[1].GetModifierState();

            return modState0 | modState1;
        }

        void HKBManager::SetCountry(u8 country) {
            for (u8 i = 0; i < 2; i++) {
                mKeyStates[i].mCountry = country;
                KBDSetCountry(i, country);
                mKeyStates[i].SetModifierStateLEDs();
            }
        }

        void HKBManager::SetModifierState(u32 state, u32 updateMask) {
            mModifierState = mModifierState & ~updateMask | state & updateMask;
            for (u8 i = 0; i < 2; i++) {
                bool modifierStatesChanged = (mKeyStates[i].mModifierState & KBD_HID_MODS_WITHLEDS) != (mModifierState & KBD_HID_MODS_WITHLEDS);
                mKeyStates[i].mModifierState &= ~KBD_HID_MODS_WITHLEDS;
                mKeyStates[i].mModifierState |= mModifierState;
                if (modifierStatesChanged && mStateAttachedFlags[i]) {
                    mKeyStates[i].SetModifierStateLEDs();
                }
            }
        }
        void HKBManager::SetForceModifierState(u32 state, u32 forceMask) {
            for (u8 i = 0; i < 2; i++) {
                mKeyStates[i].mForceModifierState = state;
                mKeyStates[i].mModifierStateForceMask = forceMask;
            }
        }

        void HKBManager::Update() {
            if (!mbInitialized)
                return;

            for (u8 bitI = 2; bitI < 4; bitI++) {
                if ((mUnsyncedLEDBits & (1 << bitI)) != 0) {
                    DoSetLedsAsyncCallback(bitI);
                }
            }

            for (u8 i = 0; i < 2; i++) {
                mKeyStates[i].Update();
            }
        }

        HKBManager::KeySet HKBManager::GetTriggeredKeySet() const {
            return KeySet(this, HKBManager::KeySet::KEY_PHASE_TRIGGERED).GetNext();
        }
        HKBManager::KeySet HKBManager::GetReleasedKeySet() const {
            return KeySet(this, HKBManager::KeySet::KEY_PHASE_RELEASED).GetNext();
        }
        HKBManager::KeySet HKBManager::GetRepeatedKeySet() const {
            return KeySet(this, HKBManager::KeySet::KEY_PHASE_REPEATED).GetNext();
        }

        void HKBManager::KeyState_::NotifyEvent(u8 keyState, u8 key) {
            int i;
            int freeIdx = -1;
            if (keyState == KBD_KEYSTATE_IS_DOWN) {
                for (i = 0; i < 8; i++) {
                    if ((mPressedMaskNext & (1 << i)) != 0) {
                        if (key == mKeysNext[i]) {
                            freeIdx = i;
                            break;
                        }
                    } else {
                        freeIdx = i;
                        break;
                    }
                }

                if (freeIdx >= 0) {
                    mKeysNext[freeIdx] = key;
                    mPressedMaskNext |= 1 << freeIdx;
                }
            } else {
                for (i = 0; i < 8; i++) {
                    if ((mPressedMaskNext & (1 << i)) != 0 && key == mKeysNext[i]) {
                        freeIdx = i;
                        break;
                    }
                }
                if (freeIdx >= 0) {
                    mPressedMaskNext &= ~(1 << freeIdx);
                }
            }
        }
        void HKBManager::KeyState_::Update() {
            BOOL level = OSDisableInterrupts();
            mPressedMaskPrev = mPressedMaskCurr;
            mPressedMaskCurr = mPressedMaskNext;
            for (int i = 0; i < 8; i++) {
                mKeysPrev[i] = mKeysCurr[i];
                mKeysCurr[i] = mKeysNext[i];
            }
            OSRestoreInterrupts(level);
            UpdateModState_();

            mActiveMask = mPressedMaskCurr;

            mTriggeredMask = 0;
            for (int i = 0; i < 8; i++) {
                if ((mPressedMaskCurr & (1 << i)) == 0)
                    continue;

                if ((mPressedMaskPrev & (1 << i)) == 0 || mKeysPrev[i] != mKeysCurr[i]) {
                    mTriggeredMask |= (1 << i);
                }
            }

            mReleasedMask = 0;
            for (int i = 0; i < 8; i++) {
                if ((mPressedMaskPrev & (1 << i)) == 0)
                    continue;

                if ((mPressedMaskCurr & (1 << i)) == 0 || mKeysPrev[i] != mKeysCurr[i]) {
                    mReleasedMask |= (1 << i);
                }
            }

            mRepeatedMask = 0;
            for (int i = 0; i < 8; i++) {
                if ((mPressedMaskCurr & (1 << i)) != 0) {
                    if ((mTriggeredMask & (1 << i)) != 0) {
                        mRepeatDelays[i] = 30;
                        mRepeatedMask |= (1 << i);
                    }
                    if (--mRepeatDelays[i] == 0) {
                        mRepeatDelays[i] = 8;
                        mRepeatedMask |= (1 << i);
                    }
                }
            }
        }

        void HKBManager::KeyState_::UpdateModState_() {
            u32 oldModifierState = mModifierState;
            mModifierState &= ~(KBD_HID_MOD_SHIFT | KBD_HID_MOD_CTRL | KBD_HID_MOD_GUI | KBD_HID_MOD_ALT | KBD_HID_MOD_ALTGR);
            for (u8 i = 0; i < 8; i++) {
                if ((mPressedMaskCurr & (1 << i)) == 0)
                    continue;

                u8 key = mKeysCurr[i];
                if (key == KBD_KEY_KEYBOARD_R_SHIFT || key == KBD_KEY_KEYBOARD_L_SHIFT) {
                    mModifierState |= KBD_HID_MOD_SHIFT;
                } else if (key == KBD_KEY_KEYBOARD_R_CONTROL || key == KBD_KEY_KEYBOARD_L_CONTROL) {
                    mModifierState |= KBD_HID_MOD_CTRL;
                } else if (key == KBD_KEY_KEYBOARD_R_GUI || key == KBD_KEY_KEYBOARD_L_GUI) {
                    mModifierState |= KBD_HID_MOD_GUI;
                } else if (key == KBD_KEY_KEYBOARD_L_ALT) {
                    mModifierState |= KBD_HID_MOD_ALT;
                } else if (key == KBD_KEY_KEYBOARD_R_ALT) {
                    if (mCountry == KBD_CC_JAPAN || mCountry == KBD_CC_UNITED_STATES) {
                        mModifierState |= KBD_HID_MOD_ALT;
                    } else {
                        mModifierState |= KBD_HID_MOD_ALTGR;
                    }
                }
            }
            if ((oldModifierState & KBD_HID_MODS_WITHLEDS) != (mModifierState & KBD_HID_MODS_WITHLEDS) || mbLedsUnset) {
                mbLedsUnset = false;
                SetModifierStateLEDs();
            }
        }

        u8 HKBManager::KeySet::GetKey() const {
            if (!IsValid()) {
                return 0;
            }

            switch (mKeyPhase) {
                case KEY_PHASE_ACTIVE:
                    return mpManager->mKeyStates[mDevIdx].mKeysCurr[mBufIdx];
                case KEY_PHASE_TRIGGERED:
                    return mpManager->mKeyStates[mDevIdx].mKeysCurr[mBufIdx];
                case KEY_PHASE_RELEASED:
                    return mpManager->mKeyStates[mDevIdx].mKeysPrev[mBufIdx];
                case KEY_PHASE_REPEATED:
                    return mpManager->mKeyStates[mDevIdx].mKeysCurr[mBufIdx];
                default:
                    return 0;
            }
        }

        wchar_t HKBManager::KeySet::GetWChar() const {
            wchar_t vcode = GetVCode();
            if (0xF130 <= vcode && vcode <= 0xF139) {
                vcode -= 0xF100;
            } else if (vcode == 0xF10D) {
                vcode = 0xF1CD;
            } else if (0xF100 <= vcode && vcode <= 0xF13F) {
                vcode -= 0xF100;
            } else if (0xF140 <= vcode && vcode <= 0xF17F) {
                vcode += 0x40;
            }

            if ((vcode & 0xF000) == 0xF000) {
                vcode = 0;
            } else if (vcode == 0xEEEE) {
                vcode = 0;
            } else if (vcode < 0x20) {
                vcode = 0;
            }

            return mpManager->FilterAllowList_(vcode);
        }

        wchar_t HKBManager::FilterAllowList_(wchar_t key) const {
            if (mpCharsWhitelist == NULL)
                return key;
            if (mCharsWhitelistLen == 0)
                return key;

            for (int i = 0; i < mCharsWhitelistLen; i++) {
                if (mpCharsWhitelist[i] == key) {
                    return key;
                }
            }
            return 0;
        }

        wchar_t HKBManager::KeySet::GetVCode() const {
            if (!IsValid()) {
                return 0;
            }

            if (mResolvedVCode != 0)
                return mResolvedVCode;

            u32 modState0 = mpManager->mKeyStates[0].GetModifierState();
            u32 modState1 = mpManager->mKeyStates[1].GetModifierState();
            u32 modifierState = modState0 | modState1;

            // If any GUI/ALT/CTRL keys are held, unless they're acting as the
            // ALTGR equivalent CTRL+ALT, it's meant to be an action and not
            // type a character.
            if ((modifierState & (KBD_HID_MOD_GUI | KBD_HID_MOD_ALT | KBD_HID_MOD_CTRL)) != 0) {
                if ((modifierState & (KBD_HID_MOD_ALT | KBD_HID_MOD_CTRL)) != (KBD_HID_MOD_ALT | KBD_HID_MOD_CTRL)) {
                    return 0;
                }
            }

            switch (mKeyPhase) {
                case KEY_PHASE_ACTIVE:
                case KEY_PHASE_TRIGGERED:
                case KEY_PHASE_REPEATED:
                    if (((1 << mBufIdx) & mpManager->mKeyStates[mDevIdx].mPressedMaskCurr) != 0) {
                        mResolvedVCode = KBDTranslateHidCode(mpManager->mKeyStates[mDevIdx].mKeysCurr[mBufIdx], modifierState,
                                                             mpManager->mKeyStates[mDevIdx].mCountry);
                    }
                    break;
                case KEY_PHASE_RELEASED:
                    if (((1 << mBufIdx) & mpManager->mKeyStates[mDevIdx].mPressedMaskPrev) != 0) {
                        mResolvedVCode = KBDTranslateHidCode(mpManager->mKeyStates[mDevIdx].mKeysPrev[mBufIdx], modifierState,
                                                             mpManager->mKeyStates[mDevIdx].mCountry);
                    }
                    break;
            }
            return mResolvedVCode;
        }

        HKBManager::KeySet HKBManager::KeySet::GetNext() const {
            KeySet out(mpManager, mKeyPhase);

            if (mpManager == NULL)
                return out;

            out.mDevIdx = mDevIdx;

            while (out.mDevIdx < 2) {
                u32 edgeMask = 0;
                switch (mKeyPhase) {
                    case KEY_PHASE_ACTIVE:
                        edgeMask = mpManager->mKeyStates[out.mDevIdx].mActiveMask;
                        break;
                    case KEY_PHASE_TRIGGERED:
                        edgeMask = mpManager->mKeyStates[out.mDevIdx].mTriggeredMask;
                        break;
                    case KEY_PHASE_RELEASED:
                        edgeMask = mpManager->mKeyStates[out.mDevIdx].mReleasedMask;
                        break;
                    case KEY_PHASE_REPEATED:
                        edgeMask = mpManager->mKeyStates[out.mDevIdx].mRepeatedMask;
                        break;
                }
                out.mBufIdx = mBufIdx + 1;
                while (out.mBufIdx < 8) {
                    if ((edgeMask & (1 << out.mBufIdx)) != 0) {
                        return out;
                    }
                    out.mBufIdx++;
                }
                out.mBufIdx = 0xff;
                out.mDevIdx++;
            }
            return out;
        }

        bool HKBManager::KeySet::IsValid() const {
            return IsValid_();
        }

        // Not sure if this is right.
        inline bool HKBManager::KeySet::IsValid_() const {
            if (mpManager == NULL) {
                return false;
            }
            if (!(0 <= mBufIdx && mBufIdx < 8)) {
                return false;
            }
            if (mDevIdx >= 2) {
                return false;
            }
            switch (mKeyPhase) {
                case KEY_PHASE_ACTIVE:
                    return (1 << mBufIdx & mpManager->mKeyStates[mDevIdx].mActiveMask) != 0;
                case KEY_PHASE_TRIGGERED:
                    return (1 << mBufIdx & mpManager->mKeyStates[mDevIdx].mTriggeredMask) != 0;
                case KEY_PHASE_RELEASED:
                    return (1 << mBufIdx & mpManager->mKeyStates[mDevIdx].mReleasedMask) != 0;
                case KEY_PHASE_REPEATED:
                    return (1 << mBufIdx & mpManager->mKeyStates[mDevIdx].mRepeatedMask) != 0;
                default:
                    return false;
            }
        }

        // HKBManager::~HKBManager() {
        // }
    }  // namespace input
}  // namespace textinput
