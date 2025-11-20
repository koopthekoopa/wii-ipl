#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_Debug.h>

#include <revolution/mem.h>
#include <revolution/os.h>

#include <string.h>

/* for Create ID */
#define LOWADDR     0
#define HIGHADDR    1

#define FLAG_NORMAL 31
#define FLAG_DSID   30
#define FLAG_TEMP   29

void RFLiInitDatabase(MEMiHeapHead* sysHeap) {
    RFLiDatabaseManager* manager = RFLiGetDBManager();

    RFLi_ASSERTLINE(manager != 0L /* NULL */, 61);

    manager->mDatabase = MEMAllocFromExpHeapEx(sysHeap, sizeof(RFLiDatabase), DEFAULT_ALIGN);
    manager->saveCallback = NULL;
    manager->formatCallback = NULL;
    manager->bootloadCallback = NULL;

    RFLiClearDBBuffer();
}

static void initBrokenDatabase_() {
    RFLiClearDBBuffer();
}

/********************/
/*     BOOT LOAD    */
/********************/

static void bootloadCheckCRCCb_(u32 crc) {
    RFLiDatabaseManager* manager = RFLiGetDBManager();

    if (crc != 0) {
        RFLiGetManager()->mLastErrcode = RFLErrcode_Loadfail;
        RFLiSetFileBroken(RFLiFileBrokenType_DBBroken);
    }
    else {
        RFLiGetManager()->mLastErrcode = RFLErrcode_Success;
    }

    RFLiCloseAsync(RFLiFileType_Database, manager->bootloadCallback);
}

static void bootloadDBcallback_() {
    RFLiDatabaseManager* manager = RFLiGetDBManager();

    switch (RFLGetAsyncStatus()) {
        case RFLErrcode_Success: {
            RFLiCheckHeaderCRCAsync(bootloadCheckCRCCb_);
            break;
        }
        case RFLErrcode_NANDCommandfail: {
            switch (RFLiGetLastReason()) {
                case NAND_RESULT_CORRUPT: {
                    RFLiSetFileBroken(RFLiFileBrokenType_Corrupt);
                    break;
                }
                case NAND_RESULT_ECC_CRIT:
                case NAND_RESULT_AUTHENTICATION:
                default: {
                    RFLiGetManager()->mLastErrcode = RFLErrcode_Loadfail;
                    RFLiSetFileBroken(RFLiFileBrokenType_DBBroken);
                    break;
                }
            }
            RFLiCloseAsync(RFLiFileType_Database, manager->bootloadCallback);
            break;
        }
        case RFLErrcode_NotAvailable:
        default: {
            RFLiSetFileBroken(RFLiFileBrokenType_DBBroken);
            RFLiCloseAsync(RFLiFileType_Database, manager->bootloadCallback);
            break;
        }
    }
}

static void bootloadDBopencallback_() {
    RFLiDatabaseManager* manager = RFLiGetDBManager();

    switch (RFLGetAsyncStatus()) {
        case RFLErrcode_Success: {
            {
                RFLErrcode err = RFLiReadAsync(RFLiFileType_Database, manager->mDatabase, sizeof(RFLiDatabase), bootloadDBcallback_, 0);
                switch (err) {
                    case RFLErrcode_Busy:
                    case RFLErrcode_Success: {
                        break;
                    }
                    default: {
                        if (manager->bootloadCallback != NULL) {
                            manager->bootloadCallback();
                        }
                        break;
                    }
                }
            }
            break;
        }
        case RFLErrcode_NANDCommandfail:
            switch (RFLiGetLastReason()) {
                case NAND_RESULT_NOEXISTS: {
                    RFLiSetFileBroken(RFLiFileBrokenType_DBNotFound);
                    RFLiGetManager()->mLastErrcode = RFLErrcode_Success;
                    if (manager->bootloadCallback != NULL) {
                        manager->bootloadCallback();
                    }
                    break;
                }
                case NAND_RESULT_CORRUPT: {
                    RFLiSetFileBroken(RFLiFileBrokenType_Corrupt);
                    break;
                }
                case NAND_RESULT_AUTHENTICATION:
                case NAND_RESULT_ECC_CRIT: {
                    RFLiSetFileBroken(RFLiFileBrokenType_DBBroken);
                    if (manager->bootloadCallback != NULL) {
                        manager->bootloadCallback();
                    }
                    break;
                }
                default: {
                    break;
                }
            }
            break;
        case RFLErrcode_NotAvailable:
        default: {
            break;
        }
    }
}

