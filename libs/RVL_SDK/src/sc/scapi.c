#include <revolution/sc.h>
#include <private/sc.h>

#include <revolution/os.h>

#include <string.h>

static SCSimpleAddress  TempSimpleAddress;

#define MASK(x) (0xFF<<(x))

u8 SCGetAspectRatio() {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_ID_IPL_ASPECT_RATIO)) {
        // Default value
        item = SC_ASPECT_RATIO_4x3;
    }
    else {
        if (item != SC_ASPECT_RATIO_16x9) {
            item = SC_ASPECT_RATIO_4x3;
        }
    }

    return item;
}

BOOL SCSetAspectRatio(u8 aspectRatio) {
    return SCReplaceU8Item(aspectRatio, SC_ITEM_ID_IPL_ASPECT_RATIO);
}

s8 SCGetDisplayOffsetH() {
    s8 item;

    if (!SCFindS8Item(&item, SC_ITEM_ID_IPL_DISPLAY_OFFSET_H)) {
        // Default value
        item = 0;
    }
    else {
        if (item < -32) {
            item = -32;
        }
        else if (item > 32) {
            item = 32;
        }
    }

    return item & ~1;
}

BOOL SCSetDisplayOffsetH(s8 displayOffsetH) {
    return SCReplaceS8Item(displayOffsetH, SC_ITEM_ID_IPL_DISPLAY_OFFSET_H);
}

u8 SCGetEuRgb60Mode() {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_ID_IPL_EURGB60_MODE)) {
        // Default value
        item = SC_EURGB60_MODE_OFF;
    }
    else {
        if (item != SC_EURGB60_MODE_ON) {
            item = SC_EURGB60_MODE_OFF;
        }
    }

    return item;
}

BOOL SCSetEuRgb60Mode(u8 eurgb60Mode) {
    return SCReplaceU8Item(eurgb60Mode, SC_ITEM_ID_IPL_EURGB60_MODE);
}

BOOL SCGetIdleMode(SCIdleModeInfo* info) {
    return SCFindByteArrayItem(info, sizeof(*info), SC_ITEM_ID_IPL_IDLE_MODE);
}

BOOL SCSetIdleMode(SCIdleModeInfo* info) {
    return SCReplaceByteArrayItem(info, sizeof(*info), SC_ITEM_ID_IPL_IDLE_MODE);
}

u8 SCGetLanguage() {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_ID_IPL_LANGUAGE)) {
        // Default value
        if (SCGetProductArea() == SC_LANG_JAPANESE) {
            item = SC_LANG_JAPANESE;
        }
        else {
            item = SC_LANG_ENGLISH;
        }
    }
    else {
        if (item > SC_LANG_KOREAN) {
            item = SC_LANG_ENGLISH;
        }
    }

    return item;
}

BOOL SCSetLanguage(u8 language) {
    return SCReplaceU8Item(language, SC_ITEM_ID_IPL_LANGUAGE);
}

BOOL SCGetParentalControl(SCParentalControlsInfo* pcInfo) {
    return SCFindByteArrayItem(pcInfo, sizeof(*pcInfo), SC_ITEM_ID_IPL_PARENTAL_CONTROL);
}

BOOL SCSetParentalControl(SCParentalControlsInfo* pcInfo) {
    return SCReplaceByteArrayItem(pcInfo, sizeof(*pcInfo), SC_ITEM_ID_IPL_PARENTAL_CONTROL);
}

u8 SCGetProgressiveMode() {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_ID_IPL_PROGRESSIVE_MODE)) {
        // Default value
        item = SC_PROGRESSIVE_MODE_OFF;
    }
    else {
        if (item != SC_PROGRESSIVE_MODE_ON) {
            item = SC_PROGRESSIVE_MODE_OFF;
        }
    }

    return item;
}

BOOL SCSetProgressiveMode(u8 progressiveMode) {
    return SCReplaceU8Item(progressiveMode, SC_ITEM_ID_IPL_PROGRESSIVE_MODE);
}

