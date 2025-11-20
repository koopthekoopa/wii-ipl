#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_Debug.h>

#include <revolution/os.h>

#include <string.h>

u32 RFLGetMiddleDBBufferSize(u16 size) {
    return size * sizeof(RFLiHiddenCharData);
}

typedef struct {
    u8 sex;         // 0x00
    u8 age;         // 0x01
    u8 race;        // 0x02
    u8 padding;     // 0x03
} RFL_RANDOM_PARAM;

typedef struct {
    s32 sex : 2;        // 0x00
    s32 srcIdx : 15;    // 0x00
    s32 dstIdx : 15;    // 0x00
} RFL_NEW_OLD_PARAM;

typedef struct {
    u16 dstIdx;     // 0x00
    u8  sex;        // 0x02
    u8  padding;    // 0x03
} RFL_HIDDEN_RANDOM_PARAM;

typedef struct {
    s16 lastSrcIdx; // 0x00
    u16 padding;    // 0x02
} RFL_DEST_PARAM; // I guess

void RFLInitMiddleDB(RFLMiddleDatabase* db, RFLMiddleDBType type, void* buffer, u16 size) {
    RFLiMiddleDB* idb = (RFLiMiddleDB*)db;

    RFLi_ASSERTLINE_NULL(db, 87);
    RFLi_ASSERTLINE_NULL(buffer, 88);

    if (db != NULL && buffer != NULL) {
        idb->type = type;
        idb->callback = NULL;
        idb->size = size;
        idb->data = buffer;
        idb->storedSize = 0;
        idb->userdata1 = 0;
        idb->userdata2 = 0;

        switch (type) {
            case RFLMiddleDBType_Random: {
                RFL_RANDOM_PARAM* mask = (RFL_RANDOM_PARAM*)&idb->userdata1;

                RFLi_ASSERTLINE(size <= (100) /*RFL_MAX_DATABASE*/, 106);
                if (size > RFL_MAX_DATABASE) {
                    return;
                }

                mask->sex = RFLSex_All;
                mask->age = RFLAge_All;
                mask->race = RFLRace_All;
                break;
            }
            case RFLMiddleDBType_HiddenNewer:
            case RFLMiddleDBType_HiddenOlder: {
                RFL_NEW_OLD_PARAM* param = (RFL_NEW_OLD_PARAM*)&idb->userdata1;

                RFLi_ASSERTLINE(size <= (10000) /*RFL_MAX_HIDDEN_DB*/, 120);
                if (size > RFL_MAX_HIDDEN_DB) {
                    return;
                }

                param->srcIdx = -1;
                param->dstIdx = 0;
                break;
            }
            case RFLMiddleDBType_HiddenRandom: {
                RFL_HIDDEN_RANDOM_PARAM* param = (RFL_HIDDEN_RANDOM_PARAM*)&idb->userdata1;

                param->sex = RFLSex_All;
                param->dstIdx = 0;
            }
            default: {
                break;
            }
        }

        memset(idb->data, 0, RFLGetMiddleDBBufferSize(idb->size));
    }
}

static BOOL checkHiddenData_(RFLiHiddenCharData* data) {
    RFLiCharInfo info;

    if (!RFLiIsValidID((RFLCreateID*)&data->createID)) {
        return FALSE;
    }

    RFLiConvertHRaw2Info(data, &info);

    if (RFLiCheckValidInfo(&info) == FALSE) {
        return FALSE;
    }

    return TRUE;
}