RFLErrcode RFLiBootLoadDatabaseAsync(RFLSimpleCB cb) {
    RFLErrcode err;
    RFLiDatabaseManager* manager;

    if (!RFLAvailable()) {
        return RFLErrcode_Fatal;
    }

    if (RFLiIsWorking()) {
        return RFLErrcode_Fatal;
    }

    manager = RFLiGetDBManager();
    if (manager == NULL) {
        return RFLErrcode_Fatal;
    }

    manager->bootloadCallback = cb;

    err = RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_READ, bootloadDBopencallback_);
    switch (err) {
        case RFLErrcode_Success:
        case RFLErrcode_Busy: {
            break;
        }
        case RFLErrcode_NANDCommandfail: {
            if (RFLiGetLastReason() == NAND_RESULT_NOEXISTS) {
                initBrokenDatabase_();

                RFLiGetManager()->mLastErrcode = RFLErrcode_Success;
                if (manager->bootloadCallback != NULL) {
                    manager->bootloadCallback();
                }
            }
            break;
        }
        default: {
            break;
        }
    }

    return RFLGetAsyncStatus();
}

/********************/
/*  SAVE DATABASE   */
/********************/

static void saveDBcallback_() {
    RFLiCloseAsync(RFLiFileType_Database, RFLiGetDBManager()->saveCallback);
}

RFLErrcode saveCore_(RFLSimpleCB cb) {
    RFLiDatabaseManager* manager = RFLiGetDBManager();
    return RFLiWriteAsync(RFLiFileType_Database, manager->mDatabase, sizeof(RFLiDatabase), cb, 0);
}

static void saveDBopencallback_() {
    RFLiDatabaseManager* manager = RFLiGetDBManager();

    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        switch (saveCore_(saveDBcallback_)) {
            case RFLErrcode_Success:
            case RFLErrcode_Busy: {
                break;
            }
            default: {
                RFLiCloseAsync(RFLiFileType_Database, NULL);
                break;
            }
        }
    }
}

static void saveDBmultiopencallback_() {
    RFLiDatabaseManager* manager = RFLiGetDBManager();

    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        switch (saveCore_(RFLiGetDBManager()->saveCallback)) {
            case RFLErrcode_Success:
            case RFLErrcode_Busy: {
                break;
            }
            default: {
                RFLiCloseAsync(RFLiFileType_Database, NULL);
                break;
            }
        }
    }
}

static void createCRCForSaveDBCallback_() {
    RFLiDatabaseManager* manager = RFLiGetDBManager();

    switch (manager->saveType) {
        case RFLiOpenType_Multi: {
            RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_WRITE, saveDBmultiopencallback_);
            break;
        }
        case RFLiOpenType_Single: {
            RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_WRITE, saveDBopencallback_);
            break;
        }
        case RFLiOpenType_Opened: {
            saveCore_(RFLiGetDBManager()->saveCallback);
            break;
        }
    }
}

static RFLErrcode saveDatabase_(RFLSimpleCB cb, RFLiOpenType type) {
    RFLiDatabaseManager* manager;

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    manager = RFLiGetDBManager();
    if (manager == NULL || !RFLiDBIsLoaded()) {
        return RFLErrcode_NotAvailable;
    }

    manager->saveCallback = cb;
    manager->saveType = type;

    RFLiCreateHeaderCRCAsync(createCRCForSaveDBCallback_);

    return RFLGetAsyncStatus();
}

RFLErrcode RFLiSaveDatabaseAsync(RFLSimpleCB cb) {
    return saveDatabase_(cb, RFLiOpenType_Single);
}

RFLErrcode RFLiSaveOpenedDatabaseAsync(RFLSimpleCB cb) {
    return saveDatabase_(cb, RFLiOpenType_Opened);
}

RFLErrcode RFLiSaveDatabase() {
    RFLiSaveDatabaseAsync(NULL);
    return RFLWaitAsync();
}

/********************/
/*  CHARACTER DATA  */
/********************/

RFLiCharData* RFLiGetCharData(u16 index) {
    RFLiDatabaseManager* manager;
    RFLiCharData* data;

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, 470);

    if (index >= RFL_MAX_DATABASE) {
        return NULL;
    }

    if (!RFLAvailable()) {
        return NULL;
    }

    manager = RFLiGetDBManager();
    if (manager == NULL || !RFLiDBIsLoaded()) {
        return NULL;
    }

    data = &manager->mDatabase->rawdata[index];
    if (!RFLiIsValidID((RFLCreateID*)&data->createID)) {
        return NULL;
    }

    {
        RFLiCharInfo info;

        RFLiConvertRaw2Info(data, &info);
        if (!RFLiCheckValidInfo(&info)) {
            return NULL;
        }

        if (!RFLiIsValidOnNAND(&info)) {
            return NULL;
    }
}

    return data;
}

