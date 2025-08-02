#include <revolution/nwc24.h>
#include <private/nwc24.h>

typedef s32 ChkHostNameError;

enum {
    CHECK_HOSTNAME_DOT_AT_END = -8,
    CHECK_HOSTNAME_OUT_OF_RANGE,
    CHECK_HOSTNAME_INVALID_CHARACTERS,
    CHECK_HOSTNAME_MULTIPLE_DOTS,
    CHECK_HOSTNAME_INCORRECT,
    CHECK_HOSTNAME_IS_EMPTY,
    CHECK_HOSTNAME_IS_NULL,
    CHECK_HOSTNAME_BAD_LENGTH,
    CHECK_HOSTNAME_SUCCESS
};

#define FRIEND_LIST_MAGIC   'WcFl'
#define FRIEND_LIST_VERSION 2

static const char* FLFilePath = "/shared2/wc24/nwc24fl.bin";

static NWC24Err         GetCachedFLHeader(NWC24FLHeader** header);
static ChkHostNameError CheckHostName(const char* hostName, u32 hostNameLength);

static u32 GetUnkFlag(u32 index) {
    NWC24Err        result;
    NWC24FLHeader*  header;
    u32             data;

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }
    
    data = header->unk_0x10[index >> 5] >> (index & 0x1f) & 1;
    return (NWC24Err)data;
}

static NWC24Err SetUnkFlag(u32 index, int flag) {
    NWC24Err        result;
    NWC24FLHeader*  header;

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }
    
    header->unk_0x10[index >> 5] = ~(1 << (index & 0x1f)) & header->unk_0x10[index >> 5] | flag << (index & 0x1f);
    return NWC24_OK;
}

static NWC24Err SetUnkFlag2(int flag) {
    NWC24Err        result;
    NWC24FLHeader*  header;

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }
    
    header->unk_0x3C |= flag;
    return NWC24_OK;
}

static NWC24Err ConvAddrToCheckValue(const NWC24FriendAddr* addr, NWC24UserId* value) {
    int i;
    int strLen;

    *value = 0x80;

    strLen = STD_strnlen(addr->mailAddr, sizeof(NWC24UserMailAddr));
    if (strLen == (int)sizeof(NWC24UserMailAddr)) {
        return NWC24_ERR_STRING_END;
    }

    for (i = 0; i < (int)sizeof(NWC24UserId)-1; i++) {
        if (i < strLen) {
            *value |= Mail_tolower(addr->mailAddr[i]);
        }
        *value <<= 8;
    }

    *value |= strLen & 0xFF;
    return NWC24_OK;
}

NWC24Err NWC24ReadFriendInfo(NWC24FriendInfo* info, u32 index) {
    NWC24Err    result;

    result = NWC24iReadFriendInfoRaw(info, index);
    if (result != NWC24_OK) {
        return result;
    }

    if (info->attr.type == NWC24_FRIENDTYPE_WII) {
        Mail_memset(&info->addr.mailAddr[sizeof(NWC24UserId)], 0, sizeof(NWC24UserMailAddr)-sizeof(NWC24UserId));
    }

    result = GetUnkFlag(index);
    if (result == 1) {
        info->attr.status = NWC24_FRIENDSTATUS_CONFIRMED;
    }

    return NWC24_OK;
}

