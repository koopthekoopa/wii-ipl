#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_Debug.h>

#include <string.h>

static void initWritableList_() {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();
    manager->writeCallback = NULL;
    manager->list.num = 0;
    manager->list.current = 0;
}

void RFLiInitHiddenDatabase() {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();

    RFLi_ASSERTLINE(manager != 0L /* NULL */, 69);

    if (manager == NULL) {
        return;
    }

    manager->cachedDB = NULL;
    manager->cached = FALSE;
}

void deleteToFormat_() {
    RFLiFormatAsync(RFLiGetHDBManager()->formatCallback);
}

void loadclosecallback_() {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();

    if (manager->loadCallback == NULL) {
        return;
    }

    manager->loadCallback(manager->loadArg);
}

void loadcallback_() {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();

    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        RFLiHiddenCharData* data;
        RFLiCharInfo info;

        data = manager->loadTmp;

        if (RFLiIsSameID((RFLCreateID*)&data->createID, &RFLiGetHiddenHeader()->data[manager->loadIndex].createID)) {
            RFLiConvertHRaw2Info(data, &info);

            if (RFLiCheckValidInfo(&info) && RFLiIsValidOnNAND(&info)) {
                memcpy(manager->loadDst, data, sizeof(RFLiHiddenCharData));
            }
            else {
                RFLiGetManager()->mLastErrcode = RFLErrcode_Broken;
            }
        }
    }

    RFLiFree(manager->loadTmp);
    manager->loadTmp = NULL;

    RFLiCloseAsync(RFLiFileType_Database, loadclosecallback_);
}

void loadopencallback_() {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();
    
    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        s32 offset = manager->loadIndex * sizeof(RFLiHiddenCharData);
        u32 size = sizeof(RFLiHiddenCharData);

        RFLi_ASSERTLINE(manager->loadTmp == 0L /* NULL */, 166);

        manager->loadTmp = RFLiAlloc32(size);

        switch (RFLiReadAsync(RFLiFileType_Database, manager->loadTmp, size, loadcallback_, offset + sizeof(RFLiDatabase))) {
            case RFLErrcode_Success:
            case RFLErrcode_Busy: {
                break;
            }
            default: {
                RFLiFree(manager->loadTmp);
                manager->loadTmp = NULL;

                RFLiCloseAsync(RFLiFileType_Database, NULL);
            }
        }
    }
    else {
        manager->loadDst = NULL;
        manager->loadTmp = NULL;
        manager->loadIndex = 0;
        manager->loadCallback = NULL;
    }
}

RFLErrcode RFLiLoadHiddenDataAsync(RFLiHiddenCharData* data, u16 index, RFLSimpleCBArg cb, u32 arg) {
    RFLiHiddenDBManager* manager = NULL;

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_HIDDEN_DB, 203);
    RFLi_ASSERTLINE_NULL(data, 204);

    if (index >= RFL_MAX_HIDDEN_DB) {
        return RFLErrcode_WrongParam;
    }

    if (data == NULL) {
        return RFLErrcode_WrongParam;
    }

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    manager = RFLiGetHDBManager();
    if (manager == NULL) {
        return RFLErrcode_NotAvailable;
    }

    RFLi_ASSERTLINE(manager->loadTmp == 0L /* NULL */, 216);

    manager->loadDst = data;
    manager->loadIndex = index;
    manager->loadCallback = cb;
    manager->loadArg = arg;

    return RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_READ, loadopencallback_);
}

