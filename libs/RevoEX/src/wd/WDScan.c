#include <revolution/wd.h>

#include <private/ipc/types.h>
#include <private/wd.h>

#include <revolution/ncd.h>
#include <revolution/os.h>

#include <string.h>

#define WAIT_FOR_OPERATION(...)                                                                                                                      \
    do {                                                                                                                                             \
        while ((__VA_ARGS__)) {                                                                                                                      \
            OSSleepTicks(OSMillisecondsToTicks(10));                                                                                                 \
        }                                                                                                                                            \
    } while (FALSE)

static inline s32 GetResultWD(s32 result) {
    switch (result) {
        case WD_INTERNAL_ERR_OK: {
            return WD_ERR_OK;
        }
        case WD_INTERNAL_ERR_BAD_ARGUMENTS: {
            return WD_ERR_BAD_ARGUMENTS;
        }
        case WD_INTERNAL_ERR_IPC_ERROR: {
            return WD_ERR_FATAL;
        }
        case WD_INTERNAL_ERR_WL_ERROR: {
            return WD_ERR_WL_ERROR;
        }
        case WD_INTERNAL_ERR_4: {
            return WD_ERR_7;
        }
        case WD_INTERNAL_ERR_ALLOC_FAILED: {
            return WD_ERR_FATAL;
        }
        case WD_INTERNAL_ERR_ALREADY_INITIALIZED: {
            return WD_ERR_6;
        }
        case IPC_RESULT_NOEXISTS: {
            return WD_ERR_5;
        }
        default: {
            return WD_ERR_FATAL;
        }
    }
}

static inline s32 GetResultNCD(s32 result) {
    switch (result) {
        case -4: {
            return WD_ERR_6;
        }
        case -5: {
            return WD_ERR_4;
        }
        case -8: {
            return WD_ERR_5;
        }
        default: {
            return WD_ERR_FATAL;
        }
    }
}

s32 WDCheckEnableChannel(u16* enableChannel) {
    s32 id;

    if (enableChannel != NULL) {
        *enableChannel = 0;
    }

    id = NCDLockWirelessDriver();
    if (id <= 0) {
        goto ncd_err;
    } else {
        s32 result = WD_Startup(3);
        s32 result2;
        if (result == WD_INTERNAL_ERR_OK) {
            WD_Info info;
            result2 = WD_GetInfo(&info);
            if (result2 == WD_INTERNAL_ERR_OK && enableChannel != NULL) {
                *enableChannel = info.enableChannel;
            }
            WAIT_FOR_OPERATION(WD_Cleanup());
        }

        WAIT_FOR_OPERATION(NCDUnlockWirelessDriver(id));
        goto wd_err;

    ncd_err:
        return GetResultNCD(id);

    wd_err:
        if (result == WD_ERR_OK) {
            return GetResultWD(result2);
        } else {
            return GetResultWD(result);
        }
    }
}

s32 WDScanOnce(u8* scanBuffer, u32 scanBufferLen, WDScanParam* param) {
    s32 id;

    id = NCDLockWirelessDriver();
    if (id <= 0) {
        goto ncd_err;
    } else {
        s32 result = WD_Startup(3);
        s32 result2;
        if (result == WD_INTERNAL_ERR_OK) {
            memset(scanBuffer, 0, scanBufferLen);
            result2 = WD_Scan(param, scanBuffer, scanBufferLen);
            WAIT_FOR_OPERATION(WD_Cleanup());
        }

        WAIT_FOR_OPERATION(NCDUnlockWirelessDriver(id));
        goto wd_err;

    ncd_err:
        return GetResultNCD(id);

    wd_err:
        if (result == WD_ERR_OK) {
            return GetResultWD(result2);
        } else {
            return GetResultWD(result);
        }
    }
}