static void updateHDBcallback_(u32 arg) {
    RFLiMiddleDB* db = (RFLiMiddleDB*)arg;
    RFL_NEW_OLD_PARAM* param = (RFL_NEW_OLD_PARAM*)&db->userdata1;
    
    if (RFLGetAsyncStatus() == RFLErrcode_Success || RFLGetAsyncStatus() == RFLErrcode_Broken) {
        s16 src = -1;

#if RFL_BUILD >= 20080306
        BOOL bFind;
        RFLiDatabaseManager* manager = RFLiGetDBManager();
        do {
            bFind = FALSE;
#endif
            if (db->type == RFLMiddleDBType_HiddenOlder) {
                src = RFLiGetHiddenNext(param->srcIdx);
            }
            else {
                src = RFLiGetHiddenPrev(param->srcIdx);
            }
#if RFL_BUILD >= 20080306
            if (src != -1 && (param->sex == RFLSex_All || param->sex == manager->mDatabase->hidden.data[src].sex)) {
                bFind = TRUE;
            }
        } while (src != -1 && !bFind);
#endif

        if (RFLGetAsyncStatus() != RFLErrcode_Broken && checkHiddenData_(&db->data[db->storedSize])) {
            db->storedSize++;
        }

        param->dstIdx++;

        if (src >= 0 && param->dstIdx < db->size) {
            RFLErrcode err;
            param->srcIdx = (u16)src;

            err = RFLiLoadHiddenDataAsync(&db->data[db->storedSize], param->srcIdx, updateHDBcallback_, (u32)db);
            if (err != RFLErrcode_Busy) {
                RFLiEndWorking(err);
            }
        }
        else {
            RFLiGetManager()->mLastErrcode = db->storedSize < db->size ? RFLErrcode_DBNodata : RFLErrcode_Success;
        }
    }

    if (!RFLiIsWorking()) {
        if (RFLGetAsyncStatus() == RFLErrcode_NANDCommandfail && RFLGetLastReason() == NAND_RESULT_BUSY) {
            RFL_DEST_PARAM* param2 = (RFL_DEST_PARAM*)&db->userdata2;
            param->srcIdx = param2->lastSrcIdx;
            db->storedSize = 0;
            param->dstIdx = 0;
        }

        if (db->callback != NULL) {
            db->callback();
        }
    }
}

static s16 stepOne_(s16 srcIdx, BOOL oldIsHead) {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();
    s16 ret = -1;

    if (oldIsHead) {
        if (srcIdx < 0) {
            ret = RFLiGetHiddenHeader()->head;
        }
        else {
            ret = RFLiGetHiddenNext(srcIdx);
        }
    }
    else {
        if (srcIdx < 0) {
            ret = RFLiGetHiddenHeader()->tail;
        }
        else {
            ret = RFLiGetHiddenPrev(srcIdx);
        }
    }

    return ret;
}

static void loadHiddenDataSync_(RFLiMiddleDB* db) {
    s16 src = -1;
    BOOL running = TRUE;
    RFL_NEW_OLD_PARAM* param = (RFL_NEW_OLD_PARAM*)&db->userdata1;

    while (running) {
        RFLiLoadCachedHiddenData(&db->data[db->storedSize], param->srcIdx);
        if (db->type == RFLMiddleDBType_HiddenOlder) {
            src = RFLiGetHiddenNext(param->srcIdx);
        }
        else {
            src = RFLiGetHiddenPrev(param->srcIdx);
        }

        if (checkHiddenData_(&db->data[db->storedSize])) {
            db->storedSize++;
        }

        param->dstIdx++;

        if (src >= 0 && param->dstIdx < db->size) {
            param->srcIdx = (u16)src;
        }
        else {
            running = FALSE;
        }
    }

    RFLiEndWorking(param->srcIdx == -1 ? RFLErrcode_DBNodata : RFLErrcode_Success);
}

static void updateHiddenOld_(RFLiMiddleDB* db, BOOL oldIsHead, BOOL use_cache) {
    RFL_NEW_OLD_PARAM* param = (RFL_NEW_OLD_PARAM*)&db->userdata1;

    if (!RFLiDBIsLoaded()) {
        RFLiEndWorking(RFLErrcode_DBNodata);
        return;
    }

    if (db->data == NULL || db->size == 0 || !RFLiDBIsLoaded()) {
        RFLiEndWorking(RFLErrcode_NotAvailable);
        return;
    }

    {
        s16 src = -1;

#if RFL_BUILD >= 20080306
        BOOL bFind;
        RFLiDatabaseManager* manager = RFLiGetDBManager();
        do {
            bFind = FALSE;
            src = stepOne_(src, oldIsHead);
            if (src != -1 && (param->sex == RFLSex_All || param->sex == manager->mDatabase->hidden.data[src].sex)) {
                bFind = TRUE;
            }
        } while (src != -1 && !bFind);
#else
        src = stepOne_(param->srcIdx, oldIsHead);
#endif

        if (src >= 0) {
            param->srcIdx = src;

            if (use_cache) {
                loadHiddenDataSync_(db);
                return;
            }
            else {
                RFLErrcode err = RFLiLoadHiddenDataAsync(&db->data[param->dstIdx], param->srcIdx, updateHDBcallback_, (u32)db); // r25
                if (err != RFLErrcode_Busy) {
                    RFLiEndWorking(err);
                }
                return;
            }
        }

        RFLiEndWorking(RFLErrcode_DBNodata);
    }
}