static BOOL setCharInfo_(u16 index, const RFLiCharInfo* src) {
    RFLiDatabaseManager* manager;
    RFLiCharData* dst;
    RFLiCharData data;

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, 509);
    RFLi_ASSERTLINE_NULL(src, 510);

    if (index >= RFL_MAX_DATABASE) {
        return FALSE;
    }

    if (src == NULL) {
        return FALSE;
    }

    if (!RFLAvailable()) {
        return FALSE;
    }

    manager = RFLiGetDBManager();
    if (manager == NULL || !RFLiDBIsLoaded()) {
        return FALSE;
    }

    if (!RFLiIsMyHomeID((RFLCreateID*)&src->createID)) {
        ((RFLiCharInfo*)src)->personal.localonly = TRUE;
    }

    RFLiConvertInfo2Raw(src, &data);

    dst = &manager->mDatabase->rawdata[index];
    memcpy(dst, &data, sizeof(RFLiCharData));

    return TRUE;
}

BOOL RFLiClrCharInfo(u16 index, RFLiCharData* deleted) {
    RFLiDatabaseManager* manager;
    RFLiCharData* dst;

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, 549);

    if (index >= RFL_MAX_DATABASE) {
        return FALSE;
    }

    if (!RFLAvailable()) {
        return FALSE;
    }

    manager = RFLiGetDBManager();
    if (manager == NULL || !RFLiDBIsLoaded()) {
        return FALSE;
    }

    dst = &manager->mDatabase->rawdata[index];
    if (deleted != NULL) {
        memcpy(deleted, dst, sizeof(RFLiCharData));
    }
    memset(dst, 0, sizeof(RFLiCharData));

    return TRUE;
}

static void convertRaw2InfoCore_(const RFLiCharData* data, RFLiCharInfo* info) {
    /* FACELINE */
    info->faceline.type = data->faceType;
    info->faceline.color = data->faceColor;
    info->faceline.texture = data->faceTex;

    /* HAIR */
    info->hair.type = data->hairType;
    info->hair.color = data->hairColor;
    info->hair.flip = data->hairFlip;

    /* EYE */
    info->eye.type = data->eyeType;
    info->eye.color = data->eyeColor;
    info->eye.scale = data->eyeScale;
    info->eye.rotate = data->eyeRotate;
    info->eye.x = data->eyeX;
    info->eye.y = data->eyeY;

    /* EYEBROW */
    info->eyebrow.type = data->eyebrowType;
    info->eyebrow.color = data->eyebrowColor;
    info->eyebrow.scale = data->eyebrowScale;
    info->eyebrow.rotate = data->eyebrowRotate;
    info->eyebrow.x = data->eyebrowX;
    info->eyebrow.y = data->eyebrowY;

    /* NOSE */
    info->nose.type = data->noseType;
    info->nose.scale = data->noseScale;
    info->nose.y = data->noseY;

    /* MOUTH */
    info->mouth.type = data->mouthType;
    info->mouth.color = data->mouthColor;
    info->mouth.scale = data->mouthScale;
    info->mouth.y = data->mouthY;

    /* BEARD */
    info->beard.mustache = data->mustacheType;
    info->beard.type = data->beardType;
    info->beard.color = data->beardColor;
    info->beard.scale = data->beardScale;
    info->beard.y = data->beardY;

    /* GLASS */
    info->glass.type = data->glassType;
    info->glass.color = data->glassColor;
    info->glass.scale = data->glassScale;
    info->glass.y = data->glassY;

    /* MOLE */
    info->mole.type = data->moleType;
    info->mole.scale = data->moleScale;
    info->mole.x = data->moleX;
    info->mole.y = data->moleY;

    /* BODY */
    info->body.height = data->height;
    info->body.build = data->build;

    /* PERSONAL INFO */

    memcpy(info->personal.name, data->name, RFL_NAME_LENGTH * sizeof(u16));
    info->personal.name[RFL_NAME_LENGTH] = 0;

    memcpy(&info->createID, &data->createID, sizeof(RFLCreateID));

    info->personal.sex = data->sex;
    info->personal.birth_month = data->birth_month;
    info->personal.birth_day = data->birth_day;
    info->personal.favoriteColor = data->favoriteColor;
    info->personal.favorite = data->favorite;
    info->personal.localonly = data->localonly;
}

void RFLiConvertRaw2Info(const RFLiCharData* data, RFLiCharInfo* info) {
    convertRaw2InfoCore_(data, info);

    /* CREATOR NAME */
    memcpy(info->personal.creator, data->creatorName, RFL_NAME_LENGTH * sizeof(u16));
    info->personal.creator[RFL_NAME_LENGTH] = 0;
}

void RFLiConvertHRaw2Info(const RFLiHiddenCharData* data, RFLiCharInfo* info) {
    convertRaw2InfoCore_((RFLiCharData*)data, info);

    /* CREATOR NAME */
    memset(info->personal.creator, 0, RFL_NAME_LENGTH * sizeof(u16));
    info->personal.creator[RFL_NAME_LENGTH] = 0;

    /* NO BIRTHDAY */
    info->personal.birth_month = FALSE;
    info->personal.birth_day = FALSE;
}

