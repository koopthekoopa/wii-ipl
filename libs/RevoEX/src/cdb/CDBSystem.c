#include <revolution/cdb.h>
#include <private/cdb.h>

#include <revolution/vf.h>
#include <revolution/nand.h>
#include <revolution/ncd.h>
#include <revolution/net/NETDigest.h>

#include <revolution/os.h>
#include <revolution/dvd.h>

static OSMutex  s_mutex;
static BOOL     s_mutexInitialized = FALSE;

static BOOL     s_fatalVFFlag = FALSE;

// This was likely a local originally, but oh well!
s32 CDBPrintDebugLevel = CDB_VERBOSE_LEVEL_NONE;

static VFError  s_lastVFError;
static s32      s_lastNANDError;

static u8       s_cdbWiiId[OSRoundUp32B(CDB_WIIID_DAT_SIZE)] ALIGN32;

void MutexInitialized() {
    s_mutexInitialized = TRUE;
}

void CDBLock() {
    OSLockMutex(&s_mutex);
}

void CDBUnlock() {
    OSUnlockMutex(&s_mutex);
}

CDBErr _CDBOnVFErrorOccured(VFError vfError, const char* unused0, u32 unused1) {
    s_lastVFError = vfError;
    return CDB_ERROR_VF_ERROR;
}

CDBErr _CDBOnNANDErrorOccured(s32 nandError, const char* unused0, u32 unused1) {
    s_lastNANDError = nandError;
    return CDB_ERROR_NAND_ERROR;
}

VFError CDBGetLastVFError() {
    return s_lastVFError;
}

s32 CDBGetLastNANDError() {
    return s_lastNANDError;
}

BOOL CDBGetFatalVFErrorFlag() {
    return s_fatalVFFlag;
}

void CDBSetFatalVFErrorFlag() {
    s_fatalVFFlag = TRUE;
}

void CDBTryToCreate_wiiiddat(u8* data) {
    NANDFileInfo fileInfo;
    u32 nandCheck;

    // Requires 1 NAND block and 1 NAND node
    s32 ret = NANDCheck(1, 1, &nandCheck);
    if (ret != NAND_RESULT_OK) {
        CDBReportError("failed NANDCheck\n");
        return;
    }

    // Attempt to create it.
    ret = NANDCreate(CDB_WIIID_DAT_PATH, NAND_PERM_ALL_RW, 0);
    if (ret != NAND_RESULT_OK) {
        CDBReportInfo("failed to create cdbwiiid.dat\n");
        return;
    }

    // Created? Well lets open it...
    ret = NANDOpen(CDB_WIIID_DAT_PATH, &fileInfo, NAND_ACCESS_WRITE);
    if (ret != NAND_RESULT_OK) {
        return;
    }

    // ... then write!
    ret = NANDWrite(&fileInfo, data, CDB_WIIID_DAT_SIZE);
    if (ret != CDB_WIIID_DAT_SIZE) {
        NANDClose(&fileInfo);
        return;
    }

    // Goodbye!
    ret = NANDClose(&fileInfo);
    if (ret != NAND_RESULT_OK) {
        return;
    }

    CDBReportInfo("cdbwiiid.dat has been created successfully\n");
}