static void loadHiddenRandomSync_(RFLiMiddleDB* db) {
    BOOL running = TRUE;
    RFL_HIDDEN_RANDOM_PARAM* param = (RFL_HIDDEN_RANDOM_PARAM*)&db->userdata1;

    while (running) {
        u32 src = *(u32*)&db->data[param->dstIdx];
        if (src != 0) {
            u16 srcIdx = src-1;
            RFLiLoadCachedHiddenData(&db->data[db->storedSize], srcIdx);

            if (checkHiddenData_((RFLiHiddenCharData*)&db->data[db->storedSize])) {
                db->storedSize++;
            }

            param->dstIdx++;

            if (src > 0 && param->dstIdx < db->size) {
                RFLi_ASSERTLINE_RANGE(src, 0, RFL_MAX_HIDDEN_DB, 397);
                if (src >= RFL_MAX_HIDDEN_DB) {
                    running = FALSE;
                }
            }
            else {
                running = FALSE;
            }
        }
        else {
            running = FALSE;
        }
    }

    RFLiGetManager()->mLastErrcode = db->storedSize < db->size ? RFLErrcode_DBNodata : RFLErrcode_Success;
}

static void updateHDBRandcallback_(u32 arg ) {
    RFLiMiddleDB* db = (RFLiMiddleDB*)arg;
    RFL_HIDDEN_RANDOM_PARAM* param = (RFL_HIDDEN_RANDOM_PARAM*)&db->userdata1;

    if (RFLGetAsyncStatus() == RFLErrcode_Success || RFLGetAsyncStatus() == RFLErrcode_Broken) {
        u32* src;

        if (RFLGetAsyncStatus() != RFLErrcode_Broken && checkHiddenData_(&db->data[db->storedSize])) {
            db->storedSize++;
        }

        param->dstIdx++;
        src = (u32*)&db->data[param->dstIdx];

        if (*src > 0 && param->dstIdx < db->size) {
            RFLErrcode err;

            RFLi_ASSERTLINE_RANGE(*src, 0, RFL_MAX_HIDDEN_DB, 443);
            
            if (*src < RFL_MAX_HIDDEN_DB) {
                u16 srcIdx = *src-1;
                err = RFLiLoadHiddenDataAsync(&db->data[db->storedSize], srcIdx, updateHDBRandcallback_, (u32)db);

                if (err != RFLErrcode_Busy) {
                    RFLiEndWorking(err);
                }
            }
            else {
                RFLiGetManager()->mLastErrcode = RFLErrcode_Broken;
            }
        }
        else {
            RFLiGetManager()->mLastErrcode = db->storedSize < db->size ? RFLErrcode_DBNodata : RFLErrcode_Success;
        }
    }

    if (!RFLiIsWorking() && db->callback != NULL) {
        if (RFLGetAsyncStatus() == RFLErrcode_NANDCommandfail && RFLGetLastReason() == NAND_RESULT_BUSY) {
            db->storedSize = 0;
            param->dstIdx = 0;
        }

        db->callback();
    }
}