static void convertInfo2RawCore_(const RFLiCharInfo* info, RFLiCharData* data) {
    /* FACELINE */
    data->faceType = info->faceline.type;
    data->faceColor = info->faceline.color;
    data->faceTex = info->faceline.texture;

    /* HAIR */
    data->hairType = info->hair.type;
    data->hairColor = info->hair.color;
    data->hairFlip = info->hair.flip;

    /* EYE */
    data->eyeType = info->eye.type;
    data->eyeColor = info->eye.color;
    data->eyeScale = info->eye.scale;
    data->eyeRotate = info->eye.rotate;
    data->eyeX = info->eye.x;
    data->eyeY = info->eye.y;

    /* EYEBROW */
    data->eyebrowType = info->eyebrow.type;
    data->eyebrowColor = info->eyebrow.color;
    data->eyebrowScale = info->eyebrow.scale;
    data->eyebrowRotate = info->eyebrow.rotate;
    data->eyebrowX = info->eyebrow.x;
    data->eyebrowY = info->eyebrow.y;

    /* NOSE*/
    data->noseType = info->nose.type;
    data->noseScale = info->nose.scale;
    data->noseY = info->nose.y;

    /* MOUTH */
    data->mouthType = info->mouth.type;
    data->mouthColor = info->mouth.color;
    data->mouthScale = info->mouth.scale;
    data->mouthY = info->mouth.y;

    /* BEARD */
    data->mustacheType = info->beard.mustache;
    data->beardType = info->beard.type;
    data->beardColor = info->beard.color;
    data->beardScale = info->beard.scale;
    data->beardY = info->beard.y;

    /* GLASS */
    data->glassType = info->glass.type;
    data->glassColor = info->glass.color;
    data->glassScale = info->glass.scale;
    data->glassY = info->glass.y;

    /* MOLE*/
    data->moleType = info->mole.type;
    data->moleScale = info->mole.scale;
    data->moleX = info->mole.x;
    data->moleY = info->mole.y;

    /* BODY */
    data->height = info->body.height;
    data->build = info->body.build;

    /* PERSONAL INFO */

    memcpy(data->name, info->personal.name, RFL_NAME_LENGTH * sizeof(u16));
    memcpy(&data->createID, &info->createID, sizeof(RFLCreateID));

    data->sex = info->personal.sex;
    data->birth_month = info->personal.birth_month;
    data->birth_day = info->personal.birth_day;
    data->favoriteColor = info->personal.favoriteColor;
    data->favorite = info->personal.favorite;
    data->localonly = info->personal.localonly;
}

void RFLiConvertInfo2Raw(const RFLiCharInfo* info, RFLiCharData* data) {
    convertInfo2RawCore_(info, data);

    /* CREATOR NAME */
    memcpy(data->creatorName, info->personal.creator, RFL_NAME_LENGTH * sizeof(u16));
}

void RFLiConvertInfo2HRaw(const RFLiCharInfo* info, RFLiHiddenCharData* data) {
    convertInfo2RawCore_(info, (RFLiCharData*)data);

    /* NO BIRTHDAY */
    data->birth_padding = 0;
}

void RFLiConvertHRaw2Raw(const RFLiHiddenCharData* hdata, RFLiCharData* data) {
    memset(data, 0, sizeof(RFLiCharData));
    memcpy(data, hdata, sizeof(RFLiHiddenCharData)-10);

    /* NO BIRTHDAY */
    data->birth_day = 0;
    data->birth_month = 0;
}

void RFLiConvertRaw2HRaw(const RFLiCharData* data, RFLiHiddenCharData* hdata) {
    memset(hdata, 0, sizeof(RFLiHiddenCharData));
    memcpy(hdata, data, sizeof(RFLiHiddenCharData)-10);

    /* NO BIRTHDAY */
    hdata->birth_padding = 0;
}

RFLErrcode RFLiGetCharRawData(RFLiCharData* data, u16 index) {
    const RFLiCharData* idata;

    RFLi_ASSERTLINE_NULL(data, 869);
    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, 870);

    if (data == NULL) {
        return RFLErrcode_WrongParam;
    }

    if (index >= RFL_MAX_DATABASE) {
        return RFLErrcode_WrongParam;
    }

    idata = RFLiGetCharData(index);
    if (idata == NULL) {
        return RFLErrcode_Broken;
    }

    memcpy(data, idata, sizeof(RFLiCharData));
    
    return RFLErrcode_Success;
}