CDBErr CDBInitHashedMacAddr() {
    BOOL usingCdbWii;

    NANDFileInfo fileInfo;

    // Attempt to open
    s32 ret = NANDOpen(CDB_WIIID_DAT_PATH, &fileInfo, NAND_ACCESS_READ);
    if (ret == NAND_RESULT_OK) {
        char wiiIdData[OSRoundUp32B(CDB_WIIID_DAT_SIZE)] ALIGN32;

        ret = NANDRead(&fileInfo, wiiIdData, OSRoundUp32B(CDB_WIIID_DAT_SIZE));
        if (ret != CDB_WIIID_DAT_SIZE) {
            // "cdbwiiid.dat is corrupted or is an old format"
            CDBReportInfo("cdbwiiid.datが壊れているか古いフォーマットです\n");

            // cdbwiiid.dat is bad, delete the file
            ret = NANDClose(&fileInfo);
            if (ret != NAND_RESULT_OK) {
                return CDBOnNANDErrorOccured(ret);
            }
            ret = NANDDelete(CDB_WIIID_DAT_PATH);
            if (ret != NAND_RESULT_OK) {
                return CDBOnNANDErrorOccured(ret);
            }

            usingCdbWii = FALSE;
        }
        else {
            // "Using cdbwiiid.dat"
            CDBReportInfo("cdbwiiid.datを使用します\n");

            usingCdbWii = TRUE;

            // cdbwiiid.dat is good... we "use" the file.
            memset(&wiiIdData[NET_SHA1_DIGEST_SIZE], 0, NET_SHA1_DIGEST_SIZE);
            memcpy(s_cdbWiiId, wiiIdData, CDB_WIIID_DAT_SIZE);

            ret = NANDClose(&fileInfo);
            if (ret != NAND_RESULT_OK) {
                return CDBOnNANDErrorOccured(ret);
            }
        }
    }
    else {
        usingCdbWii = FALSE;
    }

    if (!usingCdbWii) {
        u8 sha1Data[9];

        // First get mac address
        ret = NCDGetWirelessMacAddress(sha1Data);
        if (ret < 0) {
            CDBReportFatal("NCDGetWirelessMacAddress failed\n");
            return CDB_ERROR_FATAL_ERROR;
        }

        // And then add these secret bytes to change things a bit
        sha1Data[6] = 0x75;
        sha1Data[7] = 0x79;
        sha1Data[8] = 0x79;

        // Reset HMAC
        memset(s_cdbWiiId, 0, CDB_WIIID_DAT_SIZE);
        // Generate new HMAC
        NETCalcSHA1(s_cdbWiiId, sha1Data, 9);
        // Then try to create the HMAC as a file
        CDBTryToCreate_wiiiddat(s_cdbWiiId);
    }

    if (CDBIsPrintDebugMessage(CDB_VERBOSE_LEVEL_INFO)) {
        int i, j;

        // Display C-like array of HMAC

        // "20 bytes of hashed MAC + 20 bytes of zeros"
        OSReport("MACハッシュ20バイト + ゼロ20バイト = {\n");
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 10; j++) {
                OSReport("%02X ", s_cdbWiiId[(i*10)+(j)]);
            }
            OSReport("\n");
        }
        OSReport("};\n");
    }
    return CDB_ERROR_OK;
}

typedef struct {
    union {
        u64 val;
        struct {
            u32 valHi;
            u32 valLo;
        };
    };
} Cdb_WiiId;

u64 CDBGetWiiId() {
    u64 wiiId;
    memcpy(&wiiId, &s_cdbWiiId[0], sizeof(u64));
    return wiiId;
}

u32 CDBGetWiiHighId() {
    u32 wiiIdHi;
    memcpy(&wiiIdHi, &s_cdbWiiId[0], sizeof(u32));
    return wiiIdHi;
}

u32 CDBGetWiiHighIdEx(u64 wiiId) {
    u32 wiiIdHi;
    Cdb_WiiId* cdbWiiId = (Cdb_WiiId*)&wiiId;
    memcpy(&wiiIdHi, &cdbWiiId->valHi, sizeof(u32));
    return wiiIdHi;
}

u32 CDBGetWiiLowId() {
    u32 wiiIdLo;
    memcpy(&wiiIdLo, &s_cdbWiiId[4], sizeof(u32));
    return wiiIdLo;
}

u32 CDBGetWiiLowIdEx(u64 wiiId) {
    u32 wiiIdLo;
    Cdb_WiiId* cdbWiiId = (Cdb_WiiId*)&wiiId;
    memcpy(&wiiIdLo, &cdbWiiId->valLo, sizeof(u32));
    return wiiIdLo;
}

void CDBGetWiiIdKey(char* wiiIdKey) {
    memcpy(wiiIdKey, &s_cdbWiiId[8], 12);
}