static void updateHiddenRandom_(RFLiMiddleDB* db, BOOL use_cache) {
    RFLSex sex = (RFLSex)((RFL_HIDDEN_RANDOM_PARAM*)&db->userdata1)->sex;
    u16 count;
    u16 max = db->size;
    u16* array;
    u16 aidx;
    u16 i;
    u32 rand = OSGetTick();

    RFLiStartWorking();

    if (!RFLiDBIsLoaded()) {
        RFLiEndWorking(RFLErrcode_DBNodata);
        return;
    }

    count = RFLiCountupHiddenDataNum(sex);

    if (count == 0) {
        RFLiEndWorking(RFLErrcode_DBNodata);
        return;
    }

    if (count < db->size) {
        max = count;
    }

    array = RFLiAlloc(count * sizeof(*array));
    if (array == NULL) {
        RFLiEndWorking(RFLErrcode_Fatal);
        return;
    }

    aidx = 0;
    for (i = 0; i < RFL_MAX_HIDDEN_DB; i++) {
        if (RFLiIsValidHiddenData(i, sex)) {
            array[aidx] = i;
            aidx++;
        }
    }

    RFLi_ASSERTLINE(aidx == count, 514);

    for (i = 0; i < (count-1); i++) {
        u16 tmp;
        u16 target;

        target = (((rand >> 0x10) + rand) & 0xFFFF) % (count-1);
        if (target >= i) {
            target++;
        }

        tmp = array[target];
        array[target] = array[i];
        array[i] = tmp;

        rand = 0x04F8BB63 * (rand + 0x046AC055);
    }

    for (i = 0; i < max; i++) {
        u32* src = (u32*)&db->data[i];
        *src = array[i] + 1;
    }

    RFLiFree(array);

    {
        RFL_HIDDEN_RANDOM_PARAM* param = (RFL_HIDDEN_RANDOM_PARAM*)&db->userdata1;
        u16 srcIdx = 0;
        u32* src = (u32*)&db->data[param->dstIdx];
        RFLErrcode err;

        if (*src == 0) {
            RFLiEndWorking(RFLErrcode_DBNodata);
            return;
        }

        srcIdx = *src-1;
        if (use_cache) {
            loadHiddenRandomSync_(db);
            return;
        }

        err = RFLiLoadHiddenDataAsync(&db->data[param->dstIdx], srcIdx, updateHDBRandcallback_, (u32)db); 
        if (err != RFLErrcode_Busy) {
            RFLiEndWorking(err);
        }
    }
}

static void updateRandom_(RFLiMiddleDB* db) {
    int count = 0;
    RFL_RANDOM_PARAM* mask = (RFL_RANDOM_PARAM*)&db->userdata1;

    RFLiStartWorking();

    while (db->storedSize < db->size) {
        int j;
        BOOL isSame = FALSE;
        RFLiCharInfo info;

        RFLi_MakeRandomFace(&info, (RFLSex)mask->sex, (RFLAge)mask->age, (RFLRace)mask->race);
        RFLiSetTemporaryID(&info);

        for (j = 0; j < db->storedSize; j++) {
            RFLiCharInfo info2;
            RFLiConvertHRaw2Info(&db->data[j], &info2);
            if (RFLiIsSameFaceCore(&info, &info2)) {
                isSame = TRUE;
                break;
            }
        }

        if (!isSame) {
            RFLiConvertInfo2HRaw(&info, &db->data[db->storedSize]);
            db->storedSize++;
        }
    }

    RFLiEndWorking(RFLErrcode_Success);
}


static void startUpdateDB_(RFLiMiddleDB* db) {
    db->storedSize = 0;
    memset(db->data, 0, db->size * sizeof(RFLiHiddenCharData));

    switch (db->type) {
        case RFLMiddleDBType_HiddenNewer:
        case RFLMiddleDBType_HiddenOlder: {
            RFL_NEW_OLD_PARAM* param = (RFL_NEW_OLD_PARAM*)&db->userdata1;
            RFL_DEST_PARAM* param2 = (RFL_DEST_PARAM*)&db->userdata2;

            param->dstIdx = 0;
            param2->lastSrcIdx = param->srcIdx;
            break;
        }
        case RFLMiddleDBType_HiddenRandom: {
            RFL_HIDDEN_RANDOM_PARAM* param = (RFL_HIDDEN_RANDOM_PARAM*)&db->userdata1;
            RFL_DEST_PARAM* param2 = (RFL_DEST_PARAM*)&db->userdata2;

            param->dstIdx = 0;
            param2->lastSrcIdx = 0;
        }
        default: {
            break;
        }
    }
}

RFLErrcode RFLiUpdateMiddleDB(RFLMiddleDatabase* db) {
    RFLErrcode errcode = RFLErrcode_Unknown;
    BOOL use_cache = FALSE;

    if (RFLiIsCachedHDB()) {
        switch (((RFLiMiddleDB*)db)->type) {
            case RFLMiddleDBType_HiddenRandom:
            case RFLMiddleDBType_HiddenNewer:
            case RFLMiddleDBType_HiddenOlder: {
                use_cache = TRUE;
                break;
            }
            default: {
                break;
            }
        }
    }

    if (use_cache) {
        return RFLiUpdateMiddleDBAsync(db, NULL, TRUE);
    }

    errcode = RFLiUpdateMiddleDBAsync(db, NULL, FALSE);
    if (errcode != RFLErrcode_Busy) {
        return errcode;
    }

    return RFLWaitAsync();
}

