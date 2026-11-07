#include <revolution/kbd.h>

#include <private/kbd/init_maps.h>
#include <revolution/kbd/hidtypes.h>

#include <revolution/os.h>
#include <revolution/usbkbd.h>
#include <revolution/verdefs.h>
#include <revolution/vi.h>

SDKDefineVersion(KBD, "Apr 20 2010", "11:21:43");

#include "private/kbd/maps/regionINTL.h"

typedef enum _KBDDevErrFlags {
    KBD_DEVERR_CLEAR = 0,
    KBD_DEVERR_DETACHED = 1 << 0,
    KBD_DEVERR_ROLLOVER = 1 << 1,
    KBD_DEVERR_HIDERROR = 1 << 2,
} KBDDevErrFlags;

typedef struct _KBDState {
    u8 mDevIdx;                      // 0x000
    u32 mCountry;                    // 0x004
    int mDeviceErrFlags;             // 0x008
    void* mpUsbKbdHandle;            // 0x00C
    USBKBDInputReport mInputReport;  // 0x010
    KBDKeyEvent mKeyEvents[32];      // 0x018
    u8 mNextKeyEventIdx;             // 0x218
    u8 unk_0x219;                    // 0x219
    BOOL mbLockProcessing;           // 0x21C
    u32 mModifierState;              // 0x220
    u8 mNumCtrlsPressed;             // 0x224
    u8 mNumShiftsPressed;            // 0x225
    u8 mNumAltsPressed;              // 0x226
    u8 mNumGuisPressed;              // 0x227
    u8 mNumAltgrsPressed;            // 0x228
    u8 mNumUnk4sPressed;             // 0x229
    u16 mPreRepeatDelayMs;           // 0x22A
    u16 mRepeatIntervalMs;           // 0x22C
    u8 mRepeatingKey;                // 0x22E
    OSAlarm mRepeatAlarm;            // 0x230
    BOOL mbStickyKeys;               // 0x260
} KBDState;

typedef struct _KBDKeyReplacement {
    u8 findCode;
    u8 replaceCode;
} KBDKeyReplacement;
typedef struct _KBDKeyMap {
    u8 mKeycodeStride;                   // 0x00
    u8 mSupportedModifierFlags;          // 0x01
    wchar_t* mpKeyMap;                   // 0x04
    wchar_t* mpModifierMap;              // 0x08
    u8 mMapOffsLang2;                    // 0x0C
    u8 mMapOffsLang3;                    // 0x0D
    u8 mMapOffsAltgr;                    // 0x0E
    u8 mKeyCount;                        // 0x0F
    KBDKeyReplacement mReplacements[4];  // 0x10
    u8 mReplacementCount;                // 0x18
} KBDKeyMap;

typedef struct _KBDLc {
    KBDSetLedsCB mpCallback;  // 0x0
    void* mCmdData;           // 0x4
} KBDLc;

KBDLc kbdLCBuf[12];
KBDState kbdData[4];
USBKBDCmdLEDAsync kbdCmdBuf[12] ALIGN32;
KBDKeyMap kbdKeyMaps[KBD_CC_MAX];

wchar_t noRepeatKeys[7] = {
    KBD_RESERVED_CYCLE_LANGS, KBD_RESERVED_CAPSLOCK, KBD_RESERVED_NUMLOCK,     KBD_RESERVED_SCROLLLOCK,
    KBD_RESERVED_PRINTSCREEN, KBD_RESERVED_PAUSE,    KBD_RESERVED_APPLICATION,
};

BOOL kbdInitialized = FALSE;
KBDAttachCB kbdDevAttachCallback = NULL;
KBDDetachCB kbdDevDetachCallback = NULL;
KBDKeyCB kbdKeyCallback = NULL;

KBDKeyMap* kbdGetKeyMap(u32 country) {
    return &kbdKeyMaps[country];
}
USBKBDCmdLEDAsync* kbdGetCmd(u32 idx) {
    return &kbdCmdBuf[idx];
}
KBDState* kbdGetState(u32 idx) {
    return &kbdData[idx];
}

void kbdProcKey(u8 key, u8 state, u8 devIdx);

void kbdAttachHandler(void* usbKbdHandle) {
    KBDDevEvent event;
    u8 i;

    for (i = 0; i < ARRAY_LENGTH(kbdData); i++) {
        if (kbdData[i].mpUsbKbdHandle == NULL)
            break;
    }
    if (i == ARRAY_LENGTH(kbdData))
        return;

    kbdData[i].mpUsbKbdHandle = usbKbdHandle;
    kbdData[i].mDeviceErrFlags &= ~KBD_DEVERR_DETACHED;
    KBDResetChannel(i);
    VIResetDimmingCount();
    if (kbdDevAttachCallback != NULL) {
        event.devIdx = i;
        kbdDevAttachCallback(&event);
    }
}