RFLErrcode RFLiLoadCachedHiddenData(RFLiHiddenCharData* data, u16 index) {
    RFLErrcode err = RFLErrcode_Unknown;
    RFLiHiddenDBManager* manager = NULL;

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_HIDDEN_DB, 242);
    RFLi_ASSERTLINE_NULL(data, 243);

    if (index >= RFL_MAX_HIDDEN_DB) {
        return RFLErrcode_WrongParam;
    }

    if (data == NULL) {
        return RFLErrcode_WrongParam;
    }

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    manager = RFLiGetHDBManager();
    if (manager == NULL) {
        return RFLErrcode_NotAvailable;
    }

    if (RFLiIsCachedHDB()) {
        if (RFLiIsSameID((RFLCreateID*)&manager->cachedDB[index].createID, &RFLiGetHiddenHeader()->data[index].createID)) {
            RFLiCharInfo info;
            RFLiConvertHRaw2Info(&manager->cachedDB[index], &info);

            if (RFLiCheckValidInfo(&info)) {
                memcpy(data, &manager->cachedDB[index], sizeof(RFLiHiddenCharData));
                err = RFLErrcode_Success;
            }
            else {
                err = RFLErrcode_Broken;
            }
        }
        else {
            err = RFLErrcode_Broken;
        }
    }
    else {
        err = RFLErrcode_NotAvailable;
    }
    
    return err;
}

static void writeCtrl2HDBCallback_() {
    RFLiCloseAsync(RFLiFileType_Database, NULL);
}

static void writeOneData2HDBCallback_() {
    RFLiCloseAsync(RFLiFileType_Database, NULL);
}

static void updateOfficial2HiddenWriteCb_() {
    RFLiCloseAsync(RFLiFileType_Database, NULL);
}

static void savehiddenheadercallback_() {
    RFLiCloseAsync(RFLiFileType_Database, RFLiGetHDBManager()->writeCallback);
}

static void saveheaderCreateCRCCb_() {
    RFLiHiddenDatabase* header = RFLiGetHiddenHeader();

    switch (RFLiWriteAsync(RFLiFileType_Database, header, sizeof(RFLiHiddenDatabase), savehiddenheadercallback_, 0x1D00)) {
        case RFLErrcode_Success:
        case RFLErrcode_Busy: {
            break;
        }
        default: {
            if (RFLiGetHDBManager()->writeCallback != NULL) {
                RFLiGetHDBManager()->writeCallback();
            }
        }
    }
}

static void saveheaderopencallback_() {
    RFLiHiddenDBManager* header = RFLiGetHDBManager();

    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        RFLiCreateHeaderCRCAsync(saveheaderCreateCRCCb_);
    }
}

RFLErrcode RFLiSaveHiddenHeaderAsync(RFLSimpleCB cb) {
    RFLiGetHDBManager()->writeCallback = cb;
    return RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_WRITE, saveheaderopencallback_);
}

RFLErrcode RFLiDeleteHiddenData(u16 index) {
    RFLiHiddenDBManager* manager = NULL;
    RFLiFormatTable* curNode;
    RFLiHiddenDatabase* table;

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_HIDDEN_DB, 399);

    if (index >= RFL_MAX_HIDDEN_DB) {
        return RFLErrcode_WrongParam;
    }

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    if (RFLiIsWorking()) {
        return RFLErrcode_NotAvailable;
    }

    manager = RFLiGetHDBManager();
    if (manager == NULL) {
        return RFLErrcode_NotAvailable;
    }

    curNode = &RFLiGetHiddenHeader()->data[index];

    if (!RFLiIsValidID(&curNode->createID)) {
        return RFLErrcode_DBNodata;
    }

    table = RFLiGetHiddenHeader();

    if (curNode->prev != -1) {
        RFLiFormatTable* prevNode = &table->data[curNode->prev];
        prevNode->next = curNode->next;
    }
    if (curNode->next != -1) {
        RFLiFormatTable* nextNode = &table->data[curNode->next];
        nextNode->prev = curNode->prev;
    }

    if (index == table->head) {
        table->head = curNode->next;
    }
    if (index == table->tail) {
        table->tail = curNode->prev;
    }

    RFLiClearTableData(curNode);

    return RFLErrcode_Success;
}

RFLErrcode RFLiDeleteHiddenDataID(const RFLCreateID* id) {
    s16 index = RFLiSearchHiddenData(id);
    if (index == -1) {
        return RFLErrcode_DBNodata;
    }
    return RFLiDeleteHiddenData(index);
}