NWC24Err NWC24WriteFriendInfo(const NWC24FriendInfo* friendInfo, u32 index) {
    NWC24Err            result;
    NWC24Err            resultFile;

    NWC24FLHeader*      header;
    NWC24FriendAttr*    tmpFriendAttr;
    NWC24FriendAddr*    tmpFriendAddr;

    NWC24File           file;
    u32                 fileOffset;

    int                 i;
    NWC24UserId         friendValue;

    if (!NWC24IsMsgLibOpened() && !NWC24IsMsgLibOpenedByTool()) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    if (((u32)friendInfo & 31) != 0) {
        return NWC24_ERR_ALIGNMENT;
    }

    result = NWC24CheckFriendInfo(friendInfo);
    if (result != NWC24_OK) {
        return result;
    }

    tmpFriendAttr = (NWC24FriendAttr*)&nwc24Work->mainWork[0];
    tmpFriendAddr = (NWC24FriendAddr*)&nwc24Work->mainWork[sizeof(NWC24FriendAttr)];

    *tmpFriendAttr = friendInfo->attr;
    tmpFriendAttr->status = NWC24_FRIENDSTATUS_PENDING;

    for (i = 0; i < NWC24_FRIEND_NAME_LENGTH-1; i++) {
        if (tmpFriendAttr->name[i] == 0) {
            break;
        }
    }

    if (i == NWC24_FRIEND_NAME_LENGTH-1) {
        return NWC24_ERR_STRING_END;
    }

    for (; i < NWC24_FRIEND_NAME_LENGTH; i++) {
        tmpFriendAttr->name[i] = 0;
    }

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }

    if (index >= header->infoCount) {
        return NWC24_ERR_INVALID_VALUE;
    }

    if (header->friendIds[index] != 0) {
        return NWC24_ERR_FULL;
    }

    if (tmpFriendAttr->type == NWC24_FRIENDTYPE_WII) {
        result = NWC24CheckUserId(friendInfo->addr.wiiId);
        if (result != NWC24_OK && result != NWC24_ERR_ID_GENERATED) {
            return result;
        }

        header->friendIds[index] = friendInfo->addr.wiiId;
        tmpFriendAddr->wiiId = friendInfo->addr.wiiId;

        Mail_memset(&tmpFriendAddr->mailAddr[sizeof(NWC24UserId)], 0, sizeof(NWC24UserMailAddr)-sizeof(NWC24UserId));
    }
    else if (tmpFriendAttr->type == NWC24_FRIENDTYPE_EMAIL) {
        result = ConvAddrToCheckValue(&friendInfo->addr, &friendValue);
        if (result != NWC24_OK) {
            return result;
        }

        header->friendIds[index] = friendValue;
        tmpFriendAddr = (NWC24FriendAddr*)&friendInfo->addr;
    }

    SetUnkFlag2(1);

    result = SetUnkFlag(index, 0);
    if (result != NWC24_OK) {
        return result;
    }

    result = NWC24FOpen(&file, FLFilePath, NWC24_OPEN_RW);
    if (result != NWC24_OK) {
        return result;
    }

    fileOffset = (index * sizeof(NWC24FriendInfo)) + sizeof(NWC24FLHeader);
    NWC24FSeek(&file, fileOffset, NWC24_SEEK_BEG);

    resultFile = NWC24FWrite(tmpFriendAttr, sizeof(NWC24FriendAttr), &file);
    if (resultFile == NWC24_OK) {
        resultFile = NWC24FWrite(tmpFriendAddr, sizeof(NWC24FriendAddr), &file);
        if (resultFile == NWC24_OK) {
            header->registeredCount++;

            NWC24FSeek(&file, 0, NWC24_SEEK_BEG);
            resultFile = NWC24FWrite(header, sizeof(NWC24FLHeader), &file);
        }
    }

    result = NWC24FClose(&file);
    if (resultFile != NWC24_OK) {
        result = resultFile;
    }

    return result;
}