RFLErrcode RFLUpdateMiddleDBAsync(RFLMiddleDatabase* db) {
    RFLi_ASSERTLINE_NULL(db, 686);

    if (db == NULL) {
        return RFLErrcode_WrongParam;
    }

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    return RFLiUpdateMiddleDBAsync(db, NULL, FALSE);
}

RFLErrcode RFLiUpdateMiddleDBAsync(RFLMiddleDatabase* db, RFLSimpleCB cb, BOOL use_cache) {
    RFLiMiddleDB* idb = (RFLiMiddleDB*)db;

    RFLi_ASSERTLINE_NULL(db, 711);
    RFLi_ASSERTLINE(!use_cache || (use_cache && RFLiIsCachedHDB()), 712);
    RFLi_ASSERTLINE(!use_cache || (use_cache && cb == 0L), 713);

    if (db == NULL) {
        return RFLErrcode_WrongParam;
    }

    idb->callback = cb;
    startUpdateDB_(idb);

    switch (idb->type) {
        case RFLMiddleDBType_HiddenRandom: {
            updateHiddenRandom_(idb, use_cache);
            break;
        }
        case RFLMiddleDBType_HiddenNewer: {
            updateHiddenOld_(idb, FALSE, use_cache);
            break;
        }
        case RFLMiddleDBType_HiddenOlder: {
            updateHiddenOld_(idb, TRUE, use_cache);
            break;
        }
        case RFLMiddleDBType_Random: {
            updateRandom_(idb);
            break;
        }
        default: {
            break;
        }
    }

    if (!RFLiIsWorking() && idb->callback != NULL) {
        idb->callback();
    }

    return RFLGetAsyncStatus();
}

RFLMiddleDBType RFLGetMiddleDBType(const RFLMiddleDatabase* db) {
    RFLi_ASSERTLINE_NULL(db, 755);
    return (RFLMiddleDBType)((RFLiMiddleDB*)db)->type;
}

u16 RFLGetMiddleDBSize(const RFLMiddleDatabase* db) {
    RFLi_ASSERTLINE_NULL(db, 772);
    return (u16)((RFLiMiddleDB*)db)->size;
}

u16 RFLGetMiddleDBStoredSize(const RFLMiddleDatabase* db) {
    RFLi_ASSERTLINE_NULL(db, 789);
    return (u16)((RFLiMiddleDB*)db)->storedSize;
}

BOOL RFLiGetCharInfoMiddleDB(RFLiCharInfo* info, const RFLMiddleDatabase* db, u16 index) {
    RFLiHiddenCharData* data;
    RFLiMiddleDB* idb;

    RFLi_ASSERTLINE_NULL(db, 811);

    if (db == NULL) {
        return FALSE;
    }
    idb = (RFLiMiddleDB*)db;

    if (index >= idb->size) {
        return FALSE;
    }

    if (idb->storedSize == 0) {
        return FALSE;
    }

    data = &idb->data[index];
    if (!RFLiIsValidID((RFLCreateID*)&data->createID)) {
        return FALSE;
    }

    RFLiConvertHRaw2Info(data, info);
    return TRUE;
}

void RFLSetMiddleDBRandomMask(RFLMiddleDatabase* db, RFLSex sex, RFLAge age, RFLRace race) {
    RFL_RANDOM_PARAM* ptr;
    RFLiMiddleDB* idb = (RFLiMiddleDB*)db;

    RFLi_ASSERTLINE(RFLGetMiddleDBType(db) == RFLMiddleDBType_Random, 844);

    if (RFLGetMiddleDBType(db) == RFLMiddleDBType_Random) {
        ptr = (RFL_RANDOM_PARAM*)&idb->userdata1;
        ptr->sex = sex;
        ptr->age = age;
        ptr->race = race;
    }
}

