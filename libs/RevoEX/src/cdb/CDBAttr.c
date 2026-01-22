#include <revolution/cdb.h>
#include <private/cdb.h>

#include <stddef.h>
#include <string.h>
#include <stdbool.h>

extern CDBErr   GenCDBIdNumber(u32* cdbIDNum);

static char     CDB_ATTR_MAGIC[] = "CDBFILE";
static const u8 CDB_ATTR_VERSION = 2;

static u32  s_seed = 0;

u32 CDBAttrGetDescOffset(CDBAttr* attr) {
    return attr->buf.version == 1 ? 0x0D : offsetof(CDBAttrBuf, descLength);
}

CDBErr CDBAttrCheckAttrBuf(CDBAttr* attr) {
    int descOffset;
    u32 i;
    bool nullTerminated;

    u8 descLength;

    for (i = 0; i < CDB_ATTR_BUF_MAGIC_LEN; i++) {
        if (CDB_ATTR_MAGIC[i] != attr->buf.magic[i]) {
            return CDB_ERROR_INVALID_ATTR_BUF;
        }
    }

    if (attr->buf.version > 2) {
        return CDB_ERROR_INVALID_ATTR_BUF;
    }

    memcpy(&descLength, (u8*)&attr->buf + CDBAttrGetDescOffset(attr), sizeof(u8));

    if (descLength > CDB_ATTR_BUF_MAX_DESC_LEN) {
        return CDB_ERROR_INVALID_ATTR_BUF;
    }

    nullTerminated = false;
    for (i = 0; i < descLength; i++) {
        if (attr->buf.desc[i] == 0) {
            nullTerminated = true;
            break;
        }
    }

    if (!nullTerminated) {
        return CDB_ERROR_INVALID_ATTR_BUF;
    }

    return CDB_ERROR_OK;
}

void CDBAttrInit(CDBAttr* attr) {
    memset(&attr->buf, 0, sizeof(CDBAttrBuf));
    attr->unk_0x408 = FALSE;
    attr->unk_0x400 = FALSE;
    attr->unk_0x404 = FALSE;
}

CDBErr CDBAttrCreateOnNAND(CDBAttr* attr, const char* desc, u32 lastModifiedDate) {
    CDBErr  err;
    u32     descStrLen;
    u32     cdbNum;

    u8      attrDescLength;
    u32     attrLastModifiedDate;
    u32     attrModifiedCount;
    u32     attrCdbIDNum;

    u64     attrWiiID;

    CDBAttrInit(attr);

    memcpy(&attr->buf.magic, CDB_ATTR_MAGIC, sizeof(CDB_ATTR_MAGIC)-1);
    memcpy(&attr->buf.version, &CDB_ATTR_VERSION, sizeof(CDB_ATTR_VERSION));

    descStrLen = strlen(desc)+1;

    if (descStrLen >= CDB_ATTR_BUF_MAX_DESC_LEN) {
        err = CDB_ERROR_16;
    }
    else {
        attrDescLength = descStrLen;

        memcpy((u8*)&attr->buf + CDBAttrGetDescOffset(attr), &attrDescLength, sizeof(u8));
        memcpy((u8*)&attr->buf.desc, desc, descStrLen);

        err = CDB_ERROR_OK;

        attr->unk_0x400 = TRUE;
    }

    if (err != CDB_ERROR_OK) {
        return err;
    }

    attrLastModifiedDate = lastModifiedDate;
    memcpy(&attr->buf.lastModifiedDate, &attrLastModifiedDate, sizeof(u32));
    attr->unk_0x400 = TRUE;

    attrModifiedCount = 0;
    memcpy(&attr->buf.cdbID.modifiedCount, &attrModifiedCount, sizeof(u32));
    attr->unk_0x400 = TRUE;

    GenCDBIdNumber(&cdbNum);
    attrCdbIDNum = cdbNum;
    memcpy(&attr->buf.cdbID.num, &attrCdbIDNum, sizeof(u32));

    attrWiiID = CDBGetWiiId();
    memcpy(&attr->buf.wiiId, &attrWiiID, sizeof(u64));
    attr->unk_0x408 = TRUE;

    err = CDB_ERROR_OK;

    attr->unk_0x400 = TRUE;
    attr->unk_0x404 = TRUE;

    return err;
}