NWC24Err NWC24DeleteFriendInfo(u32 index) {
    NWC24Err            result;
    NWC24Err            resultWrite;

    NWC24FLHeader*      header;
    NWC24FriendInfo*    tmpFriendInfo;

    NWC24File           file;
    u32                 fileOffset;

    if (!NWC24IsMsgLibOpened() && !NWC24IsMsgLibOpenedByTool()) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }

    if (index >= header->infoCount) {
        return NWC24_ERR_INVALID_VALUE;
    }

    if (header->friendIds[index] == 0) {
        return NWC24_ERR_NULL;
    }

    tmpFriendInfo = (NWC24FriendInfo*)nwc24Work->mainWork;
    Mail_memset(tmpFriendInfo, 0, sizeof(NWC24FriendInfo));

    result = NWC24FOpen(&file, FLFilePath, NWC24_OPEN_RW);
    if (result != NWC24_OK) {
        return result;
    }

    fileOffset = (index * sizeof(NWC24FriendInfo)) + sizeof(NWC24FLHeader);
    NWC24FSeek(&file, fileOffset, NWC24_SEEK_BEG);

    resultWrite = NWC24FWrite(tmpFriendInfo, sizeof(NWC24FriendInfo), &file);
    if (resultWrite == NWC24_OK) {
        header->friendIds[index] = 0;
        header->registeredCount--;
        result = SetUnkFlag(index, 0);
        if (result == NWC24_OK) {
            NWC24FSeek(&file, 0, NWC24_SEEK_BEG);
            resultWrite = NWC24FWrite(header, sizeof(NWC24FLHeader), &file);
        }
    }

    result = NWC24FClose(&file);
    if (resultWrite != NWC24_OK) {
        result = resultWrite;
    }

    return result;
}

NWC24Err NWC24UpdateFriendInfo(const NWC24FriendInfo* friendInfo, u32 index) {
    NWC24Err            result;
    NWC24Err            resultFile;

    NWC24FLHeader*      header;
    NWC24FriendInfo*    tmpFriendInfo;

    NWC24File           file;
    u32                 fileOffset;

    int                 i;

    if (!NWC24IsMsgLibOpened() && !NWC24IsMsgLibOpenedByTool()) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    if (((u32)friendInfo & 31) != 0) {
        return NWC24_ERR_ALIGNMENT;
    }

    result = NWC24CheckFriendInfo(friendInfo);
    if (result != NWC24_OK) {
        return result;
    }

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }

    if (index >= header->infoCount) {
        return NWC24_ERR_INVALID_VALUE;
    }

    tmpFriendInfo = (NWC24FriendInfo*)nwc24Work->mainWork;
    Mail_memset(tmpFriendInfo, 0, sizeof(NWC24FriendInfo));

    result = NWC24FOpen(&file, FLFilePath, NWC24_OPEN_RW);
    if (result != NWC24_OK) {
        return result;
    }

    fileOffset = (index * sizeof(NWC24FriendInfo)) + sizeof(NWC24FLHeader);
    NWC24FSeek(&file, fileOffset, NWC24_SEEK_BEG);

    resultFile = NWC24FRead(tmpFriendInfo, sizeof(NWC24FriendInfo), &file);
    if (resultFile == NWC24_OK) {
        if (friendInfo->attr.type == NWC24_FRIENDTYPE_WII) {
            if (tmpFriendInfo->addr.wiiId != friendInfo->addr.wiiId) {
                resultFile = NWC24_ERR_PROTECTED;
                goto out;
            }
        }
        else if (friendInfo->attr.type == NWC24_FRIENDTYPE_EMAIL) {
            if (Mail_strnicmp(tmpFriendInfo->addr.mailAddr, friendInfo->addr.mailAddr, sizeof(NWC24UserMailAddr))) {
                resultFile = NWC24_ERR_PROTECTED;
                goto out;
            }
        }
        else {
            resultFile = NWC24_ERR_INVALID_VALUE;
            goto out;
        }

        for (i = 0; i < NWC24_FRIEND_NAME_LENGTH; i++) {
            tmpFriendInfo->attr.name[i] = friendInfo->attr.name[i];
        }

        tmpFriendInfo->attr.fdId = friendInfo->attr.fdId;

        NWC24FSeek(&file, fileOffset, NWC24_SEEK_BEG);

        resultFile = NWC24FWrite(&tmpFriendInfo->attr, sizeof(tmpFriendInfo->attr), &file);
    }

out:
    result = NWC24FClose(&file);
    if (resultFile != NWC24_OK) {
        result = resultFile;
    }

    return result;
}