u8 SCGetScreenSaverMode() {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_ID_IPL_SCREEN_SAVER_MODE)) {
        // Default value
        item = SC_SCREEN_SAVER_MODE_ON;
    }
    else {
        if (item != SC_SCREEN_SAVER_MODE_ON) {
            item = SC_SCREEN_SAVER_MODE_OFF;
        }
    }

    return item;
}

BOOL SCSetScreenSaverMode(u8 screenSaverMode) {
    return SCReplaceU8Item(screenSaverMode, SC_ITEM_ID_IPL_SCREEN_SAVER_MODE);
}

u8 SCGetSoundMode() {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_ID_IPL_SOUND_MODE)) {
        // Default value
        item = SC_SOUND_MODE_STEREO;
    }
    else {
        if (item != SC_SOUND_MODE_MONO && item != SC_SOUND_MODE_STEREO && item != SC_SOUND_MODE_SURROUND) {
            item = SC_SOUND_MODE_STEREO;
        }
    }

    return item;
}

BOOL SCSetSoundMode(u8 soundMode) {
    return SCReplaceU8Item(soundMode, SC_ITEM_ID_IPL_SOUND_MODE);
}

u32 SCGetCounterBias() {
    u32 item;

    if (!SCFindU32Item(&item, SC_ITEM_ID_IPL_COUNTER_BIAS)) {
        // 2,192 days?
        item = 2192 * 24 * 60 * 60;
    }

    return item;
}

BOOL SCSetCounterBias(u32 counterBias) {
    return SCReplaceU32Item(counterBias, SC_ITEM_ID_IPL_COUNTER_BIAS);
}

BOOL SCGetBtDeviceInfoArray(SCBtDeviceInfoArray* devInfo) {
    return SCFindByteArrayItem(devInfo, sizeof(*devInfo), SC_ITEM_ID_BT_DEVICE_INFO);
}

BOOL SCSetBtDeviceInfoArray(SCBtDeviceInfoArray* devInfo) {
    return SCReplaceByteArrayItem(devInfo, sizeof(*devInfo), SC_ITEM_ID_BT_DEVICE_INFO);
}

BOOL SCGetBtCmpDevInfoArray(SCBtCmpDevInfoArray* devInfo) {
    return SCFindByteArrayItem(devInfo, sizeof(*devInfo), SC_ITEM_ID_BT_CMPDEV_INFO);
}

BOOL SCSetBtCmpDevInfoArray(SCBtCmpDevInfoArray* devInfo) {
    return SCReplaceByteArrayItem(devInfo, sizeof(*devInfo), SC_ITEM_ID_BT_CMPDEV_INFO);
}

u32 SCGetBtDpdSensibility() {
    u32 item;

    if (!SCFindU32Item(&item, SC_ITEM_ID_BT_DPD_SENSIBILITY)) {
        // Default value
        item = 2;
    }
    else {
        if (item < 1) {
            item = 1;
        }
        else if (item > 5) {
            item = 5;
        }
    }

    return item;
}

BOOL SCSetBtDpdSensibility(u32 dpdSensibility) {
    return SCReplaceU32Item(dpdSensibility, SC_ITEM_ID_BT_DPD_SENSIBILITY);
}

BOOL SCGetWwwRestriction() {
    BOOL item;

    if (!SCFindBoolItem(&item, SC_ITEM_ID_WWW_RESTRICTION)) {
        // Default value
        item = FALSE;
    }

    return item;
}

BOOL SCSetWwwRestriction(BOOL wwwRestrictFlag) {
    return SCReplaceBoolItem(wwwRestrictFlag, SC_ITEM_ID_WWW_RESTRICTION);
}

u8 SCGetWpadMotorMode() {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_ID_BT_MOTOR_MODE)) {
        // Default value
        item = SC_WPAD_MOTOR_MODE_ON;
    }
    else {
        if (item != SC_SCREEN_SAVER_MODE_ON) {
            item = SC_SCREEN_SAVER_MODE_OFF;
        }
    }

    return item;
}