void kbdDetachHandler(void* usbKbdHandle) {
    KBDDevEvent event;
    u8 i;

    for (i = 0; i < ARRAY_LENGTH(kbdData); i++) {
        if (usbKbdHandle == kbdData[i].mpUsbKbdHandle)
            break;
    }
    if (i == ARRAY_LENGTH(kbdData))
        return;

    kbdData[i].mpUsbKbdHandle = NULL;
    kbdData[i].mDeviceErrFlags |= KBD_DEVERR_DETACHED;
    if (kbdDevDetachCallback != NULL) {
        event.devIdx = i;
        kbdDevDetachCallback(&event);
    }
    KBDResetChannel(i);
}
void kbdEventHandler(void* usbKbdHandle, USBKBDInputReport* report) {
    u8 i;
    s8 j, k;
    KBDState* state;

    for (i = 0; i < ARRAY_LENGTH(kbdData); i++) {
        if (usbKbdHandle == kbdData[i].mpUsbKbdHandle)
            break;
    }
    if (i == ARRAY_LENGTH(kbdData))
        return;

    state = &kbdData[i];
    if (report->keys[0] == KBD_KEY_KEYBOARD_ERRORROLLOVER || report->keys[0] == KBD_KEY_KEYBOARD_POSTFAIL ||
        report->keys[0] == KBD_KEY_KEYBOARD_ERRORUNDEFINED) {
        OSCancelAlarm(&state->mRepeatAlarm);
        if (report->keys[0] == KBD_KEY_KEYBOARD_ERRORROLLOVER) {
            state->mDeviceErrFlags |= KBD_DEVERR_ROLLOVER;
        } else {
            state->mDeviceErrFlags |= KBD_DEVERR_HIDERROR;
        }
    } else {
        u32 bit;
        state->mDeviceErrFlags = 0;
        VIResetDimmingCount();
        for (bit = 1, j = 0; j < 8; j++, bit <<= 1) {
            if ((state->mInputReport.modifiers & bit) != 0) {
                if ((report->modifiers & bit) == 0) {
                    kbdProcKey(KBD_KEY_MODIFIER_BASE + j, KBD_KEYSTATE_RELEASE, i);
                }
            } else {
                if ((report->modifiers & bit) != 0) {
                    kbdProcKey(KBD_KEY_MODIFIER_BASE + j, KBD_KEYSTATE_TRIGGER, i);
                }
            }
        }

        for (j = 0; j < 6; j++) {
            if (state->mInputReport.keys[j] == 0)
                continue;

            for (k = 0; k < 6; k++) {
                if (state->mInputReport.keys[j] == report->keys[k]) {
                    break;
                }
            }
            if (k == 6) {
                kbdProcKey(state->mInputReport.keys[j], KBD_KEYSTATE_RELEASE, i);
                state->mInputReport.keys[j] = 0;
            }
        }

        for (j = 0; j < 6; j++) {
            if (report->keys[j] == 0)
                continue;

            for (k = 0; k < 6; k++) {
                if (report->keys[j] == state->mInputReport.keys[k]) {
                    break;
                }
            }
            if (k == 6) {
                kbdProcKey(report->keys[j], KBD_KEYSTATE_TRIGGER, i);
            }
        }

        state->mInputReport.modifiers = report->modifiers;
        state->mInputReport.keys[0] = report->keys[0];
        state->mInputReport.keys[1] = report->keys[1];
        state->mInputReport.keys[2] = report->keys[2];
        state->mInputReport.keys[3] = report->keys[3];
        state->mInputReport.keys[4] = report->keys[4];
        state->mInputReport.keys[5] = report->keys[5];
    }
}

void kbdRepeatHandler(OSAlarm* alarm, OSContext* _) {
    KBDState* state = OSGetAlarmUserData(alarm);
    kbdProcKey(state->mRepeatingKey, KBD_KEYSTATE_REPEAT, state->mDevIdx);
}

void kbdProcMod(wchar_t chr, u8 keyState, u8 devIdx);
void kbdSendKey(KBDKeyEvent* event);

