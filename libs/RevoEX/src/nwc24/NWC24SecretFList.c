#include <revolution/nwc24.h>
#include <private/nwc24.h>

#define SECRET_FRIEND_LIST_MAGIC    'WcFs'
#define SECRET_FRIEND_LIST_VERSION  2

static const char* FLFilePath = "/shared2/wc24/nwc24fls.bin";

static NWC24Err GetCachedSecretFLHeader(NWC24SecretFLHeader** header);

NWC24Err NWC24iOpenSecretFriendList() {
    NWC24SecretFLHeader* header = (NWC24SecretFLHeader*)nwc24Work->secretFlHead;
    Mail_memset(header, 0, sizeof(NWC24SecretFLHeader));

    return GetCachedSecretFLHeader(&header);
}

NWC24Err NWC24iInitSecretFriendList(BOOL force) {
    NWC24Err result;
    NWC24SecretFLHeader* header;

    result = NWC24iOpenSecretFriendList();

    if (result == NWC24_OK && !force) {
        return result;
    }
    
    if (result == NWC24_ERR_VER_MISMATCH) {
        result = GetCachedSecretFLHeader(&header);
        if (header->version > SECRET_FRIEND_LIST_VERSION) {
            return result;
        }
    }

    result = NWC24iCreateSecretFriendList();
    return result;
}

NWC24Err NWC24iCreateSecretFriendList() {
    NWC24Err                result;
    NWC24Err                resultWrite;

    NWC24SecretFLHeader*    header;
    NWC24SecretFriendInfo*  tmpFriendInfo;

    NWC24File               file;
    u32                     i;

    header = (NWC24SecretFLHeader*)nwc24Work->secretFlHead;
    Mail_memset(header, 0, sizeof(NWC24SecretFLHeader));

    tmpFriendInfo = (NWC24SecretFriendInfo*)nwc24Work->mainWork;
    Mail_memset(tmpFriendInfo, 0, sizeof(NWC24SecretFriendInfo));

    header->magic = SECRET_FRIEND_LIST_MAGIC;
    header->version = SECRET_FRIEND_LIST_VERSION;
    header->infoCount = 336;
    header->unk_0x0C = 0;

    result = NWC24FOpen(&file, FLFilePath, NWC24_OPEN_WRITE);
    if (result != NWC24_OK) {
        return result;
    }

    resultWrite = NWC24FWrite(header, sizeof(NWC24SecretFLHeader), &file);
    if (resultWrite != NWC24_OK) {
        header->infoCount = 0;
    }

    for (i = 0; i < header->infoCount; i++) {
        resultWrite = NWC24FWrite(tmpFriendInfo, sizeof(NWC24SecretFriendInfo), &file);
        if (resultWrite != NWC24_OK) {
            break;
        }
    }

    result = NWC24FClose(&file);
    if (resultWrite != NWC24_OK) {
        return resultWrite;
    }

    return result;
}

static NWC24Err GetCachedSecretFLHeader(NWC24SecretFLHeader** header) {
    NWC24Err    result;
    NWC24Err    resultRead;
    NWC24Err    resultClose;

    NWC24File   file;

    *header = (NWC24SecretFLHeader*)nwc24Work->secretFlHead;

    if ((*header)->magic != SECRET_FRIEND_LIST_MAGIC) {
        result = NWC24FOpen(&file, FLFilePath, NWC24_OPEN_NAND_R);
        if (result != NWC24_OK) {
            return result;
        }

        NWC24FSeek(&file, 0, NWC24_SEEK_BEG);
        resultRead = NWC24FRead(*header, sizeof(NWC24SecretFLHeader), &file);
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

        if ((*header)->magic != SECRET_FRIEND_LIST_MAGIC) {
            return NWC24_ERR_BROKEN;
        }

        if ((*header)->version != SECRET_FRIEND_LIST_VERSION) {
            return NWC24_ERR_VER_MISMATCH;
        }
    }

    return NWC24_OK;
}