RFLErrcode RFLiDeleteHiddenDataAsync(u16 index) {
    RFLErrcode err1 = RFLiDeleteHiddenData(index);
    if (err1 != RFLErrcode_Success) {
        return err1;
    }

    return RFLiSaveHiddenHeaderAsync(NULL);
}

RFLErrcode RFLiDeleteHiddenDataIDAsync(const RFLCreateID* id) {
    s16 index = RFLiSearchHiddenData(id);
    if (index == -1) {
        return RFLErrcode_DBNodata;
    }

    return RFLiDeleteHiddenDataAsync(index);
}

static void updateOfficialCalcCRCCb_() {
    switch (RFLiWriteAsync(RFLiFileType_Database, RFLiGetHiddenHeader(), sizeof(RFLiHiddenDatabase), updateOfficial2HiddenWriteCb_, 0x1D00)) {
        case RFLErrcode_Success:
        case RFLErrcode_Busy: {
            break;
        }
        default: {
            RFLiCloseAsync(RFLiFileType_Database, NULL);
        }
    }
}

BOOL RFLiUpdateOfficial2DeleteHidden(const RFLCreateID* id) {
    RFLErrcode err;
    s16 index = RFLiSearchHiddenData(id);
    RFLiHiddenDBManager* manager = NULL;

    if (index == -1) {
        return FALSE;
    }

    manager = RFLiGetHDBManager();
    if (manager == NULL) {
        return FALSE;
    }

    err = RFLiDeleteHiddenData(index);
    if (err != RFLErrcode_Success) {
        return FALSE;
    }

    RFLiGetHDBManager()->writeCallback = NULL;
    RFLiCreateHeaderCRCAsync(updateOfficialCalcCRCCb_);

    return TRUE;
}