void kbdProcKey(u8 key, u8 keyState, u8 devIdx) {
    wchar_t chr;
    KBDKeyMap* pKVar3;
    int keycodeReplacementI;
    u32 noRepeatI;
    u64 delay;
    KBDState* state = &kbdData[devIdx];

    KBDKeyEvent keyEvent;
    keyEvent.devIdx = devIdx;
    keyEvent.flags = keyState;
    KBDGetModState(devIdx, &keyEvent.modifierState);
    keycodeReplacementI = 0;
    pKVar3 = kbdKeyMaps + state->mCountry;
    for (keycodeReplacementI = 0; keycodeReplacementI < pKVar3->mReplacementCount; keycodeReplacementI++) {
        if (key == pKVar3->mReplacements[keycodeReplacementI].findCode) {
            key = pKVar3->mReplacements[keycodeReplacementI].replaceCode;
            break;
        }
    }

    keyEvent.keyCode = key;
    chr = KBDTranslateHidCode(key, keyEvent.modifierState, state->mCountry);
    keyEvent.chr = chr;
    if ((chr == KBD_RESERVED_CTRL || chr == KBD_RESERVED_SHIFT || chr == KBD_RESERVED_ALT || chr == KBD_RESERVED_GUI || chr == KBD_RESERVED_UNK_4 ||
         chr == KBD_RESERVED_ALTGR || chr == KBD_RESERVED_CYCLE_LANGS || chr == KBD_RESERVED_NUMLOCK || chr == KBD_RESERVED_CAPSLOCK ||
         chr == KBD_RESERVED_SCROLLLOCK)) {
        kbdProcMod(chr, keyState, devIdx);
        if (chr != KBD_RESERVED_CYCLE_LANGS && chr != KBD_RESERVED_NUMLOCK && chr != KBD_RESERVED_CAPSLOCK && chr != KBD_RESERVED_SCROLLLOCK) {
            kbdSendKey(&keyEvent);
            return;
        }
    }

    if (!(keyState & KBD_KEYSTATE_IS_DOWN)) {
        if (key == state->mRepeatingKey) {
            OSCancelAlarm(&state->mRepeatAlarm);
        }
        kbdSendKey(&keyEvent);
    } else {
        OSCancelAlarm(&state->mRepeatAlarm);
        for (noRepeatI = 0; noRepeatI < ARRAY_LENGTH(noRepeatKeys); noRepeatI++) {
            if (chr == noRepeatKeys[noRepeatI])
                break;
        }
        if (noRepeatI == ARRAY_LENGTH(noRepeatKeys)) {
            state->mRepeatingKey = key;
            if (state->mPreRepeatDelayMs != 0) {
                if (keyState & KBD_KEYSTATE_IS_REPEAT) {
                    delay = OSMillisecondsToTicks(state->mRepeatIntervalMs);
                } else {
                    delay = OSMillisecondsToTicks(state->mPreRepeatDelayMs);
                }
                OSSetAlarm(&state->mRepeatAlarm, delay, kbdRepeatHandler);
            }
        }
        keyEvent.chr = chr;
        kbdSendKey(&keyEvent);
    }
}

