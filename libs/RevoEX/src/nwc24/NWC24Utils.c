#include <revolution/nwc24.h>
#include <private/nwc24.h>

void NWC24Data_Init(NWC24Data* data) {
    data->ptr = NULL;
    data->size = 0;
}

void NWC24Data_SetDataP(NWC24Data* data, const void* ptr, u32 size) {
    data->ptr = ptr;
    data->size = size;
}

void NWC24Date_Init(NWC24Date* date) {
    date->year = 2000;
    date->month = 1;
    date->day = 1;
    date->hour = 12;
    date->min = 0;
    date->sec = 0;
    date->unk_0x07 = 0;
}

void NWC24iConvIdToStr(NWC24UserId addr, char* out) {
    NWC24UserId a = addr;
    int i;

    // Count nibbles in u64
    int n = sizeof(NWC24UserId) * 2;

    for (i = n - 1; i >= 0; i--) {
        out[i] = '0' + a % 10;
        a /= 10;
    }

    out[n] = '\0';
}

NWC24Err NWC24iCheckStringLength(const char* str, int minLen, int maxLen) {
    u32 len;

    if (str == NULL) {
        return NWC24_ERR_NULL;
    }

    len = STD_strnlen(str, maxLen+1);
    if (len == 0) {
        return NWC24_ERR_NULL;
    }

    if (len > maxLen) {
        return NWC24_ERR_FULL;
    }

    return len < minLen ? NWC24_ERR_FORMAT : NWC24_OK;
}

s32 NWC24iStrLCpy(char* dest, const char* src, s32 len) {
    int i;

    if (dest == NULL || src == NULL) {
        return 0;
    }

    for (i = 0; i+1 < len; src++, i++) {
        dest[i] = *src;
        if (*src == 0) {
            break;
        }
    }

    if (i+1 >= len && len != 0) {
        dest[i] = 0;
    }

    return i;
}