void RFLSetMiddleDBHiddenMask(RFLMiddleDatabase* db, RFLSex sex) {
    RFLiMiddleDB* idb = (RFLiMiddleDB*)db;
    RFLMiddleDBType type = RFLGetMiddleDBType(db);

    RFLi_ASSERTLINE(type == RFLMiddleDBType_HiddenOlder || type == RFLMiddleDBType_HiddenNewer || type == RFLMiddleDBType_HiddenRandom, 873);

    switch (type) {
        case RFLMiddleDBType_HiddenRandom: {
            RFL_HIDDEN_RANDOM_PARAM* ptr = (RFL_HIDDEN_RANDOM_PARAM*)&idb->userdata1;
            ptr->sex = sex;
            break;
        }
        case RFLMiddleDBType_HiddenNewer:
        case RFLMiddleDBType_HiddenOlder: {
            RFL_NEW_OLD_PARAM* ptr = (RFL_NEW_OLD_PARAM*)&idb->userdata1;
            ptr->sex = (u8)sex;
        }
        default: {
            break;
        }
    }
}

void RFLiDeleteMiddleDB(RFLMiddleDatabase* db, u16 index) {
    RFLiHiddenCharData* data;
    RFLiMiddleDB* idb;

    RFLi_ASSERTLINE_NULL(db, 908);

    if (db != NULL) {
        idb = (RFLiMiddleDB*)db;
        data = &idb->data[index];

        if (index < idb->size && idb->storedSize != 0 && RFLiIsValidID((RFLCreateID*)data->createID)) {
            memset(data, 0, sizeof(*data));
            idb->storedSize--;
        }
    }
}

BOOL RFLiPassMiddleDB(RFLMiddleDatabase* db, u16 passNum) {
    BOOL completed = FALSE;
    int i;
    RFLiMiddleDB* idb;
    RFL_NEW_OLD_PARAM* param;
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();

    RFLi_ASSERTLINE_NULL(db, 942);

    if (db == NULL) {
        return FALSE;
    }

    idb = (RFLiMiddleDB*)db;
    param = (RFL_NEW_OLD_PARAM*)&idb->userdata1;
    for (i = 0; i < passNum; i++) {
        s16 target = -1;

        switch (idb->type) {
            case RFLMiddleDBType_HiddenOlder: {
                target = stepOne_(param->srcIdx, TRUE);
                break;
            }
            case RFLMiddleDBType_HiddenNewer: {
                target = stepOne_(param->srcIdx, FALSE);
                break;
            }
            default: {
                break;
            }
        }

        if (target == -1) {
            completed = TRUE;
            break;
        }

        param->srcIdx = target;
    }

    return completed;
}

RFLErrcode RFLiAddMiddleDBUserData(RFLMiddleDatabase* db, const RFLCharData* data) {
    RFLiHiddenCharData hdata;
    RFLiMiddleDB* idb;
    RFLiCharInfo info;

    RFLi_ASSERTLINE_NULL(db, 989);
    RFLi_ASSERTLINE_NULL(data, 990);

    if (db == NULL) {
        return RFLErrcode_WrongParam;
    }
    if (data == NULL) {
        return RFLErrcode_WrongParam;
    }

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    RFLiConvertRaw2HRaw((RFLiCharData*)data, &hdata);

    idb = (RFLiMiddleDB*)db;

    if (idb->type != RFLMiddleDBType_UserSet) {
        return RFLErrcode_NotAvailable;
    }

    if (!RFLiIsValidID((RFLCreateID*)hdata.createID)) {
        return RFLErrcode_Broken;
    }

    RFLiConvertRaw2Info((RFLiCharData*)data, &info);
    if (!RFLiCheckValidInfo(&info)) {
        return RFLErrcode_Broken;
    }

    if (idb->storedSize >= idb->size) {
        return RFLErrcode_DBFull;
    }

    memcpy(&idb->data[idb->storedSize], &hdata, sizeof(RFLiHiddenCharData));
    idb->storedSize++;

    return RFLErrcode_Success;
}

RFLErrcode RFLAddMiddleDBStoreData(RFLMiddleDatabase* db, const RFLStoreData* data) {
    u16 crc;
    const RFLiStoreData* rawdata;

    RFLi_ASSERTLINE_NULL(db, 1032);
    RFLi_ASSERTLINE_NULL(data, 1033);

    if (db == NULL) {
        return RFLErrcode_WrongParam;
    }
    if (data == NULL) {
        return RFLErrcode_WrongParam;
    }

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    crc = RFLiCalculateCRC((void*)data, sizeof(RFLiStoreData));
    if (crc != 0) {
        return RFLErrcode_Broken;
    }

    rawdata = (const RFLiStoreData*)data;
    return RFLiAddMiddleDBUserData(db, (RFLCharData*)rawdata);
}