BOOL SCSetWpadMotorMode(u8 motorMode) {
    return SCReplaceU8Item(motorMode, SC_ITEM_ID_BT_MOTOR_MODE);
}

u8 SCGetWpadSensorBarPosition() {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_ID_BT_SENSOR_BAR_POSITION)) {
        // Default value
        item = SC_WPAD_SENSOR_BAR_POSITION_BOTTOM;
    }
    else {
        if (item != SC_WPAD_SENSOR_BAR_POSITION_TOP) {
            item = SC_WPAD_SENSOR_BAR_POSITION_BOTTOM;
        }
    }

    return item;
}

BOOL SCSetWpadSensorBarPosition(u8 sensorBarPosition) {
    return SCReplaceU8Item(sensorBarPosition, SC_ITEM_ID_BT_SENSOR_BAR_POSITION);
}

u8 SCGetWpadSpeakerVolume() {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_ID_BT_SPEAKER_VOLUME)) {
        // Default value
        item = 89;
    }
    else {
        if (item > 127) {
            item = 127;
        }
    }

    return item;
}

BOOL SCSetWpadSpeakerVolume(u8 speakerVolume) {
    return SCReplaceU8Item(speakerVolume, SC_ITEM_ID_BT_SPEAKER_VOLUME);
}

BOOL SCGetOwnerNickName(SCOwnerNickname* ownerNickname) {
    return SCFindByteArrayItem(ownerNickname, sizeof(*ownerNickname), SC_ITEM_ID_IPL_OWNER_NICKNAME);
}

BOOL SCSetOwnerNickName(SCOwnerNickname* ownerNickname) {
    return SCReplaceByteArrayItem(ownerNickname, sizeof(*ownerNickname), SC_ITEM_ID_IPL_OWNER_NICKNAME);
}

u32 SCGetSimpleAddressID() {
    if (SCGetSimpleAddressData(&TempSimpleAddress)) {
        return TempSimpleAddress.id;
    }
    return 0xFFFFFFFF;
}

BOOL SCGetSimpleAddressData(SCSimpleAddress* address) {
    BOOL enabled;
    u32 id;

    if (SCFindByteArrayItem(address, sizeof(*address), SC_ITEM_ID_IPL_SIMPLE_ADDRESS)
    &&  address->id != 0xFFFFFFFF
    && (address->id & MASK(SC_SIMPLE_ADDRESS_ID_COUNTRY)) != 0 && (address->id & MASK(SC_SIMPLE_ADDRESS_ID_COUNTRY)) != 0xFF000000
    && (address->id & MASK(SC_SIMPLE_ADDRESS_ID_REGION)) != 0xFF0000) {
        enabled = OSDisableInterrupts();
        id = address->id;

        if ((address->id & MASK(SC_SIMPLE_ADDRESS_ID_REGION)) == 0) {
            memset(address, 0, sizeof(*address));
            address->id = id;
        }

        OSRestoreInterrupts(enabled);
        return TRUE;
    }
    else {
        return FALSE;
    }
}

BOOL SCSetSimpleAddressData(SCSimpleAddress* address) {
    return SCReplaceByteArrayItem(address, sizeof(*address), SC_ITEM_ID_IPL_SIMPLE_ADDRESS);
}

u32 SCGetNetContentRestrictions() {
    u32 item;

    if (!SCFindU32Item(&item, SC_ITEM_ID_NET_CONTENT_RESTRICTIONS)) {
        // Default value
        item = SC_NET_RESTRICTIONS_NONE;
    }

    return item;
}

BOOL SCSetNetContentRestrictions(u32 netRestrictions) {
    return SCReplaceU32Item(netRestrictions, SC_ITEM_ID_NET_CONTENT_RESTRICTIONS);
}

BOOL SCGetConfigDoneFlag() {
    BOOL item;

    if (!SCFindBoolItem(&item, SC_ITEM_ID_IPL_CONFIG_DONE)) {
        // Default value
        item = FALSE;
    }

    return item;
}