RFLErrcode RFLiGetCharInfo(RFLiCharInfo* info, u16 index) {
    const RFLiCharData* data;

    RFLi_ASSERTLINE_NULL(info, 899);
    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, 900);

    if (info == NULL) {
        return RFLErrcode_WrongParam;
    }

    if (index >= RFL_MAX_DATABASE) {
        return RFLErrcode_WrongParam;
    }

    data = RFLiGetCharData(index);
    if (data == NULL) {
        return RFLErrcode_NotAvailable;
    }

    RFLiConvertRaw2Info(data, info);

    if (!RFLiCheckValidInfo(info)) {
        return RFLErrcode_Broken;
    }

    return RFLErrcode_Success;
}

BOOL RFLiSetCharInfo(const RFLiCharInfo* info, u16 index) {
    RFLi_ASSERTLINE_NULL(info, 929);
    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, 930);

    if (info == NULL) {
        return FALSE;
    }

    if (index >= RFL_MAX_DATABASE) {
        return FALSE;
    }

    if (setCharInfo_(index, info)) {
        RFLiDeleteHiddenDataID((RFLCreateID*)&info->createID);
        return TRUE;
    }
    else {
        return FALSE;
    }
}

static void saveToDeleteHiddenCallback_() {
    if (!RFLiUpdateOfficial2DeleteHidden((RFLCreateID*)&RFLiGetDBManager()->mDeleteTrg.createID)) {
        RFLiCloseAsync(RFLiFileType_Database, NULL);
    }
}

BOOL RFLiSetAndSaveCharInfoAsync(const RFLiCharInfo* info, u16 index) {
    BOOL ret = FALSE;

    RFLi_ASSERTLINE_NULL(info, 982);
    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, 983);

    if (info == NULL) {
        return FALSE;
    }

    if (index >= RFL_MAX_DATABASE) {
        return FALSE;
    }

    if (setCharInfo_(index, info)) {
        RFLiConvertInfo2Raw(info, &RFLiGetDBManager()->mSetTrg);

        switch (saveDatabase_(saveToDeleteHiddenCallback_, RFLiOpenType_Multi)) {
            case RFLErrcode_Success:
            case RFLErrcode_Busy: {
                ret = TRUE;
                break;
            }
            default: {
                break;
            }
        }
    }

    return ret;
}

BOOL RFLiDeleteCharForCtrlMode(u16 index) {
    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, 1013);

    if (index >= RFL_MAX_DATABASE) {
        return FALSE;
    }

    return RFLiClrCharInfo(index, NULL);
}

static void deleteSaveOfficial2HiddenCallback_() {
    RFLiDeleteSaveHiddenDataAsync(&RFLiGetDBManager()->mDeleteTrg);
}

BOOL RFLiDeleteAndSaveCharInfoAsync(u16 index) {
    RFLiCharData data;
    BOOL ret = FALSE;

    if (RFLiClrCharInfo(index, &data)) {
        switch (saveDatabase_(NULL, RFLiOpenType_Single)) {
            case RFLErrcode_Success:
            case RFLErrcode_Busy: {
                ret = TRUE;
                break;
            }
            default: {
                break;
            }
        }
    }

    return ret;
}

BOOL RFLIsAvailableOfficialData(u16 index) {
    const RFLiCharData* data;

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, 1083);

    if (index >= RFL_MAX_DATABASE) {
        return FALSE;
    }

    data = RFLiGetCharData(index);
    if (data == NULL) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

s32 RFLiGetMinimumBlankIndex() {
    s32 ret = -1;
    u16 i;

    for (i = 0; i < RFL_MAX_DATABASE; i++) {
        if (!RFLIsAvailableOfficialData(i)) {
            ret = i;
            break;
        }
    }

    return ret;
}

u16 RFLGetAvailableOfficialDataNum() {
    u16 ret = 0;
    u16 i;

    for (i = 0; i < RFL_MAX_DATABASE; i++) {
        if (RFLIsAvailableOfficialData(i)) {
            ret++;
        }
    }

    return ret;
}

/********************/
/*     CREATE ID    */
/********************/

static BOOL createLowAddr_(u32* dst) {
    const u8* addr = RFLiGetMacAddr();
    u32 ret = 0;
    int i;
    u8 sum = 0;
    BOOL isFirst = TRUE;

    // Nintendo's MAC Address identifier
    static const u8 scFirstMakerCode[RFL_MAC_ADDR_LENGTH/2] = { 0x00, 0x17, 0xAB };
    #define FIRST_MAKER_CODE_LEN    (int)(sizeof(scFirstMakerCode)/sizeof(scFirstMakerCode[0]))

    RFLi_ASSERTLINE_NULL(addr, 1162);

    if (addr == NULL) {
        return FALSE;
    }

    for (i = 0; i < FIRST_MAKER_CODE_LEN; i++) {
        if (scFirstMakerCode[i] != addr[i]) {
            isFirst = FALSE;
        }
        sum += addr[i];
    }

    if (!isFirst) {
        sum &= 0x7F /* (1 << 7) */;
    }

    ret = sum << 24;

    for (i = FIRST_MAKER_CODE_LEN; i < RFL_MAC_ADDR_LENGTH; i++) {
        ret |= addr[i] << ((5 - i) * 8);
    }

    dst[LOWADDR] = ret;

    return TRUE;
}