void kbdProcMod(wchar_t chr, u8 keyState, u8 devIdx) {
    u32 modifierState;
    KBDState* state = &kbdData[devIdx];
    u8 mapSupportedModifiers;
    s8 numPressedDelta = (keyState & KBD_KEYSTATE_IS_DOWN) ? 1 : -1;
    mapSupportedModifiers = kbdKeyMaps[state->mCountry].mSupportedModifierFlags;

    KBDGetModState(devIdx, &modifierState);

    switch (chr) {
        case KBD_RESERVED_SHIFT:
            if (state->mbStickyKeys) {
                if (keyState & KBD_KEYSTATE_IS_DOWN) {
                    modifierState ^= KBD_HID_MOD_SHIFT;
                }
            } else {
                state->mNumShiftsPressed += numPressedDelta;
                modifierState = modifierState & ~KBD_HID_MOD_SHIFT | ((state->mNumShiftsPressed > 0) << KBD_HID_MOD_BITIDX_SHIFT);
            }
            break;
        case KBD_RESERVED_ALTGR:
            if (state->mbStickyKeys) {
                if (keyState & KBD_KEYSTATE_IS_DOWN) {
                    modifierState ^= KBD_HID_MOD_ALTGR;
                }
            } else {
                state->mNumAltgrsPressed += numPressedDelta;
                modifierState = modifierState & ~KBD_HID_MOD_ALTGR | ((state->mNumAltgrsPressed > 0) << KBD_HID_MOD_BITIDX_ALTGR);
            }
            break;
        case KBD_RESERVED_CTRL:
            if (state->mbStickyKeys) {
                if (keyState & KBD_KEYSTATE_IS_DOWN) {
                    modifierState ^= KBD_HID_MOD_CTRL;
                }
            } else {
                state->mNumCtrlsPressed += numPressedDelta;
                modifierState = modifierState & ~KBD_HID_MOD_CTRL | ((state->mNumCtrlsPressed > 0) << KBD_HID_MOD_BITIDX_CTRL);
            }
            break;
        case KBD_RESERVED_CAPSLOCK:
            if ((keyState & KBD_KEYSTATE_IS_DOWN) && state->mbLockProcessing) {
                modifierState ^= KBD_HID_MOD_CAPSLOCK;
            }
            break;
        case KBD_RESERVED_NUMLOCK:
            if ((keyState & KBD_KEYSTATE_IS_DOWN) && state->mbLockProcessing) {
                modifierState ^= KBD_HID_MOD_NUM_LOCK;
            }
            break;
        case KBD_RESERVED_CYCLE_LANGS:
            if ((keyState & KBD_KEYSTATE_IS_DOWN) && state->mbLockProcessing) {
                switch (modifierState & (KBD_HID_MOD_LANG2 | KBD_HID_MOD_LANG3)) {
                    case 0:
                        if ((mapSupportedModifiers & KBD_MAPHAS_LANG2) == KBD_MAPHAS_LANG2) {
                            modifierState |= KBD_HID_MOD_LANG2;
                        }
                        break;
                    case KBD_HID_MOD_LANG2:
                        modifierState &= ~KBD_HID_MOD_LANG2;
                        if ((mapSupportedModifiers & KBD_MAPHAS_LANG3) == KBD_MAPHAS_LANG3) {
                            modifierState |= KBD_HID_MOD_LANG3;
                        }
                        break;
                    case KBD_HID_MOD_LANG3:
                        modifierState &= ~KBD_HID_MOD_LANG3;
                        break;
                    case KBD_HID_MOD_LANG2 | KBD_HID_MOD_LANG3:
                        modifierState &= ~(KBD_HID_MOD_LANG2 | KBD_HID_MOD_LANG3);
                        break;
                }
            }
            break;
        case KBD_RESERVED_ALT:
            if (state->mbStickyKeys) {
                if (keyState & KBD_KEYSTATE_IS_DOWN) {
                    modifierState ^= KBD_HID_MOD_ALT;
                }
            } else {
                state->mNumAltsPressed += numPressedDelta;
                modifierState = modifierState & ~KBD_HID_MOD_ALT | ((state->mNumAltsPressed > 0) << KBD_HID_MOD_BITIDX_ALT);
            }
            break;
        case KBD_RESERVED_GUI:
            if (state->mbStickyKeys) {
                if (keyState & KBD_KEYSTATE_IS_DOWN) {
                    modifierState ^= KBD_HID_MOD_GUI;
                }
            } else {
                state->mNumGuisPressed += numPressedDelta;
                modifierState = modifierState & ~KBD_HID_MOD_GUI | ((state->mNumGuisPressed > 0) << KBD_HID_MOD_BITIDX_GUI);
            }
            break;
        case KBD_RESERVED_UNK_4:
            if (state->mbStickyKeys) {
                if (keyState & KBD_KEYSTATE_IS_DOWN) {
                    modifierState ^= KBD_HID_MOD_UNK_4;
                }
            } else {
                state->mNumUnk4sPressed += numPressedDelta;
                modifierState = modifierState & ~KBD_HID_MOD_UNK_4 | ((state->mNumUnk4sPressed > 0) << KBD_HID_MOD_BITIDX_UNK_4);
            }
            break;
        case KBD_RESERVED_SCROLLLOCK:
            if ((keyState & KBD_KEYSTATE_IS_DOWN) && state->mbLockProcessing) {
                modifierState ^= KBD_HID_MOD_SCROLL_LOCK;
            }
            break;
    }

    KBDSetModState(devIdx, modifierState | KBD_HID_MOD_UNK_12);
}

