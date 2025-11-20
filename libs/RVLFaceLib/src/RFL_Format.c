#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_Debug.h>

#include <string.h>

const u32 gcRFLDataBaseIdentifier = 'RNOD';

#define RFLi_TEMP_BUFFER_SIZE   0x16960

#define TABLE_STEP  1250

void RFLiClearTableData(RFLiFormatTable* data) {
    memset(data, 0, sizeof(RFLiFormatTable));
    data->next = -1;
    data->prev = -1;
}

void RFLiClearDBBuffer() {
    RFLiDatabase* database = RFLiGetDBManager()->mDatabase;
    RFLiHiddenDatabase* header;
    int i;

    RFLi_ASSERTLINE_NULL(database, 53);

    header = &database->hidden;
    memset(&database->rawdata, 0, sizeof(RFLiDatabase)); // @BUG: 4byte buffer overrun

    database->identifier = gcRFLDataBaseIdentifier;
    database->isolation = TRUE;

    header->identifier = RFLi_HIDDEN_DB_IDENTIFIER;
    header->head = -1;
    header->tail = -1;

    for (i = 0; i < RFL_MAX_HIDDEN_DB; i++) {
        RFLiClearTableData(&header->data[i]);
    }
}

static void formatCloseCallback_() {
    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        RFLiBootLoadDatabaseAsync(RFLiGetDBManager()->formatCallback);
    }
}

static void maxblockCloseCallback_() {
    RFLiGetManager()->mLastErrcode = RFLErrcode_MaxBlocks;
}

static void formatWriteCallback_() {
    RFLiHiddenDBManager* manager = RFLiGetHDBManager();
    BOOL continuous = FALSE;
    RFLErrcode err = RFLGetAsyncStatus();

    if (err == RFLErrcode_Success) {
        u32 size = 0;

        if (manager->formatIndex == -1) {
            manager->formatIndex = 0;
        }
        else {
            manager->formatIndex += TABLE_STEP;
        }

        if (manager->formatIndex < RFL_MAX_HIDDEN_DB) {
            s32 offset = manager->formatIndex * sizeof(RFLiHiddenCharData);
            s32 i;

            for (i = 0; i < TABLE_STEP; i++) {
                memset((RFLiHiddenCharData*)manager->formatTmp+i, 0, sizeof(RFLiHiddenCharData));
            }

            switch (RFLiWriteAsync(RFLiFileType_Database, manager->formatTmp, RFLi_TEMP_BUFFER_SIZE, formatWriteCallback_, offset + sizeof(RFLiDatabase))) {
                case RFLErrcode_Success:
                case RFLErrcode_Busy:
                    continuous = TRUE;
                    break;
                default: {
                    break;
                }
            }
        }
        else if (RFLiIsCachedHDB()) {
            RFLiClearCacheHDB(manager->cachedDB);
        }
    }
    else if (err == RFLErrcode_NANDCommandfail) {
        if (RFLiGetLastReason() == NAND_RESULT_MAXBLOCKS) {
            RFLiCloseAsync(RFLiFileType_Database, maxblockCloseCallback_);
        }
        else {
            RFLiCloseAsync(RFLiFileType_Database, NULL);
        }
    }

    if (!continuous) {
        RFLiFree(manager->formatTmp);
        manager->formatTmp = NULL;
        RFLiCloseAsync(RFLiFileType_Database, formatCloseCallback_);
    }
}

static void formatCalcCRCCb_() {
    RFLiWriteAsync(RFLiFileType_Database, RFLiGetDBManager()->mDatabase, sizeof(RFLiDatabase), formatWriteCallback_, 0);
}

static void formatOpenCallback_() {
    RFLErrcode err = RFLGetAsyncStatus();
    if (err == RFLErrcode_Success) {
        RFLiHiddenDBManager* manager = RFLiGetHDBManager();
        manager->formatIndex = -1;
        RFLi_ASSERTLINE(manager->formatTmp == 0L /* NULL */, 197);
        
        manager->formatTmp = RFLiAlloc32(RFLi_TEMP_BUFFER_SIZE);
        RFLiCreateHeaderCRCAsync(formatCalcCRCCb_);

        return;
    }
    else if (err == RFLErrcode_NANDCommandfail) {
        if (RFLiGetLastReason() == NAND_RESULT_MAXFILES) {
            RFLiGetManager()->mLastErrcode = RFLErrcode_MaxFiles;
        }
    }
    else {
        RFLiCloseAsync(RFLiFileType_Database, formatCloseCallback_);
    }
}

static void formatDeleteCallback_() {
    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_WRITE, formatOpenCallback_);
    }
}

static void formatCreateDirCallback_() {
    RFLErrcode err = RFLGetAsyncStatus();

    if (err == RFLErrcode_Success) {
        RFLiDeleteAsync(RFLiFileType_Database, formatDeleteCallback_);
    }
    else if (err == RFLErrcode_NANDCommandfail) {
        if (RFLiGetLastReason() == NAND_RESULT_MAXFILES) {
            RFLiGetManager()->mLastErrcode = RFLErrcode_MaxFiles;
        }
    }
}

RFLErrcode RFLiFormatAsync(RFLSimpleCB cb) {
    RFLiDatabaseManager* manager;

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    manager = RFLiGetDBManager();
    if (manager == NULL) {
        return RFLErrcode_NotAvailable;
    }

    RFLiClearDBBuffer();

    {
        u8 list = RFLiGetManager()->mBrokenTypeList;
        RFLiGetManager()->mBrokenTypeList = list & (1 << RFLiFileBrokenType_DBBroken);
    }

    manager->formatCallback = cb;

    return RFLiCreateSaveDirAsync(formatCreateDirCallback_);
}