void RFLiSetCreateID(RFLiCharInfo* info, BOOL isSpecialData) {
    u32* dst = (u32*)&info->createID;
    u32 addr_low = 0;
    u32 date = 0;

    if (!createLowAddr_(&addr_low)) {
        dst[LOWADDR] = 0;
        dst[HIGHADDR] = 0;
        return;
    }

    {
        static const s64 scStartTime = 11505369649262175;

        s64 diff = OSGetTime() - scStartTime;
        date = OSTicksToSeconds(diff >> 2);
    }

    dst[LOWADDR] = date & 0x0FFFFFFF;
    dst[HIGHADDR] = addr_low;

    if (!isSpecialData) {
        dst[LOWADDR] |= (1 << FLAG_NORMAL);
    }
}

void RFLiSetTemporaryID(RFLiCharInfo* info) {
    u32* dst = (u32*)&info->createID;
    dst[LOWADDR] = (1 << FLAG_TEMP);
    dst[HIGHADDR] = 0;
}

BOOL RFLiIsSameID(const RFLCreateID* lhv, const RFLCreateID* rhv) {
    const u32* plhv = (u32*)lhv;
    const u32* prhv = (u32*)rhv;

    RFLi_ASSERTLINE_NULL(lhv, 1273);
    RFLi_ASSERTLINE_NULL(rhv, 1274);

    if (lhv == NULL) {
        return FALSE;
    }
    if (rhv == NULL) {
        return FALSE;
    }

    if (!RFLiIsValidID(lhv)) {
        return FALSE;
    }
    if (!RFLiIsValidID(rhv)) {
        return FALSE;
    }

    if (RFLiIsTemporaryID(lhv)) {
        return FALSE;
    }
    if (RFLiIsTemporaryID(rhv)) {
        return FALSE;
    }

    if (plhv[LOWADDR] != prhv[LOWADDR]) {
        return FALSE;
    }
    if (plhv[HIGHADDR] != prhv[HIGHADDR]) {
        return FALSE;
    }

    return TRUE;
}

BOOL RFLiIsMyHomeID(const RFLCreateID* id) {
    const u32* ptarg = (u32*)id;
    const u32* ptarg_low = (u32*)&ptarg[HIGHADDR];
    u32 addr;

    RFLi_ASSERTLINE_NULL(id, 1339);

    if (id == NULL) {
        return FALSE;
    }

    if (!RFLiIsValidID(id)) {
        return FALSE;
    }

    if (RFLiIsDSID(id)) {
        return FALSE;
    }

    if (!createLowAddr_(&addr)) {
        return FALSE;
    }

    if (*ptarg_low != addr) {
        return FALSE;
    }
    
    return TRUE;
}

BOOL RFLiIsValidID(const RFLCreateID* id) {
    const u32* ptr = (u32*)id;

    RFLi_ASSERTLINE_NULL(id, 1368);

    if (id == NULL) {
        return FALSE;
    }

    return ptr[LOWADDR] == 0 && ptr[HIGHADDR] == 0 ? FALSE : TRUE;
}