CDBErr CDBAttrSetModifiedDate(CDBAttr* attr, u32 modifiedDate) {
    u32 value = modifiedDate;
    memcpy(&attr->buf.lastModifiedDate, &value, sizeof(u32));
    attr->unk_0x400 = TRUE;

    return CDB_ERROR_OK;
}

CDBErr CDBAttrSetModifiedCount(CDBAttr* attr, u32 modifiedCount) {
    u32 value = modifiedCount;
    memcpy(&attr->buf.cdbID.modifiedCount, &value, sizeof(u32));
    attr->unk_0x400 = TRUE;

    return CDB_ERROR_OK;
}

CDBErr CDBAttrGetModifiedCount(CDBAttr* attr, u32* modifiedCount) {
    memcpy(modifiedCount, &attr->buf.cdbID.modifiedCount, sizeof(u32));

    return CDB_ERROR_OK;
}

CDBErr CDBAttrGetIDNumber(CDBAttr* attr, CDBId* cdbID) {
    memcpy(cdbID, &attr->buf.cdbID.num, sizeof(u32));

    return CDB_ERROR_OK;
}

CDBErr CDBAttrSetWiiId(CDBAttr* attr, u64 wiiId) {
    u64 value = wiiId;
    memcpy(&attr->buf.wiiId, &value, sizeof(u64));
    attr->unk_0x404 = TRUE;

    return CDB_ERROR_OK;
}

void CDBAttrSetKeyStr(CDBAttr* attr, CDBRecordKey* recordKey) {
    if (CDBRecordKeyIsValid(recordKey)) {
        memset(attr->buf.keyString, 0, CDB_ATTR_BUF_KEY_STRING_LEN);
        CDBRecordKeyGetKeyStr(recordKey, attr->buf.keyString);
    }
    else {
        CDBReportError("CDBAttrSetKeyStr : invalid CDBRecordKey\n");
    }
}

void CDBAttrGetKeyStr(CDBAttr* attr, char* keyString) {
    memcpy(keyString, attr->buf.keyString, CDB_ATTR_BUF_KEY_STRING_LEN);
}

u32 CDBAttrSetIV(CDBAttr* attr, u32 seed);

void CDBAttrInitIV(CDBAttr* attr) {
    int i, j;
    u32 seed;

    if (s_seed == 0) {
        s_seed = OSGetTick();
    }

    s_seed = CDBAttrSetIV(attr, s_seed);
}

u32 CDBAttrSetIV(CDBAttr* attr, u32 seed) {
    int i, j;
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 8; j++) {
            seed = 1566083941 * seed + 2531011;
            attr->buf.iv[(i * 8) + j] = (s8)(seed >> 16);
        }
    }
    return seed;
}

void CDBAttrGetIV(CDBAttr* attr, u8* iv) {
    int i, j;
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 8; j++) {
            iv[(i*8)+j] = attr->buf.iv[(i * 8) + j];
        }
    }
}

void CDBAttrGetSignature(CDBAttr* attr, CDBAttrSignature* signature) {
    memcpy(signature, &attr->buf.signature, sizeof(CDBAttrSignature));
}

void CDBAttrClearSignature(CDBAttr* attr) {
    memset(&attr->buf.signature, 0, sizeof(CDBAttrSignature));
}

void CDBAttrSetFileSize(CDBAttr* attr, u32 fileSize) {
    u32 value = fileSize;
    memcpy(&attr->buf.fileSize, &value, sizeof(u32));
}

void CDBAttrGetFileSize(CDBAttr* attr, u32* fileSize) {
    memcpy(fileSize, &attr->buf.fileSize, sizeof(u32));
}