BOOL SCSetConfigDoneFlag(BOOL configDoneFlag) {
    return SCReplaceBoolItem(configDoneFlag, SC_ITEM_ID_IPL_CONFIG_DONE);
}

BOOL SCGetConfigDoneFlag2() {
    BOOL item;

    if (!SCFindBoolItem(&item, SC_ITEM_ID_IPL_CONFIG_DONE2)) {
        // Default value
        item = FALSE;
    }

    return item;
}

BOOL SCSetConfigDoneFlag2(BOOL configDone2Flag) {
    return SCReplaceBoolItem(configDone2Flag, SC_ITEM_ID_IPL_CONFIG_DONE2);
}

u8 SCGetUpdateType() {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_ID_IPL_UPDATE_TYPE)) {
        // Default value
        item = SC_UPDATE_TYPE_NONE;
    }
    else {
        if (item != SC_UPDATE_TYPE_DISC && item != SC_UPDATE_TYPE_NETWORK) {
            item = SC_UPDATE_TYPE_NONE;
        }
    }

    return item;
}

BOOL SCSetUpdateType(u8 updateType) {
    return SCReplaceU8Item(updateType, SC_ITEM_ID_IPL_UPDATE_TYPE);
}

BOOL SCGetEULA() {
    BOOL item;

    if (!SCFindBoolItem(&item, SC_ITEM_ID_IPL_EULA)) {
        // Default value
        item = FALSE;
    }

    return item;
}

BOOL SCSetEULA(BOOL eulaFlag) {
    return SCReplaceBoolItem(eulaFlag, SC_ITEM_ID_IPL_EULA);
}

u32 SCGetWCFlags() {
    u32 item;

    if (!SCFindU32Item(&item, SC_ITEM_ID_NET_WC_FLAGS)) {
        // Default value
        item = SC_WC_FLAGS_DISABLED;
    }

    return item;
}

BOOL SCSetWCFlags(u32 wcFlags) {
    return SCReplaceU32Item(wcFlags, SC_ITEM_ID_NET_WC_FLAGS);
}

BOOL SCGetFreeChannelAppCount(u32* count) {
    *count = 0;
    return SCFindU32Item(count, SC_ITEM_ID_IPL_FREE_CHANNEL_APP_COUNT);
}

BOOL SCSetFreeChannelAppCount(u32 count) {
    return SCReplaceU32Item(count, SC_ITEM_ID_IPL_FREE_CHANNEL_APP_COUNT);
}

BOOL SCGetInstalledChannelAppCount(u32* count) {
    *count = 0;
    return SCFindU32Item(count, SC_ITEM_ID_IPL_INSTALLED_CHANNEL_APP_COUNT);
}

BOOL SCSetInstalledChannelAppCount(u32 count) {
    return SCReplaceU32Item(count, SC_ITEM_ID_IPL_INSTALLED_CHANNEL_APP_COUNT);
}

#define TITLE_TYPE(x) ((u32)(x>>32))

#define IS_VALID_TEMP_TYPE(tId)        \
      ((tId) == 0x00010001    \
    || (tId) == 0x00010003    \
    || (tId) == 0x00010004    \
    || (tId) == 0x00010006    \
    || (tId) == 0x00010007)

u64 SCGetTmpTitleID() {
    u64 item;
    u32 titleType;

    if (!SCFindU64Item(&item, SC_ITEM_ID_TEMP_TITLE_ID)) {
        // Default value
        item = 0;
    }

    titleType = TITLE_TYPE(item);
    if (IS_VALID_TEMP_TYPE(titleType)) {
        return item;
    }

    return 0;
}

BOOL SCSetTmpTitleID(u64 titleId) {
    u32 titleType = TITLE_TYPE(titleId);
    if (IS_VALID_TEMP_TYPE(titleType) || titleId == 0) {
        return SCReplaceU64Item(titleId, SC_ITEM_ID_TEMP_TITLE_ID);
    }
    return FALSE;
}
