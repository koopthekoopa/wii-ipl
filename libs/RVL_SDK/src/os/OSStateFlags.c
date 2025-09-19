#include <revolution/os.h>
#include <private/os.h>

#include <revolution/nand.h>

#include <string.h>

static OSStateFlags StateFlags  ALIGN32;

static u32 checkSum(OSStateFlags* flags) {
    u32  *ptr, i, sum;

    ptr = (u32*)&flags->lastAppType;
    sum = 0;

    for (i = 0; i < OS_STATE_FLAGS_CHECKSUM_SIZE / 4; i++) {
        sum = sum + *ptr;
        ptr++;
    }

    return sum;
}

BOOL __OSCreateStateFlags() {
    NANDStatus status;
    s32 ret;

    ret = NANDGetStatus(OS_STATE_FLAGS_NAND_PATH, &status);
    if (ret == NAND_RESULT_OK) {
        return TRUE;
    }
    else if (ret == NAND_RESULT_NOEXISTS) {
        return NANDCreate(OS_STATE_FLAGS_NAND_PATH, NAND_PERM_ALL_RW, 0) == NAND_RESULT_OK ? TRUE : FALSE;
    }
    return FALSE;
}

BOOL __OSWriteStateFlags(OSStateFlags* flags) {
    NANDFileInfo fileInfo;
    s32 ret;

    memcpy(&StateFlags, flags, sizeof(StateFlags));
    StateFlags.checkSum = checkSum(&StateFlags);

    ret = NANDOpen(OS_STATE_FLAGS_NAND_PATH, &fileInfo, 2);

    if (ret == NAND_RESULT_OK) {
        ret = NANDWrite(&fileInfo, &StateFlags, sizeof(StateFlags));

        if (ret != sizeof(StateFlags)) {
            NANDClose(&fileInfo);
            return FALSE;
        }

        ret = NANDClose(&fileInfo);

        if (ret != NAND_RESULT_OK) {
            return FALSE;
        }
    }
    else {
        return FALSE;
    }

    return TRUE;
}

BOOL __OSReadStateFlags(OSStateFlags* flags) {
    NANDFileInfo fileInfo;
    s32 ret;

    ret = NANDOpen(OS_STATE_FLAGS_NAND_PATH, &fileInfo, 1);

    if (ret == NAND_RESULT_OK) {
        ret = NANDRead(&fileInfo, &StateFlags, sizeof(OSStateFlags));
        NANDClose(&fileInfo);

        if (ret != sizeof(OSStateFlags)) {
            NANDDelete(OS_STATE_FLAGS_NAND_PATH);
            memset(flags, 0, sizeof(StateFlags));
            return FALSE;
        }
    }
    else {
        memset(flags, 0, sizeof(OSStateFlags));
        return FALSE;
    }

    if (checkSum(&StateFlags) != StateFlags.checkSum) {
        memset(flags, 0, sizeof(OSStateFlags));
        return FALSE;
    }

    memcpy(flags, &StateFlags, sizeof(OSStateFlags));
    return TRUE;
}