void kbdSendKey(KBDKeyEvent* event) {
    u8 devIdx;
    u8 nextIdx;

    if (kbdKeyCallback != NULL) {
        kbdKeyCallback(event);
    }

    devIdx = event->devIdx;

    if (kbdData[devIdx].mNextKeyEventIdx == kbdData[devIdx].unk_0x219)
        return;

    nextIdx = (kbdData[devIdx].mNextKeyEventIdx + 1) % 0x20;
    if (nextIdx == kbdData[devIdx].unk_0x219) {
        kbdData[devIdx].mKeyEvents[kbdData[devIdx].mNextKeyEventIdx].devIdx = devIdx;
        kbdData[devIdx].mKeyEvents[kbdData[devIdx].mNextKeyEventIdx].keyCode = 0xFF;
        kbdData[devIdx].mKeyEvents[kbdData[devIdx].mNextKeyEventIdx].flags = 0;
        kbdData[devIdx].mKeyEvents[kbdData[devIdx].mNextKeyEventIdx].modifierState = 0;
        kbdData[devIdx].mKeyEvents[kbdData[devIdx].mNextKeyEventIdx].chr = 0;
    } else {
        kbdData[devIdx].mKeyEvents[kbdData[devIdx].mNextKeyEventIdx] = *event;
        if (kbdData[devIdx].unk_0x219 == 0x20) {
            kbdData[devIdx].unk_0x219 = kbdData[devIdx].mNextKeyEventIdx;
        }
    }
    kbdData[devIdx].mNextKeyEventIdx = nextIdx;
}

void kbd_led_handler(BOOL success, void* cbarg) {
    int cmdBufIdx = (int)cbarg;

    kbdCmdBuf[cmdBufIdx].base.unk_0x00 = NULL;

    if (kbdLCBuf[cmdBufIdx].mpCallback == NULL)
        return;

    (*kbdLCBuf[cmdBufIdx].mpCallback)(success == TRUE ? KBD_EC_OK : KBD_EC_SET_LED, kbdLCBuf[cmdBufIdx].mCmdData);
}

int KBDSetLedsAsync(u8 bitIdx, u32 param_2, KBDSetLedsCB cb, void* cmdData) {
    u8 val2;
    int iVar2;
    BOOL level;

    u32 cmdBufI;

    if (!kbdInitialized) {
        return KBD_EC_NOT_INIT;
    }
    if (bitIdx >= ARRAY_LENGTH(kbdData)) {
        return KBD_EC_OUT_OF_RANGE;
    }

    if (kbdData[bitIdx].mDeviceErrFlags == KBD_DEVERR_DETACHED || kbdData[bitIdx].mDeviceErrFlags == KBD_DEVERR_HIDERROR) {
        return KBD_EC_DEVICE_ERR;
    }

    val2 = param_2;
    level = OSDisableInterrupts();
    for (cmdBufI = 0; cmdBufI < ARRAY_LENGTH(kbdCmdBuf); cmdBufI++) {
        if (!kbdCmdBuf[cmdBufI].base.unk_0x00) {
            kbdCmdBuf[cmdBufI].base.unk_0x00 = kbdData[bitIdx].mpUsbKbdHandle;
            break;
        }
    }
    OSRestoreInterrupts(level);
    if (cmdBufI == ARRAY_LENGTH(kbdCmdBuf)) {
        return KBD_EC_SET_LED;
    }

    kbdLCBuf[cmdBufI].mpCallback = cb;
    kbdLCBuf[cmdBufI].mCmdData = cmdData;

    iVar2 = USBKBDSetLEDAsync(kbdData[bitIdx].mpUsbKbdHandle, val2, kbdCmdBuf + cmdBufI, kbd_led_handler, (void*)cmdBufI);
    return iVar2 != USB_KBD_ERR_OK ? KBD_EC_SET_LED : KBD_EC_OK;
}
int KBDSetLeds(u8 bitIdx, u32 param_2) {
    u8 val2;
    int iVar2;
    BOOL level;

    u32 cmdBufI;

    if (!kbdInitialized) {
        return KBD_EC_NOT_INIT;
    }
    if (bitIdx >= ARRAY_LENGTH(kbdData)) {
        return KBD_EC_OUT_OF_RANGE;
    }

    if (kbdData[bitIdx].mDeviceErrFlags == KBD_DEVERR_DETACHED || kbdData[bitIdx].mDeviceErrFlags == KBD_DEVERR_HIDERROR) {
        return KBD_EC_DEVICE_ERR;
    }

    val2 = param_2;

    level = OSDisableInterrupts();
    for (cmdBufI = 0; cmdBufI < ARRAY_LENGTH(kbdCmdBuf); cmdBufI++) {
        if (!kbdCmdBuf[cmdBufI].base.unk_0x00) {
            kbdCmdBuf[cmdBufI].base.unk_0x00 = kbdData[bitIdx].mpUsbKbdHandle;
            break;
        }
    }
    OSRestoreInterrupts(level);

    if (cmdBufI == ARRAY_LENGTH(kbdCmdBuf)) {
        return KBD_EC_SET_LED;
    }

    iVar2 = USBKBDSetLED(kbdData[bitIdx].mpUsbKbdHandle, val2, &kbdCmdBuf[cmdBufI].base);
    kbdCmdBuf[cmdBufI].base.unk_0x00 = NULL;
    return iVar2 != USB_KBD_ERR_OK ? KBD_EC_SET_LED : KBD_EC_OK;
}