BOOL RFLiIsSpecialID(const RFLCreateID* id) {
    const u32* ptarg = (u32*)id;

    RFLi_ASSERTLINE_NULL(id, 1389);

    if (id == NULL) {
        return FALSE;
    }

    if (!RFLiIsValidID(id)) {
        return FALSE;
    }

    if (RFLiIsTemporaryID(id)) {
        return FALSE;
    }

    if ((ptarg[LOWADDR] & (1 << FLAG_NORMAL)) == 0) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

BOOL RFLiIsDSID(const RFLCreateID* id) {
    const u32* ptarg = (u32*)id;

    RFLi_ASSERTLINE_NULL(id, 1417);

    if (id == NULL) {
        return FALSE;
    }

    if (!RFLiIsValidID(id)) {
        return FALSE;
    }

    if (RFLiIsTemporaryID(id)) {
        return FALSE;
    }

    if ((ptarg[LOWADDR] & (1 << FLAG_DSID))) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

BOOL RFLiIsTemporaryID(const RFLCreateID* id) {
    const u32* ptarg = (u32*)id;

    RFLi_ASSERTLINE_NULL(id, 1445);

    if (id == NULL) {
        return FALSE;
    }

    if (!RFLiIsValidID(id)) {
        return FALSE;
    }

    if ((ptarg[LOWADDR] & (1 << FLAG_TEMP))) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

/********************/
/*      HEADER      */
/********************/

BOOL RFLSearchOfficialData(const RFLCreateID* id, u16* index) {
    u16 i;
    BOOL ret = FALSE;
    RFLiDatabaseManager* manager = NULL;
    RFLiCharData* head;

    RFLi_ASSERTLINE_NULL(id, 1476);

    if (id == NULL) {
        return FALSE;
    }

    if (!RFLAvailable()) {
        return FALSE;
    }

    manager = RFLiGetDBManager();
    if (manager == NULL) {
        return FALSE;
    }

    head = manager->mDatabase->rawdata;

    for (i = 0; i < RFL_MAX_DATABASE; i++) {
        if (RFLIsAvailableOfficialData(i) && RFLiIsSameID((RFLCreateID*)&head[i].createID, id)) {
            ret = TRUE;
            break;
        }
    }

    if (ret == TRUE && index != NULL) {
        *index = i;
    }

    return ret;
}

BOOL RFLiIsValidName(const RFLiCharData* data) {
    RFLi_ASSERTLINE_NULL(data, 1512);

    if (data == NULL) {
        return NULL;
    }

    return *data->name != NULL ? TRUE : FALSE;
}

BOOL RFLiIsValidName2(const RFLiCharInfo* info) {
    RFLiCharData data;

    RFLi_ASSERTLINE_NULL(info, 1533);

    if (info == NULL) {
        return NULL;
    }

    RFLiConvertInfo2Raw(info, &data);

    return RFLiIsValidName(&data);
}

BOOL RFLiGetIsolation() {
    if (!RFLiDBIsLoaded()) {
        return TRUE;
    }

    return RFLiGetDBManager()->mDatabase->isolation == TRUE ? TRUE : FALSE;
}

void RFLiSetIsolation(BOOL isolation) {
    if (RFLiDBIsLoaded()) {
        RFLiGetDBManager()->mDatabase->isolation = isolation ? TRUE : FALSE;
    }
}

RFLiHiddenDatabase* RFLiGetHiddenHeader() {
    if (!RFLiDBIsLoaded()) {
        return NULL;
    }

    return &RFLiGetDBManager()->mDatabase->hidden;
}

BOOL RFLiDBIsLoaded() {
    RFLiDatabaseManager* manager;

    if (!RFLAvailable()) {
        return FALSE;
    }

    manager = RFLiGetDBManager();
    if (manager == NULL) {
        return FALSE;
    }

    return !RFLiNeedRepairError() && !RFLiNotFoundError();
}

/********************/
/*    HEADER CRC    */
/********************/

u16 RFLiCalculateCRC(void* head, u32 size) {
    const u8* current = head;
    u32 count = 0;
    u16 crc = 0;

    static const u16 scGeneration = 0x1021;

    for (; count < size; count++) {
        u8 data = *current;
        int i;

        for (i = 0; i < 8; i++) {
            if ((crc & 0x8000)) {
                crc = crc << 1;
                crc ^= scGeneration;
            }
            else {
                crc <<= 1;
            }

            if ((data & 0x80)) {
                crc ^= 1;
            }

            data <<= 1;
        }

        current++;
    }

    return crc;
}

void RFLiCreateHeaderCRC() {
    RFLiDatabase* database = RFLiGetDBManager()->mDatabase;

    database->hidden.crc = 0;
    database->hidden.crc = RFLiCalculateCRC(database, sizeof(RFLiDatabase));
}

void alarmCreateCb_(OSAlarm* alarm, OSContext* context) {
    RFLiDatabaseManager* manager = RFLiGetDBManager();
    u8* current = manager->crcInfo.current;
    u32 count = manager->crcInfo.count;
    u16 crc = manager->crcInfo.crc;
    u32 size = manager->crcInfo.size;
    u32 curCount = 0;

    static const u16 scGeneration = 0x1021;
    static const u32 scOneCheckCount = 0x1400;

    while (count < size) {
        u8 data = *current;
        int i;
        
        if (curCount >= scOneCheckCount) {
            manager->crcInfo.current = current;
            manager->crcInfo.count = count;
            manager->crcInfo.crc = crc;

            OSCancelAlarm(&manager->crcInfo.alarm);
            OSSetAlarmUserData(&manager->crcInfo.alarm, &manager->crcInfo);
            OSSetAlarm(&manager->crcInfo.alarm, OSMillisecondsToTicks(19), alarmCreateCb_);

            return;
        }

        for (i = 0; i < 8; i++) {
            if ((crc & 0x8000)) {
                crc = crc << 1;
                crc ^= scGeneration;
            }
            else {
                crc <<= 1;
            }

            if ((data & 0x80)) {
                crc ^= 1;
            }

            data <<= 1;
        }

        current++;
        count++;
        curCount++;
    }

    OSCancelAlarm(&manager->crcInfo.alarm);
    manager->crcInfo.callback(crc);

    manager->mDatabase->hidden.crc = crc;
}

void RFLiCreateHeaderCRCAsync(RFLSimpleCBArg cb) {
    RFLiDatabaseManager* manager = RFLiGetDBManager();

    if (!RFLiIsWorking()) {
        RFLiStartWorking();
    }

    manager->mDatabase->hidden.crc = 0;

    manager->crcInfo.head = manager->mDatabase;
    manager->crcInfo.size = sizeof(RFLiDatabase);
    manager->crcInfo.current = manager->crcInfo.head;
    manager->crcInfo.count = 0;
    manager->crcInfo.crc = 0;
    manager->crcInfo.callback = cb;

    OSCancelAlarm(&manager->crcInfo.alarm);
    OSSetAlarmUserData(&manager->crcInfo.alarm, &manager->crcInfo);
    OSSetAlarm(&manager->crcInfo.alarm, OSMillisecondsToTicks(19), alarmCreateCb_);
}

BOOL RFLiCheckHeaderCRC() {
    RFLiDatabase* database = RFLiGetDBManager()->mDatabase;
    u16 crc = RFLiCalculateCRC(database, sizeof(RFLiDatabase));

    return crc == 0 ? TRUE : FALSE;
}

static void alarmCheckCb_(OSAlarm* alarm, OSContext* context) {
    RFLiDatabaseManager* manager = RFLiGetDBManager();
    u8* current = manager->crcInfo.current;
    u32 count = manager->crcInfo.count;
    u16 crc = manager->crcInfo.crc;
    u32 size = manager->crcInfo.size;
    u32 curCount = 0;

    static const u16 scGeneration = 0x1021;
    static const u32 scOneCheckCount = 0x1400;

    while (count < size) {
        u8 data = *current;
        int i;
        
        if (curCount >= scOneCheckCount) {
            manager->crcInfo.current = current;
            manager->crcInfo.count = count;
            manager->crcInfo.crc = crc;

            OSCancelAlarm(&manager->crcInfo.alarm);
            OSSetAlarmUserData(&manager->crcInfo.alarm, &manager->crcInfo);
            OSSetAlarm(&manager->crcInfo.alarm, OSMillisecondsToTicks(19), alarmCheckCb_);

            return;
        }

        for (i = 0; i < 8; i++) {
            if ((crc & 0x8000)) {
                crc = crc << 1;
                crc ^= scGeneration;
            }
            else {
                crc <<= 1;
            }

            if ((data & 0x80)) {
                crc ^= 1;
            }

            data <<= 1;
        }

        current++;
        count++;
        curCount++;
    }

    OSCancelAlarm(&manager->crcInfo.alarm);
    manager->crcInfo.callback(crc);
}

void RFLiCheckHeaderCRCAsync(RFLSimpleCBArg cb) {
    RFLiDatabaseManager* manager = RFLiGetDBManager();

    if (!RFLiIsWorking()) {
        RFLiStartWorking();
    }

    manager->crcInfo.head = manager->mDatabase;
    manager->crcInfo.size = sizeof(RFLiDatabase);
    manager->crcInfo.current = manager->crcInfo.head;
    manager->crcInfo.count = 0;
    manager->crcInfo.crc = 0;
    manager->crcInfo.callback = cb;

    OSCancelAlarm(&manager->crcInfo.alarm);
    OSSetAlarmUserData(&manager->crcInfo.alarm, &manager->crcInfo);
    OSSetAlarm(&manager->crcInfo.alarm, OSMillisecondsToTicks(19), alarmCheckCb_);
}

/********************/
/*    STORE DATA    */
/********************/

RFLErrcode RFLGetStoreData(RFLStoreData* data, RFLDataSource source, u16 index) {
    RFLiStoreData storedata;
    const RFLiCharData* rawdata;

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    switch (source) {
        case RFLDataSource_Official: {
            RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, 1950);

            if (index >= RFL_MAX_DATABASE) {
                return RFLErrcode_WrongParam;
            }

            rawdata = RFLiGetCharData(index);

            break;
        }
        case RFLDataSource_Default: {
            RFLi_ASSERTLINE_RANGE(index, 0, RFL_DEFAULT_DATA_MAX, 1955);

            if (index >= RFL_DEFAULT_DATA_MAX) {
                return RFLErrcode_WrongParam;
            }

            rawdata = RFLiGetDefaultDataPtr(index);

            break;
        }
        default: {
            rawdata = NULL;
        }
    }

    if (rawdata == NULL) {
        return RFLErrcode_DBNodata; 
    }

    memcpy(&storedata, rawdata, sizeof(RFLiCharData));
    storedata.crc = 0;
    storedata.crc = RFLiCalculateCRC(&storedata, sizeof(RFLiStoreData));

    memcpy(data, &storedata, sizeof(RFLStoreData));

    return RFLErrcode_Success;
}