static BOOL checkCtrlWritableData_(const RFLiCtrlBuffer* buffer, u8 index, BOOL isChMode) {
    RFLiCtrlCheckType type = RFLiCtrlCheckType_Both;

    if (isChMode) {
        type = RFLiCtrlCheckType_HiddenOnly;
    }

    if (RFLiCheckCtrlBufferCore(buffer, index, type)) {
        RFLiHiddenCharData data;
        RFLiConvertRaw2HRaw(&buffer->mData[index], &data);

        if (!data.localonly && !RFLSearchOfficialData((RFLCreateID*)&data.createID, NULL)) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL checkOneWritableData_(const RFLiHiddenCharData* data) {
    if (RFLiIsValidID((RFLCreateID*)&data->createID) && !data->localonly && !RFLSearchOfficialData((RFLCreateID*)&data->createID, NULL)
#if RFL_BUILD < 20080306
    && (RFLiSearchHiddenData((RFLCreateID*)&data->createID) == -1 || !RFLiIsMyHomeID((RFLCreateID*)&data->createID))
#endif
    ) {
        return TRUE;
    }
    return FALSE;
}

static int checkListWritableData_(const RFLiCtrlWriteDeleteList* list, u8 index, RFLiCharInfo* dst) {
    RFLiCharInfo info;

    if (list->isDelete[index] == TRUE && !RFLiGetCharInfo(&info, index) && !info.personal.localonly) {
        if (dst != NULL) {
            memcpy(dst, &info, sizeof(RFLiCharInfo));
        }
        return TRUE;
    }
    return FALSE;
}

static void setWritableList_(RFLiHiddenDBList* list, const RFLiHiddenCharData* data) {
    RFLiHiddenCharData* dst;

    RFLi_ASSERTLINE_NULL(list, 747);
    RFLi_ASSERTLINE_NULL(data, 748);
    RFLi_ASSERTLINE(list->num < (100) /* RFL_MAX_DATABASE */, 749);

    dst = &list->data[list->num];
    memcpy(dst, data, sizeof(RFLiHiddenCharData));

    dst->favorite = 0;

    list->num++;
}

static u8 getCtrlWritableCount_(const RFLiCtrlBuffer* buffer, BOOL isChMode) {
    u8 i;
    u8 count = 0;
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();

    for (i = 0; i < RFL_MAX_CTRL_BUFFER; i++) {
        if (checkCtrlWritableData_(buffer, i, isChMode)) {
            RFLiHiddenCharData hdata;
            RFLiConvertRaw2HRaw(&buffer->mData[i], &hdata);

            setWritableList_(&manager->list, &hdata);
            count++;
        }
    }

    return count;
}

static u8 getListWritableCount_(const RFLiCtrlWriteDeleteList* list) {
    u8 i;
    u8 count = 0;
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();

    for (i = 0; i < RFL_MAX_DATABASE; i++) {
        RFLiCharInfo info;
        if (checkListWritableData_(list, i, &info)) {
            RFLiHiddenCharData data;
            RFLiConvertInfo2HRaw(&info, &data);

            setWritableList_(&manager->list, &data);
            count++;
        }
    }

    return count;
}

static s16 getFirstBlank_() {
    s16 i;
    RFLiHiddenDatabase* table = RFLiGetHiddenHeader();

    for (i = 0; i < RFL_MAX_HIDDEN_DB; i++ ){
        if (!RFLiIsValidID(&table->data[i].createID)) {
            return i;
        }
    }
    return -1;
}

static void copyTo_(RFLiFormatTable* dst, const RFLiHiddenCharData* src) {
    memcpy(&dst->createID, &src->createID, sizeof(RFLCreateID));
    dst->sex = src->sex;
}

static s16 overwrite_(const RFLiHiddenCharData* data) {
    RFLiHiddenDatabase* table = RFLiGetHiddenHeader();
    s16 index = table->head;
    RFLiFormatTable* curNode = &table->data[index];

    s16 nextIndex = curNode->next;
    RFLiFormatTable* nextNode = &table->data[nextIndex];

    s16 tailIndex = table->tail;
    RFLiFormatTable* tailNode = &table->data[tailIndex];

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_HIDDEN_DB, 882);
    RFLi_ASSERTLINE(curNode->prev == -1, 883);

    if (index < 0 || index >= RFL_MAX_HIDDEN_DB) {
        return -1;
    }

    RFLiClearTableData(curNode);

    table->head = nextIndex;

    nextNode->prev = -1;
    tailNode->next = index;

    curNode->prev = tailIndex;
    table->tail = index;
    curNode->next = -1;

    copyTo_(curNode, data);

    return index;
}

static void create_(const RFLiHiddenCharData* data, s16 target) {
    RFLiHiddenDatabase* table = RFLiGetHiddenHeader();
    s16 index = target;
    RFLiFormatTable* curNode = &table->data[index];

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_HIDDEN_DB, 931);

    if (index < 0 || index >= RFL_MAX_HIDDEN_DB) {
        return;
    }

    RFLiClearTableData(curNode);

    if (table->tail >= 0) {
        RFLiFormatTable* tailNode = &table->data[table->tail];
        tailNode->next = index;
        curNode->prev = table->tail;
        table->tail = index;
        curNode->next = -1;
    }
    else {
        table->tail = index;
        table->head = index;
        curNode->prev =  -1;
        curNode->next = -1;
    }

    copyTo_(curNode, data);
}

static void writeHeaderCallback_() {
    RFLiCloseAsync(RFLiFileType_Database, RFLiGetHDBManager()->writeCallback);
}

static void writeHeader_() {
    RFLiSaveOpenedDatabaseAsync(RFLiGetHDBManager()->writeCallback);
}

static void writeData_(const RFLiHiddenCharData* data);

static void writeCallback_() {
    BOOL doClose = TRUE;
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();
    
    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        RFLiHiddenDBList* list = &RFLiGetHDBManager()->list;

        if (RFLiIsCachedHDB()) {
            memcpy(&manager->cachedDB[manager->writeIndex], manager->writeTmp, sizeof(RFLiHiddenCharData));
        }

        list->current++;

        if (list->current < list->num) {
            doClose = FALSE;
            writeData_(&list->data[list->current]);
        }
        else {
            RFLiFree(manager->writeTmp);
            manager->writeTmp = NULL;

            writeHeader_();
        }
    }
    else {
        RFLiFree(manager->writeTmp);
        manager->writeTmp = NULL;

        RFLiCloseAsync(RFLiFileType_Database, NULL);
    }
}

