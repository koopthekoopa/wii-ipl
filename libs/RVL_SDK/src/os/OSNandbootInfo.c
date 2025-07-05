#include <revolution/os.h>
#include <private/os.h>

#include <revolution/nand.h>
#include <private/nand.h>

#include <string.h>

static u32 checkSum(OSNandbootInfo* info) {
    u32* ptr;
    u32 i, sum;
    
    ptr = (u32*)&info->argsOff;
    sum = 0;
    for (i = 0; i < OS_NANDBOOT_CHECKSUM_SIZE / sizeof(u32); i++) {
        sum = sum + *ptr;
        ptr++;
    }
    
    return sum;
}

BOOL __OSCreateNandbootInfo() {
    NANDStatus status;
    s32 result;

    result = NANDPrivateGetStatus("/shared2/sys/NANDBOOTINFO", &status);
    if (result == NAND_RESULT_OK && status.permission == NAND_PERM_ALL_RW) {
        return TRUE;
    }
    else if (result == NAND_RESULT_OK && status.permission != NAND_PERM_ALL_RW) {
        result = NANDPrivateDelete("/shared2/sys/NANDBOOTINFO");

        if (result != NAND_RESULT_OK) {
            return FALSE;
        }
    }
    else if (result != NAND_RESULT_NOEXISTS) {
        return FALSE;
    }

    result = NANDPrivateCreate("/shared2/sys/NANDBOOTINFO", NAND_PERM_ALL_RW, 0);

    if (result != NAND_RESULT_OK) {
        return FALSE;
    }

    return TRUE;
}

BOOL __OSWriteNandbootInfo(OSNandbootInfo* info) {
    NANDFileInfo fileInfo;
    s32 result;
    info->checkSum = checkSum(info);
    result = NANDPrivateOpen("/shared2/sys/NANDBOOTINFO", &fileInfo, NAND_ACCESS_WRITE);
    
    if (result == NAND_RESULT_OK) {
        result = NANDWrite(&fileInfo, info, sizeof(OSNandbootInfo));

        if (result != sizeof(OSNandbootInfo)) {
            NANDClose(&fileInfo);
            return FALSE;
        }

        result = NANDClose(&fileInfo);
        if (result != NAND_RESULT_OK) {
            return FALSE;
        }
    }
    else {
        return FALSE;
    }

    return TRUE;
}

BOOL __OSReadNandbootInfo(OSNandbootInfo* info) {
    NANDFileInfo fileInfo;
    s32 result;

    result = NANDPrivateOpen("/shared2/sys/NANDBOOTINFO", &fileInfo, NAND_ACCESS_READ);
    if (result == NAND_RESULT_OK) {
        result = NANDRead(&fileInfo, info, sizeof(OSNandbootInfo));
        NANDClose(&fileInfo);
        if (result != sizeof(OSNandbootInfo))
        {
            memset(info, 0,sizeof(OSNandbootInfo));
            return FALSE;
        }
    }
    else {
        memset(info, 0, sizeof(OSNandbootInfo));
        return FALSE;
    }

    if (info->checkSum != checkSum(info)) {
        memset(info, 0, sizeof(OSNandbootInfo));
        return FALSE;
    }

    return TRUE;
}