void kbdInitMap(int country, u8 keycodeStride, u8 supportedModifierFlags, wchar_t* keyMap, wchar_t* modifierMap, u8 offsetLang2, u8 offsetLang3,
                u8 offsetAltgr, u8 keyCount, KBDReplaceType keyReplacements) {
    kbdKeyMaps[country].mKeycodeStride = keycodeStride;
    kbdKeyMaps[country].mSupportedModifierFlags = supportedModifierFlags;
    kbdKeyMaps[country].mpKeyMap = keyMap;
    kbdKeyMaps[country].mpModifierMap = modifierMap;
    kbdKeyMaps[country].mMapOffsLang2 = offsetLang2;
    kbdKeyMaps[country].mMapOffsLang3 = offsetLang3;
    kbdKeyMaps[country].mMapOffsAltgr = offsetAltgr;
    kbdKeyMaps[country].mKeyCount = keyCount;

    switch (keyReplacements) {
        case KBD_REPLACETYPE_USA:
            kbdKeyMaps[country].mReplacements[0].findCode = KBD_KEY_KEYBOARD_NON_US_HASH;
            kbdKeyMaps[country].mReplacements[0].replaceCode = KBD_KEY_KEYBOARD_BACKSLASH_BAR;
            kbdKeyMaps[country].mReplacementCount = 1;
            break;

        case KBD_REPLACETYPE_JAPAN:
            kbdKeyMaps[country].mReplacements[0].findCode = KBD_KEY_KEYBOARD_BACKSLASH_BAR;
            kbdKeyMaps[country].mReplacements[0].replaceCode = KBD_KEY_KEYBOARD_NON_US_HASH;
            kbdKeyMaps[country].mReplacements[1].findCode = KBD_KEY_KEYBOARD_LANG5;
            kbdKeyMaps[country].mReplacements[1].replaceCode = KBD_KEY_KEYBOARD_BACKTICK_TILDE;
            kbdKeyMaps[country].mReplacementCount = 2;
            break;

        case KBD_REPLACETYPE_OTHER:
            kbdKeyMaps[country].mReplacements[0].findCode = KBD_KEY_KEYBOARD_BACKSLASH_BAR;
            kbdKeyMaps[country].mReplacements[0].replaceCode = KBD_KEY_KEYBOARD_NON_US_HASH;
            kbdKeyMaps[country].mReplacementCount = 1;
            break;
    }
}

void kbdInitMapIntl() {
    kbdInitMap(KBD_CC_INTERNATIONAL, 5, KBD_MAPHAS_ALTGR | KBD_MAPHAS_ALTGR_SHIFT, kbdKeyMapUS_International, kbdModifierMapUS_International, 0, 0, 3,
               100, 0);
}

KBDEc KBDInit() {
    u8 devI;
    KBDState* currState;

    if (kbdInitialized) {
        return KBD_EC_ALREADY_INIT;
    }

    OSRegisterVersion(__KBDVersion);
    kbdInitialized = TRUE;

    for (devI = 0; devI < 4; devI++) {
        currState = &kbdData[devI];
        currState->mDevIdx = devI;
        currState->mCountry = KBD_CC_UNITED_STATES;
        currState->mDeviceErrFlags = KBD_DEVERR_DETACHED;
        currState->mpUsbKbdHandle = NULL;
        currState->mbLockProcessing = 1;
        currState->mPreRepeatDelayMs = 500;
        currState->mRepeatIntervalMs = 33;
        currState->mbStickyKeys = FALSE;
        OSCreateAlarm(&currState->mRepeatAlarm);
        OSSetAlarmUserData(&currState->mRepeatAlarm, currState);
        KBDResetChannel(devI);
    }
    if (USBKBDInitialize(kbdAttachHandler, kbdDetachHandler) != USB_KBD_ERR_OK) {
        return KBD_EC_FATAL;
    }

    return USBKBDRegisterEventCallback(kbdEventHandler) != USB_KBD_ERR_OK ? KBD_EC_FATAL : KBD_EC_OK;
}