// DEBUG NON MATCH
static void writeData_(const RFLiHiddenCharData* data /* r27 */) {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager(); // r31
    s32 offset = 0; // r29
    s16 onhdb = -1; // r28
    s16 target = getFirstBlank_(); // r30

    onhdb = RFLiSearchHiddenData((RFLCreateID*)&data->createID);

    if (onhdb != -1) {
        target = onhdb;
    }
    else if (target < 0) {
        target = overwrite_(data);
    }
    else {
        create_(data, target);
    }

    offset = (target * sizeof(RFLiHiddenCharData)) + sizeof(RFLiDatabase);

    memcpy(manager->writeTmp, data, sizeof(RFLiHiddenCharData));
    manager->writeIndex = target;

    RFLiWriteAsync(RFLiFileType_Database, manager->writeTmp, sizeof(RFLiHiddenCharData), writeCallback_, offset);
}

static void writeStart_() {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();
    RFLiHiddenDBList* list = &manager->list;

    RFLi_ASSERTLINE(manager->writeTmp == 0L /* NULL */, 1120);

    if (list->current < list->num) {
        manager->writeTmp = RFLiAlloc32(sizeof(RFLiHiddenCharData));
        writeData_(&list->data[list->current]);
    }
}

static void openForWriteCallback_() {
    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        writeStart_();
    }
}

static void writeDataStart_() {
    RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_WRITE, openForWriteCallback_);
}

static void writeHeaderStart_() {
    RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_WRITE, writeHeader_);
}

static void writeDataStartMulti_() {
    RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_WRITE, openForWriteCallback_);
}

static void writeHeaderStartMulti_() {
    RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_WRITE, writeHeader_);
}

static void initAnyBufferToHiddenDB_(RFLSimpleCB cb, RFLSimpleCB nextScene) {
    RFLiHiddenDBManager* manager = NULL;

    manager = RFLiGetHDBManager();
    manager->writeCallback = cb;

    if (!RFLiDBIsLoaded()) {
        RFLiFormatAsync(nextScene);
    }
    else {
        nextScene();
    }
}

RFLErrcode RFLiWriteCtrlToHiddenDB(const RFLiCtrlBuffer* buffer, BOOL isChMode) {
    initWritableList_();

    if (getCtrlWritableCount_(buffer, isChMode)) {
        initAnyBufferToHiddenDB_(writeCtrl2HDBCallback_, writeDataStart_);
    }
    else {
        initAnyBufferToHiddenDB_(writeCtrl2HDBCallback_, writeHeaderStart_);
    }

    return RFLGetAsyncStatus();
}

RFLErrcode RFLiOneDataToHiddenDB(const RFLiHiddenCharData* data) {
    initWritableList_();

    if (checkOneWritableData_(data)) {
        setWritableList_(&RFLiGetHDBManager()->list, data);
        initAnyBufferToHiddenDB_(writeOneData2HDBCallback_, writeDataStart_);
    }

    return RFLGetAsyncStatus();
}

static void deleteSaveWroteCallback_() {
    RFLiCloseAsync(RFLiFileType_Database, NULL);
}

RFLErrcode RFLiDeleteSaveHiddenDataAsync(const RFLiCharData* data) {
    RFLiHiddenDBManager* manager = NULL;
    RFLiHiddenDBList* list = NULL;

    RFLi_ASSERTLINE_NULL(data, 1314);

    if (data == NULL) {
        return RFLErrcode_WrongParam;
    }

    manager = RFLiGetHDBManager();
    initWritableList_();

    list = &manager->list;

    RFLiConvertRaw2HRaw(data, list->data);

    list->num = 1;
    list->current = 0;

    manager->writeCallback = deleteSaveWroteCallback_;

    writeStart_();

    return RFLGetAsyncStatus();
}