s32 WDGetPrivacyMode(WDBssDesc* bssDesc) {
    WDVendorInfoElement* ieData;
    u32 ieLength = 0;
    WDVendorInfoElement readIE;
    s32 result;

    if (WDFindInformationElement((WDInfoElement**)&ieData, &ieLength, bssDesc, 0x30)) {
        u8 data[WD_VENDOR_LENGTH] = {0, 0x0F, 0xAC};

        memcpy(&readIE, ieData, sizeof(WDVendorInfoElement) + 2 /*?*/);
        if (memcmp(readIE.data, data, WD_VENDOR_LENGTH) == 0) {
            switch (readIE.mode) {
                case 1: {
                    return WD_PRIVACY_MODE_DS_COMMUNICATION;
                }
                case 5: {
                    return WD_PRIVACY_MODE_2;
                }
                case 2: {
                    return WD_PRIVACY_MODE_7;
                }
                case 3:
                default: {
                    return WD_PRIVACY_MODE_5;
                }
            }
        }
    } else {
        u8 findData[WD_VENDOR_LENGTH] = {0x00, 0x50, 0xF2};
        if (WDiFindVendorSpecificIE(&ieData, &ieLength, bssDesc, 0xDD, findData, 1)) {
            u8 data[WD_VENDOR_LENGTH] = {0x00, 0x50, 0xF2};

            memcpy(&readIE, ieData, sizeof(WDVendorInfoElement));
            if (memcmp(readIE.data, data, WD_VENDOR_LENGTH) == 0) {
                switch (readIE.mode) {
                    case 1: {
                        return WD_PRIVACY_MODE_DS_COMMUNICATION;
                    }
                    case 5: {
                        return WD_PRIVACY_MODE_2;
                    }
                    case 2: {
                        return WD_PRIVACY_MODE_4;
                    }
                    case 3:
                    default: {
                        return WD_PRIVACY_MODE_6;
                    }
                }
            }
        }
    }

    if (bssDesc != NULL && (bssDesc->capabilities & 0x10) == 0x10) {
        result = WD_PRIVACY_MODE_8;
    } else {
        result = WD_PRIVACY_MODE_NONE;
    }
    return result;
}

BOOL WDFindInformationElement(WDInfoElement** outIE, u32* outIELength, WDBssDesc* bssDesc, int id) {
    BOOL found = FALSE;

    if (bssDesc != NULL) {
        WDInfoElement* infoElement;
        u8* ptr = (u8*)(bssDesc + 1);
        int offset;

        for (offset = 0; offset < bssDesc->ieLength; offset = (infoElement->length + offset) + sizeof(WDInfoElement)) {
            infoElement = (WDInfoElement*)((u8*)ptr + offset);
            if (infoElement->id == id) {
                break;
            }
        }
        if (offset < bssDesc->ieLength) {
            if (outIE != NULL) {
                *outIE = infoElement + 1;
            }
            if (outIELength != NULL) {
                *outIELength = infoElement->length;
            }
            found = TRUE;
        }
    }
    if (!found) {
        if (outIE != NULL) {
            *outIE = NULL;
        }
        if (outIELength != NULL) {
            *outIELength = 0;
        }
    }
    return found;
}

BOOL WDiFindVendorSpecificIE(WDVendorInfoElement** outIE, u32* outIELength, WDBssDesc* bssDesc, int id, u8* data, u8 mode) {
    BOOL found = FALSE;

    if (bssDesc != NULL) {
        u8* ptr = (u8*)(bssDesc + 1);
        WDVendorInfoElement* infoElement = (WDVendorInfoElement*)ptr;
        int offset;

        for (offset = 0; offset < bssDesc->ieLength; offset = (infoElement->length + offset) + sizeof(WDInfoElement)) {
            u8 gotMode;
            infoElement = (WDVendorInfoElement*)((u8*)ptr + offset);
            if (infoElement->id != (u32)id || (gotMode = infoElement->mode, memcmp(infoElement->data, data, WD_VENDOR_LENGTH)) || gotMode != mode) {
                continue;
            }
            break;
        }
        if (offset < bssDesc->ieLength) {
            if (outIE != NULL) {
                *outIE = infoElement + 1;
            }
            if (outIELength != NULL) {
                *outIELength = infoElement->length - (sizeof(WDVendorInfoElement) - sizeof(WDInfoElement));
            }
            found = TRUE;
        }
    }
    if (!found) {
        if (outIE != NULL) {
            *outIE = NULL;
        }
        if (outIELength != NULL) {
            *outIELength = 0;
        }
    }
    return found;
}