KBDAttachCB KBDSetAttachCallback(KBDAttachCB newCb) {
    KBDAttachCB oldCb = kbdDevAttachCallback;
    kbdDevAttachCallback = newCb;
    return oldCb;
}
KBDDetachCB KBDSetDetachCallback(KBDDetachCB newCb) {
    KBDDetachCB oldCb = kbdDevDetachCallback;
    kbdDevDetachCallback = newCb;
    return oldCb;
}
KBDKeyCB KBDSetKeyCallback(KBDKeyCB newCb) {
    KBDKeyCB oldCb = kbdKeyCallback;
    kbdKeyCallback = newCb;
    return oldCb;
}

KBDEc KBDResetChannel(u8 devIdx) {
    KBDState* state;

    if (!kbdInitialized) {
        return KBD_EC_NOT_INIT;
    }
    if (devIdx >= ARRAY_LENGTH(kbdData)) {
        return KBD_EC_OUT_OF_RANGE;
    }

    state = &kbdData[devIdx];

    state->mInputReport.modifiers = 0;
    state->mInputReport.keys[0] = 0;
    state->mInputReport.keys[1] = 0;
    state->mInputReport.keys[2] = 0;
    state->mInputReport.keys[3] = 0;
    state->mInputReport.keys[4] = 0;
    state->mInputReport.keys[5] = 0;

    state->unk_0x219 = 0x20;

    if (kbdInitialized && devIdx < ARRAY_LENGTH(kbdData)) {
        state->mModifierState = 0;
    }
    state->mNumCtrlsPressed = 0;
    state->mNumShiftsPressed = 0;
    state->mNumAltsPressed = 0;
    state->mNumGuisPressed = 0;
    state->mNumAltgrsPressed = 0;
    state->mNumUnk4sPressed = 0;
    state->mRepeatingKey = 0;
    OSCancelAlarm(&state->mRepeatAlarm);

    return KBD_EC_OK;
}

KBDEc KBDSetCountry(u8 devIdx, int country) {
    if (!kbdInitialized) {
        return KBD_EC_NOT_INIT;
    }
    if (devIdx >= ARRAY_LENGTH(kbdData)) {
        return KBD_EC_OUT_OF_RANGE;
    }

    if (country > KBD_CC_TURKISH_F) {
        return KBD_EC_OUT_OF_RANGE;
    }
    if (kbdKeyMaps[country].mKeycodeStride == 0) {
        return KBD_EC_OUT_OF_RANGE;
    }

    kbdData[devIdx].mCountry = country;
    KBDResetChannel(devIdx);
    return KBD_EC_OK;
}
KBDEc KBDSetLockProcessing(u8 devIdx, BOOL process) {
    if (!kbdInitialized) {
        return KBD_EC_NOT_INIT;
    }
    if (devIdx >= ARRAY_LENGTH(kbdData)) {
        return KBD_EC_OUT_OF_RANGE;
    }

    kbdData[devIdx].mbLockProcessing = process;
    return KBD_EC_OK;
}

KBDEc KBDSetModState(u8 devIdx, u32 modifierState) {
    if (!kbdInitialized) {
        return KBD_EC_NOT_INIT;
    }
    if (devIdx >= ARRAY_LENGTH(kbdData)) {
        return KBD_EC_OUT_OF_RANGE;
    }

    if ((modifierState & KBD_HID_MOD_UNK_12) != 0) {
        kbdData[devIdx].mModifierState = modifierState & ~KBD_HID_MOD_UNK_12;
    } else {
        BOOL level = OSDisableInterrupts();

        u32 oldModifierState = kbdData[devIdx].mModifierState;
        kbdData[devIdx].mModifierState = modifierState & 0xFC0;
        kbdData[devIdx].mModifierState |= oldModifierState & 0x3F;
        OSRestoreInterrupts(level);
    }
    return KBD_EC_OK;
}
KBDEc KBDGetModState(u8 devIdx, u32* modifierStateOut) {
    if (!kbdInitialized) {
        return KBD_EC_NOT_INIT;
    }
    if (devIdx >= ARRAY_LENGTH(kbdData)) {
        return KBD_EC_OUT_OF_RANGE;
    }

    if (modifierStateOut != NULL) {
        *modifierStateOut = kbdData[devIdx].mModifierState;
    }
    return KBD_EC_OK;
}