s16 RFLiSearchHiddenData(const RFLCreateID* id) {
    s16 i;
    RFLiHiddenDBManager* manager;
    RFLiFormatTable* head;
    s16 target = -1;

    if (!RFLAvailable()) {
        return -1;
    }

    manager = RFLiGetHDBManager();
    if (manager == NULL) {
        return -1;
    }

    head = RFLiGetHiddenHeader()->data;

    for (i = 0; i < RFL_MAX_HIDDEN_DB; i++) {
        if (RFLiIsSameID(&head[i].createID, id)) {
            target = i;
            break;
        }
    }

    return target;
}

u16 RFLiCountupHiddenDataNum(RFLSex sex) {
    RFLiHiddenDBManager* manager;
    RFLiHiddenDatabase* header;
    u16 count = 0;
    u16 i;

    if (!RFLAvailable()) {
        return 0;
    }

    manager = RFLiGetHDBManager();
    if (manager == NULL) {
        return 0;
    }

    if (!RFLiDBIsLoaded()) {
        return 0;
    }

    header = RFLiGetHiddenHeader();

    for (i = 0; i < RFL_MAX_HIDDEN_DB; i++) {
        if (RFLiIsValidHiddenData(i, sex)) {
            count++;
        }
    }

    return count;
}

s16 RFLiGetHiddenNext(u16 index) {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();
    RFLiFormatTable* data;

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_HIDDEN_DB, 1419);

    if (index >= RFL_MAX_HIDDEN_DB) {
        return -1;
    }

    if (manager == NULL) {
        return -1;
    }

    data = &RFLiGetHiddenHeader()->data[index];
    if (!RFLiIsValidID(&data->createID)) {
        return -1;
    }

    return data->next;
}

s16 RFLiGetHiddenPrev(u16 index) {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();
    RFLiFormatTable* data;

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_HIDDEN_DB, 1445);

    if (index >= RFL_MAX_HIDDEN_DB) {
        return -1;
    }

    if (manager == NULL) {
        return -1;
    }

    data = &RFLiGetHiddenHeader()->data[index];
    if (!RFLiIsValidID(&data->createID)) {
        return -1;
    }

    return data->prev;
}

BOOL RFLiIsValidHiddenData(u16 index, RFLSex sex) {
    RFLiHiddenDBManager* manager;
    RFLiHiddenDatabase* header;
    u16 count = 0;

    if (!RFLAvailable()) {
        return FALSE;
    }

    manager = RFLiGetHDBManager();
    if (manager == NULL) {
        return FALSE;
    }

    header = RFLiGetHiddenHeader();
    if (!RFLiIsValidID(&header->data[index].createID)) {
        return FALSE;
    }

    if (sex == RFLSex_All) {
        return TRUE;
    }

    switch (header->data[index].sex) {
        case RFLSex_Male: {
            if (sex == RFLSex_Male) {
                return TRUE;
            }
            else {
                return FALSE;
            }
            break;
        }
        case RFLSex_Female: {
            if (sex == RFLSex_Female) {
                return TRUE;
            }
            else {
                return FALSE;
            }
            break;
        }
        default: {
            return FALSE;
        }
    }
}

u32 RFLiGetCacheHDBBufferSize() {
    return 0x9C400;
}

static void readCacheCallback_() {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();
    s32 reason;
    
    switch (RFLGetAsyncStatus()) {
        case RFLErrcode_Success: {
            break;
        }
        case RFLErrcode_NANDCommandfail: {
            RFLiClearCacheHDB(manager->cachedDB);
            reason = RFLiGetLastReason();
            switch (reason) {
                case NAND_RESULT_ECC_CRIT:
                case NAND_RESULT_AUTHENTICATION: {
                    RFLiSetFileBroken(RFLiFileBrokenType_DBBroken);
                    break;
                }
                case NAND_RESULT_CORRUPT: {
                    RFLiSetFileBroken(RFLiFileBrokenType_Corrupt);
                    break;
                }
                default: {
                    break;
                }
            }
        }
        case RFLErrcode_Loadfail: {
            RFLiSetFileBroken(RFLiFileBrokenType_DBBroken);
            break;
        }
        default: {
            break;
        }
    }

    manager->cached = TRUE;

    RFLiCloseAsync(RFLiFileType_Database, NULL);
}