NWC24Err NWC24SwapFriendInfos(u32 index1, u32 index2) {
    NWC24Err            result;
    NWC24Err            resultFile;

    NWC24FLHeader*      header;
    NWC24FriendInfo*    friendInfo1;
    NWC24FriendInfo*    friendInfo2;

    NWC24File           file;
    u32                 fileOffset1;
    u32                 fileOffset2;

    int                 friendUnkFlag1;
    int                 friendUnkFlag2;

    if (!NWC24IsMsgLibOpened() && !NWC24IsMsgLibOpenedByTool()) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }

    if (index1 == index2) {
        return NWC24_OK;
    }

    if (index1 >= header->infoCount) {
        return NWC24_ERR_INVALID_VALUE;
    }

    if (index2 >= header->infoCount) {
        return NWC24_ERR_INVALID_VALUE;
    }

    friendInfo1 = (NWC24FriendInfo*)&nwc24Work->mainWork[0 * sizeof(NWC24FriendInfo)];
    friendInfo2 = (NWC24FriendInfo*)&nwc24Work->mainWork[1 * sizeof(NWC24FriendInfo)];

    result = NWC24FOpen(&file, FLFilePath, NWC24_OPEN_RW);
    if (result != NWC24_OK) {
        return result;
    }

    fileOffset1 = (index1 * sizeof(NWC24FriendInfo)) + sizeof(NWC24FLHeader);
    fileOffset2 = (index2 * sizeof(NWC24FriendInfo)) + sizeof(NWC24FLHeader);

    // Read friend infos
    NWC24FSeek(&file, fileOffset1, NWC24_SEEK_BEG);
    resultFile = NWC24FRead(friendInfo1, sizeof(NWC24FriendInfo), &file);
    if (resultFile == NWC24_OK) {
        NWC24FSeek(&file, fileOffset2, NWC24_SEEK_BEG);
        resultFile = NWC24FRead(friendInfo2, sizeof(NWC24FriendInfo), &file);
        if (resultFile == NWC24_OK) { 
            // Write friend infos
            NWC24FSeek(&file, fileOffset1, NWC24_SEEK_BEG);
            resultFile = NWC24FWrite(friendInfo2, sizeof(NWC24FriendInfo), &file);
            if (resultFile == NWC24_OK) {
                NWC24FSeek(&file, fileOffset2, NWC24_SEEK_BEG);
                resultFile = NWC24FWrite(friendInfo1, sizeof(NWC24FriendInfo), &file);
                if (resultFile == NWC24_OK) {
                    // Swap friend ID
                    NWC24UserId tmp = header->friendIds[index1];
                    header->friendIds[index1] = header->friendIds[index2];
                    header->friendIds[index2] = tmp;

                    // Swap some flag
                    friendUnkFlag1 = GetUnkFlag(index1);
                    friendUnkFlag2 = GetUnkFlag(index2);
                    SetUnkFlag(index1, friendUnkFlag2);
                    SetUnkFlag(index2, friendUnkFlag1);

                    // Write new header
                    NWC24FSeek(&file, 0, NWC24_SEEK_BEG);
                    resultFile = NWC24FWrite(header, sizeof(NWC24FLHeader), &file);
                }
            }
        }
    }

    result = NWC24FClose(&file);
    if (resultFile != NWC24_OK) {
        result = resultFile;
    }

    return result;
}

NWC24Err NWC24SearchFriendInfoById(NWC24UserId id, u32* index) {
    NWC24Err        result;

    NWC24FLHeader*  header;

    u32             i;

    if (!NWC24IsMsgLibOpened() && !NWC24IsMsgLibOpenedByTool()) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }

    for (i = 0; i < header->infoCount; i++) {
        if (id == header->friendIds[i]) {
            *index = i;
            return NWC24_OK;
        }
    }

    return NWC24_ERR_NOT_FOUND;
}