void CDBCopyWiiIdKey(char* wiiIdKey1, char* wiiIdKey2) {
    memcpy(wiiIdKey1, wiiIdKey2, 12);
}

// The device key is always blank
void CDBGetDeviceKey(char* devKey) {
    memcpy(devKey, &s_cdbWiiId[20], 20);
}

u32 CDBGetInitialCode() {
    u32 id = *(u32*)OSGetAppGamename();
    if (id == 0 && OSGetAppType() == 0) {
        id = *(u32*)DVDGetCurrentDiskID()->gameName;
    }
    return id;
}

u16 CDBGetMakerCode() {
    u16 makerCode;

    makerCode = 0x5858;

    switch (OSGetAppType()) {
        case OS_APP_TYPE_IPL: {
            makerCode = 1;
            break;
        }
        case OS_APP_TYPE_DVD: {
            makerCode = *(u16*)DVDGetCurrentDiskID()->company;
            break;
        }
        case OS_APP_TYPE_CHANNEL: {
            char home[64];
            NANDStatus status;

            s32 ret = NANDGetHomeDir(home);
            if (ret != NAND_RESULT_OK) {
                CDBReportInfo("(CDB) NANDGetHomeDir(): error %d", ret);
                break;
            }

            ret = NANDGetStatus(home, &status);
            if (ret != NAND_RESULT_OK) {
                CDBReportInfo("(CDB) NANDGetStatus(): error %d", ret);
                break;
            }

            makerCode = status.groupId;

            break;
        }
    }

    CDBCheckMakerCodeStr((char*)&makerCode);
    return makerCode;
}

void CDBCheckMakerCodeStr(char* makerCodeStr) {
    if (isprint(makerCodeStr[0]) && isprint(makerCodeStr[1])) {
        return;
    }

    makerCodeStr[0] = 0x23;
    if (makerCodeStr[1] >= 0 && makerCodeStr[1] <= 9) {
        makerCodeStr[1] += 0x30;
    }
    else {
        makerCodeStr[1] = 0x23;
    }
}

static int s_vfSync = 1;

CDBErr CDBSetVFSyncMode(int sync) {
    VFError vfErr;

    if (sync != 0) {
        vfErr = VFSync(CDB_CFG_VF_DRIVE_LETTER, 0);
    }
    else {
        vfErr = VFSync(CDB_CFG_VF_DRIVE_LETTER, 1);
    }

    if (vfErr != VF_ERR_SUCCESS) {
        return CDBOnVFErrorOccured(vfErr);
    }

    s_vfSync = sync;
    
    return CDB_ERROR_OK;
}

CDBErr CDBVFSync() {
    VFError vfErr;
    if (s_vfSync == 0) {
        vfErr = VFBuffering(CDB_CFG_VF_DRIVE_LETTER, 1);
        if (vfErr != VF_ERR_SUCCESS) {
            return CDBOnVFErrorOccured(vfErr);
        }
    }
    return CDB_ERROR_OK;
}

BOOL CDBIsPrintDebugMessage(s32 type) {
    return CDBPrintDebugLevel >= type ? TRUE : FALSE;
}

void CDBReport_(s32 type) {
    switch (type) {
        case CDB_VERBOSE_LEVEL_FATAL: {
            OSReport("(CDB) fatal error : ");
            break;
        }
        case CDB_VERBOSE_LEVEL_ERROR: {
            OSReport("(CDB) error : ");
            break;
        }
        case CDB_VERBOSE_LEVEL_WARN: {
            OSReport("(CDB) warning : ");
            break;
        }
        case CDB_VERBOSE_LEVEL_INFO: {
            OSReport("(CDB) info : ");
            break;
        }
        default: {
            break;
        }
    }
}

int CDBSafeStrLen(const char* s, int n) {
    int len;
    for (len = 0; n > 0; n--, len++, s++) {
        if (*s == 0) {
            return len;
        }
    }
    return -1;
}