wchar_t KBDTranslateHidCode(u8 key, int modifierState, int country) {
    u16 keyData;
    int baseOffset;
    wchar_t* pwVar4;
    BOOL isShift;
    int groupBaseOffset;
    u16 iVar7;

    u32 offset;
    u32 fullOffset;

    KBDKeyMap* keyMap;

    if (kbdInitialized == FALSE) {
        return -1;
    }
    if (country >= KBD_CC_MAX) {
        return -1;
    }

    if (kbdKeyMaps[country].mKeycodeStride == 0) {
        return 0;
    }
    keyMap = &kbdKeyMaps[country];

    if (key < KBD_KEY_KEYBOARD_A) {
        return -1;
    }

    if (key < keyMap->mKeyCount + KBD_KEY_KEYBOARD_A) {
        key -= KBD_KEY_KEYBOARD_A;
        pwVar4 = keyMap->mpKeyMap;
    } else if (KBD_KEY_MODIFIER_BASE <= key && key <= KBD_KEY_KEYBOARD_R_GUI) {
        key -= KBD_KEY_KEYBOARD_L_CONTROL;
        pwVar4 = keyMap->mpModifierMap;
    } else {
        return 0;
    }

    baseOffset = key * keyMap->mKeycodeStride;
    keyData = pwVar4[baseOffset];
    // uVar8 = keyData & 0xc000;
    if ((keyData & 0xC000) == 0xC000) {
        groupBaseOffset = 1;
        isShift = 0;
    } else {
        if ((modifierState & KBD_HID_MOD_ALTGR) != 0 ||
            (modifierState & (KBD_HID_MOD_CTRL | KBD_HID_MOD_ALT)) == (KBD_HID_MOD_CTRL | KBD_HID_MOD_ALT)) {
            groupBaseOffset = keyMap->mMapOffsAltgr;
            iVar7 = KBD_KEYHAS_ALTGR;
        } else if ((modifierState & KBD_HID_MOD_LANG2) != 0) {
            groupBaseOffset = keyMap->mMapOffsLang2;
            iVar7 = KBD_KEYHAS_LANG2;
        } else if ((modifierState & KBD_HID_MOD_LANG3) != 0) {
            groupBaseOffset = keyMap->mMapOffsLang3;
            iVar7 = KBD_KEYHAS_LANG3;
        } else {
            groupBaseOffset = 1;
            iVar7 = KBD_KEYHAS_LANG1;
        }

        if ((modifierState & KBD_HID_MOD_UNK_11) == 0 &&
            (modifierState & (KBD_HID_MOD_UNK_4 | KBD_HID_MOD_GUI | KBD_HID_MOD_ALT | KBD_HID_MOD_CTRL)) != 0) {
            isShift = 0;
        } else {
            isShift = modifierState >> KBD_HID_MOD_BITIDX_SHIFT & 1;
            iVar7 = iVar7 << isShift;
            if ((keyData & 0xC000) == 0 && (keyData & iVar7) != 0) {
                isShift ^= (modifierState & KBD_HID_MOD_CAPSLOCK) == KBD_HID_MOD_CAPSLOCK;
            } else if ((keyData & 0xC000) == 0x8000 && (keyData & iVar7) != 0) {
                isShift = (modifierState & KBD_HID_MOD_NUM_LOCK) == KBD_HID_MOD_NUM_LOCK && !isShift;
            } else if ((keyData & 0xC000) == 0x4000 && groupBaseOffset == 1 && (modifierState & KBD_HID_MOD_CAPSLOCK) != 0) {
                groupBaseOffset = keyMap->mMapOffsLang2;
            }
        }
        if (!isShift) {
            if (groupBaseOffset == keyMap->mMapOffsAltgr && (keyMap->mSupportedModifierFlags & KBD_MAPHAS_ALTGR) == 0) {
                return 0;
            }
            if (groupBaseOffset == keyMap->mMapOffsLang2 && (keyMap->mSupportedModifierFlags & KBD_MAPHAS_LANG2) == 0) {
                return 0;
            }
            if (groupBaseOffset == keyMap->mMapOffsLang3 && (keyMap->mSupportedModifierFlags & KBD_MAPHAS_LANG3) == 0) {
                return 0;
            }
        } else {
            if (groupBaseOffset == keyMap->mMapOffsAltgr && (keyMap->mSupportedModifierFlags & KBD_MAPHAS_ALTGR_SHIFT) == 0) {
                return 0;
            }
            if (groupBaseOffset == keyMap->mMapOffsLang2 && (keyMap->mSupportedModifierFlags & KBD_MAPHAS_LANG2_SHIFT) == 0) {
                return 0;
            }
            if (groupBaseOffset == keyMap->mMapOffsLang3 && (keyMap->mSupportedModifierFlags & KBD_MAPHAS_LANG3_SHIFT) == 0) {
                return 0;
            }
        }
    }

    offset = isShift + groupBaseOffset;
    return pwVar4[baseOffset + offset];
}