NWC24Err NWC24SearchFriendInfoByAddr(const NWC24FriendAddr* addr, u32* index) {
    NWC24Err            result;

    NWC24FLHeader*      header;
    NWC24FriendInfo*    tmpFriendInfo;

    int                 cmpResult;

    u32                 i;
    NWC24UserId         friendValue;

    if (!NWC24IsMsgLibOpened() && !NWC24IsMsgLibOpenedByTool()) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }

    result = ConvAddrToCheckValue(addr, &friendValue);
    if (result != NWC24_OK) {
        return result;
    }

    tmpFriendInfo = (NWC24FriendInfo*)&nwc24Work->mainWork;

    for (i = 0; i < header->infoCount; i++) {
        if (friendValue == header->friendIds[i]) {
            result = NWC24ReadFriendInfo(tmpFriendInfo, i);
            if (result != NWC24_OK) {
                return result;
            }

            cmpResult = Mail_strnicmp(addr->mailAddr, tmpFriendInfo->addr.mailAddr, sizeof(NWC24UserMailAddr));
            if (cmpResult == 0) {
                *index = i;
                return NWC24_OK;
            }
        }
    }

    return NWC24_ERR_NOT_FOUND;
}

NWC24Err NWC24GetNumFriendInfos(u32* numFriendInfo) {
    NWC24Err        result;

    NWC24FLHeader*  header;

    if (!NWC24IsMsgLibOpened() && !NWC24IsMsgLibOpenedByTool()) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }

    *numFriendInfo = header->infoCount;

    return NWC24_OK;
}

NWC24Err NWC24GetNumRegFriendInfos(u32* numRegFriendInfo) {
    NWC24Err        result;

    NWC24FLHeader*  header;

    if (!NWC24IsMsgLibOpened() && !NWC24IsMsgLibOpenedByTool()) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }

    *numRegFriendInfo = header->registeredCount;

    return NWC24_OK;
}

BOOL NWC24IsFriendInfoThere(u32 index) {
    NWC24Err        result;

    NWC24FLHeader*  header;

    if (!NWC24IsMsgLibOpened() && !NWC24IsMsgLibOpenedByTool()) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }

    if (index >= header->infoCount) {
        return NWC24_ERR_INVALID_VALUE;
    }

    return header->friendIds[index] != 0;
}

NWC24Err NWC24iOpenFriendList() {
    NWC24FLHeader* header = (NWC24FLHeader*)nwc24Work->flHead;
    Mail_memset(header, 0, sizeof(NWC24FLHeader));
    return GetCachedFLHeader(&header);
}

NWC24Err NWC24iInitFriendList(BOOL force) {
    NWC24Err result;
    NWC24FLHeader* header;

    result = NWC24iOpenFriendList();

    if (result == NWC24_OK && !force) {
        return result;
    }
    
    if (result == NWC24_ERR_VER_MISMATCH) {
        result = GetCachedFLHeader(&header);
        if (header->version > FRIEND_LIST_VERSION) {
            return result;
        }
    }

    result = NWC24iCreateFriendList();
    return result;
}

NWC24Err NWC24iCreateFriendList() {
    NWC24Err            result;
    NWC24Err            resultWrite;

    NWC24FLHeader*      header;
    NWC24FriendInfo*    tmpFriendInfo;

    NWC24File           file;
    u32                 i;

    header = (NWC24FLHeader*)nwc24Work->flHead;
    tmpFriendInfo = (NWC24FriendInfo*)nwc24Work->mainWork;

    Mail_memset(header, 0, sizeof(NWC24FLHeader));
    Mail_memset(tmpFriendInfo, 0, sizeof(NWC24FriendInfo));

    header->magic = FRIEND_LIST_MAGIC;
    header->version = FRIEND_LIST_VERSION;
    header->infoCount = NWC24_FRIEND_INFO_MAX;
    header->registeredCount = 0;
    header->unk_0x10[0] = 0;
    header->unk_0x10[1] = 0;
    header->unk_0x10[2] = 0;
    header->unk_0x10[3] = 0;

    result = NWC24FOpen(&file, FLFilePath, NWC24_OPEN_WRITE);
    if (result != NWC24_OK) {
        return result;
    }

    resultWrite = NWC24FWrite(header, sizeof(NWC24FLHeader), &file);
    if (resultWrite != NWC24_OK) {
        header->infoCount = 0;
    }

    for (i = 0; i < header->infoCount; i++) {
        resultWrite = NWC24FWrite(tmpFriendInfo, sizeof(NWC24FriendInfo), &file);
        if (resultWrite != NWC24_OK) {
            break;
        }
    }

    result = NWC24FClose(&file);
    if (resultWrite != NWC24_OK) {
        result = resultWrite;
    }

    if (result != NWC24_OK) {
        return result;
    }

    return NWC24_OK;
}