static void openCacheCallback_() {
    RFLErrcode read;
    s32 reason;

    switch (RFLGetAsyncStatus()) {
        case RFLErrcode_Success: {
            read = RFLiReadAsync(RFLiFileType_Database, RFLiGetHDBManager()->cachedDB, RFLiGetCacheHDBBufferSize(), readCacheCallback_, 0x1F1E0);
            if (read != RFLErrcode_Busy) {
                RFLiCloseAsync(RFLiFileType_Database, NULL);
                return;
            }
            break;
        }
        case RFLErrcode_NANDCommandfail: {
            reason = RFLiGetLastReason();
            switch (reason) {
                case NAND_RESULT_NOEXISTS: {
                    RFLiGetManager()->mLastErrcode = RFLErrcode_Success;
                    RFLiGetHDBManager()->cached = TRUE;
                    break;
                }
                case NAND_RESULT_ECC_CRIT:
                case NAND_RESULT_AUTHENTICATION: {
                    RFLiSetFileBroken(RFLiFileBrokenType_DBBroken);
                    RFLiEndWorkingReason(RFLErrcode_Loadfail, reason);
                    break;
                }
                case NAND_RESULT_CORRUPT: {
                    RFLiSetFileBroken(RFLiFileBrokenType_Corrupt);
                    RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, reason);
                    break;
                }
                default: {
                    RFLiEndWorkingReason(RFLErrcode_Fatal, reason);
                    break;
                }
            }
        }
        default: {
            break;
        }
    }
}

void RFLiClearCacheHDB(void* cache) {
    memset(cache, 0, RFLiGetCacheHDBBufferSize());
}

RFLErrcode RFLiCacheHDBAsync(void* buffer) {
    RFLiHiddenDBManager* manager;

    RFLi_ASSERTLINE_NULL(buffer, 1637);

    if (buffer == NULL) {
        return RFLErrcode_WrongParam;
    }

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    if (RFLiIsWorking()) {
        return RFLErrcode_NotAvailable;
    }

    manager = RFLiGetHDBManager();
    if (manager == NULL) {
        return RFLErrcode_NotAvailable;
    }

    if (manager->cached) {
        return RFLErrcode_NotAvailable;
    }

    manager->cachedDB = buffer;
    manager->cached = FALSE;
    RFLiClearCacheHDB(manager->cachedDB);
    
    return RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_READ, openCacheCallback_);
}

RFLErrcode RFLiCacheHDB(void* buffer) {
    RFLErrcode err = RFLErrcode_Unknown;

    err = RFLiCacheHDBAsync(buffer);
    if (err != RFLErrcode_Busy) {
        return err;
    }

    return RFLWaitAsync();
}

RFLErrcode RFLiFreeCacheHDB() {
    RFLiHiddenDBManager* manager = NULL;

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    if (RFLiIsWorking()) {
        return RFLErrcode_NotAvailable;
    }

    manager = RFLiGetHDBManager();
    if (manager == NULL) {
        return RFLErrcode_NotAvailable;
    }

    if (!manager->cached) {
        return RFLErrcode_NotAvailable;
    }

    manager->cachedDB = NULL;
    manager->cached = FALSE;

    return RFLErrcode_Success;
}

BOOL RFLiIsCachedHDB() {
    RFLiHiddenDBManager* manager = NULL;

    if (!RFLAvailable()) {
        return FALSE;
    }

    manager = RFLiGetHDBManager();
    if (manager == NULL) {
        return FALSE;
    }

    return manager->cached;
}