NWC24Err NWC24iReadFriendInfoRaw(NWC24FriendInfo* info, u32 index) {
    NWC24Err        result;
    NWC24Err        resultFile;

    NWC24FLHeader*  header;

    NWC24File       file;

    if (!NWC24IsMsgLibOpened() && !NWC24IsMsgLibOpenedByTool()) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    if ((u32)info & 31) {
        return NWC24_ERR_ALIGNMENT;
    }

    result = GetCachedFLHeader(&header);
    if (result != NWC24_OK) {
        return result;
    }

    if (index >= header->infoCount) {
        return NWC24_ERR_INVALID_VALUE;
    }

    if (header->friendIds[index] == 0) {
        return NWC24_ERR_NULL;
    }

    result = NWC24FOpen(&file, FLFilePath, NWC24_OPEN_NAND_RBUFF);
    if (result != NWC24_OK) {
        return result;
    }

    NWC24FSeek(&file, (index * sizeof(NWC24FriendInfo)) + sizeof(NWC24FLHeader), NWC24_SEEK_BEG);

    resultFile = NWC24FRead(info, sizeof(NWC24FriendInfo), &file);

    result = NWC24FClose(&file);
    if (resultFile != NWC24_OK) {
        result = resultFile;
    }

    if (result != NWC24_OK) {
        return result;
    }

    return NWC24_OK;
}

static NWC24Err GetCachedFLHeader(NWC24FLHeader** header) {
    NWC24Err    result;
    NWC24Err    resultRead;
    NWC24Err    resultClose;

    NWC24File   file;

    *header = (NWC24FLHeader*)nwc24Work->flHead;

    if ((*header)->magic != FRIEND_LIST_MAGIC) {
        result = NWC24FOpen(&file, FLFilePath, NWC24_OPEN_NAND_R);
        if (result != NWC24_OK) {
            return result;
        }

        NWC24FSeek(&file, 0, NWC24_SEEK_BEG);
        resultRead = NWC24FRead(*header, sizeof(NWC24FLHeader), &file);
        resultClose = NWC24FClose(&file);

        if (resultRead != NWC24_OK) {
            result = resultRead;
        }
        else {
            result = resultClose;
        }

        if (result != NWC24_OK) {
            return result;
        }

        if ((*header)->magic != FRIEND_LIST_MAGIC) {
            return NWC24_ERR_BROKEN;
        }

        if ((*header)->version != FRIEND_LIST_VERSION) {
            return NWC24_ERR_VER_MISMATCH;
        }
    }

    return NWC24_OK;
}

// Supposed to be a static declaration in NWC24CheckPublicMailAddr but VF's LTO just had to make it global.
const char g_SpecialsChars[11] = { '(', ')', '<', '>', '[', ']', ':', ';', '\\', ',', '"' };

NWC24Err NWC24CheckFriendInfo(const NWC24FriendInfo* friendInfo) {
    NWC24Err result;

    if (friendInfo == NULL) {
        return NWC24_ERR_NULL;
    }
    
    if (friendInfo->attr.type != NWC24_FRIENDTYPE_WII) {
        if (friendInfo->attr.type == NWC24_FRIENDTYPE_EMAIL) {
            result = NWC24CheckPublicMailAddr(friendInfo->addr.mailAddr);
            if (result != NWC24_OK) {
                return result;
            }
        }
        else {
            return NWC24_ERR_INVALID_VALUE;
        }
    }
    return NWC24_OK;
}

NWC24Err NWC24CheckPublicMailAddr(const char* addr) {
    int     i, j;
    int     len;
    BOOL    readingDomain;

    // static const char specials[] = { '(', ')', '<', '>', '[', ']', ':', ';', '\\', ',', '"' };

    // Check parameters
    if (addr == NULL) {
        return NWC24_ERR_NULL;
    }

    // Check address length
    len = STD_strnlen(addr, sizeof(NWC24UserMailAddr));
    if (len == (int)sizeof(NWC24UserMailAddr)) {
        return NWC24_ERR_STRING_END;
    }
    if (len == 0) {
        return NWC24_ERR_FORMAT;
    }

    readingDomain = FALSE;
    
    for (i = 0; i < len; i++) {
        char ch = addr[i];

        // If we found '@'
        if (ch == '@') {
            // If it was at the beginning of the address, invalid!
            if (i == 0) {
                return NWC24_ERR_FORMAT;
            }
            readingDomain = TRUE;
            break;
        }

        // If the character is not a letter or symbol, invalid!
        if (ch <= ' ' || ch >= '~'+1) {
            return NWC24_ERR_FORMAT;
        }

        // If the character is special, invalid!
        for (j = 0; j < sizeof(g_SpecialsChars); j++) {
            if (ch == g_SpecialsChars[j]) {
                return NWC24_ERR_FORMAT;
            }
        }
    }

    // If we are have not found '@', invalid!
    if (!readingDomain) {
        return NWC24_ERR_FORMAT;
    }

    // If the hostname is not valid, invalid!
    if (CheckHostName(&addr[i+1], (len - i)) < CHECK_HOSTNAME_SUCCESS) {
        return NWC24_ERR_FORMAT;
    }

    return Mail_strnicmp(&addr[i], NWC24GetAccountDomain(), (len - i)+1) == 0 ? NWC24_ERR_PROTECTED : NWC24_OK;
}

static ChkHostNameError CheckHostName(const char* hostName, u32 hostNameLength) {
    int     i;
    BOOL    foundDot;

    // Parameter check
    if (hostNameLength == 0) {
        return CHECK_HOSTNAME_BAD_LENGTH;
    }

    // Is null or empty check
    if (hostName == NULL) {
        return CHECK_HOSTNAME_IS_NULL;
    }
    if (*hostName == 0) {
        return CHECK_HOSTNAME_IS_EMPTY;
    }

    // Verify check
    if (*hostName == '.') {
        return CHECK_HOSTNAME_INCORRECT;
    }

    foundDot = FALSE;

    for (i = 0; i < hostNameLength; i++) {
        char ch = hostName[i];

        // Stop on NULL
        if (ch == 0) {
            break;
        }

        if (ch == '.') {
            // Check if we already found one again after the previous character.
            if (foundDot) {
                return CHECK_HOSTNAME_MULTIPLE_DOTS;
            }
            foundDot = TRUE;
            continue;
        }

        // Check if there are invalid characters
        if ((ch < '0' || ch > '9')
        && (ch < 'a' || ch > 'z') && (ch < 'A' || ch > 'Z')
        && (ch != '-' && ch != '_')) {
            return CHECK_HOSTNAME_INVALID_CHARACTERS;
        }

        foundDot = FALSE;
    }

    // Check if we are out of range
    if (i == hostNameLength) {
        return CHECK_HOSTNAME_OUT_OF_RANGE;
    }

    // Check if the end of hostname has a dot
    if (i > 0 && hostName[i-1] == '.') {
        return CHECK_HOSTNAME_DOT_AT_END;
    }

    return CHECK_HOSTNAME_SUCCESS;
}
