#include <revolution/nwc24.h>
#include <private/nwc24.h>

#include <revolution/os.h>
#include <private/os.h>

#include <revolution/dvd.h>

#include <string.h>

static NWC24ConfigData* config = NULL;
static BOOL             ConfigModified = FALSE;

static const char*      MBoxDir = "/shared2/wc24/mbox";
static const char*      ConfigFile = "/shared2/wc24/nwc24msg.cfg";
static const char*      CfgBakFile = "/shared2/wc24/nwc24msg.cbk";

static u16              VirtualGroupId = 01; // Nintendo

static void     SetDefaultConfig();

static u32      GetConfigCheckSum();
static NWC24Err CheckConfig() NO_INLINE;

static NWC24Err GenerateUserId(NWC24UserId* pId);
static NWC24Err RegisterUserId() NO_INLINE;

static void     CacheUserIdToLoMem(NWC24UserId id);
static NWC24Err GetCachedUserIdFromLoMem(NWC24UserId* pId);

NWC24Err NWC24GetMyUserId(NWC24UserId* pId) {
    NWC24Err    scdErr;
    NWC24Err    result;

    result = NWC24_OK;

    if (NWC24IsMsgLibOpened() || NWC24IsMsgLibOpenedByTool()) {
        *pId = config->userId;
    }
    else {
        scdErr = GetCachedUserIdFromLoMem(pId);
        if (scdErr == NWC24_OK) {
            return scdErr;
        }

        scdErr = NWC24SuspendScheduler();
        if (scdErr < NWC24_OK) {
            return scdErr;
        }

        result = NWC24GenerateNewUserId(pId);
        if (result == NWC24_ERR_ID_GENERATED || result == NWC24_ERR_ID_REGISTERED) {
            result = NWC24_OK;
        }

        scdErr = NWC24ResumeScheduler();
        if (scdErr < 0) {
            result = result != NWC24_OK ? result : scdErr;
        }
    }

    return result;
}

NWC24Err NWC24GenerateNewUserId(NWC24UserId* pId) {
    NWC24Err open;
    NWC24Err resultClose;

    open = NWC24BlockOpenMsgLib(TRUE);
    if (open < 0) {
        return open;
    }

    open = GenerateUserId(pId);
    resultClose = NWC24BlockOpenMsgLib(FALSE);

    return open >= 0 ? resultClose : open;
}

NWC24Err NWC24RegisterUserId() {
    NWC24Err result;
    NWC24Err result2;

    result = NWC24BlockOpenMsgLib(TRUE);
    if (result < NWC24_OK) {
        return result;
    }

    result = RegisterUserId();
    result2 = NWC24BlockOpenMsgLib(FALSE);
    if (result >= NWC24_OK) {
        return result2;
    }

    return result;
}

// Stripped out function with remaining static declaration
NWC24Err NWC24DumpConfig() {
    static char* strIdCreationStage[] = {
        "NWC24_IDCS_INITIAL",
        "NWC24_IDCS_GENERATED",
        "NWC24_IDCS_REGISTERED",
    };
    return NWC24_OK;
}

NWC24Err NWC24iConfigInit(BOOL force) {
    NWC24Err result;
    u32 idCreationCount = 0;

    if (nwc24Work == NULL) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    if (force) {
        NWC24FDelete("/shared2/wc24/misc.bin");
    }

    config = (NWC24ConfigData*)nwc24Work->configData;

    result = NWC24iConfigReload();
    if (result == NWC24_OK && !force) {
        return result;
    }

    if (result == NWC24_ERR_VER_MISMATCH && !force && config->version > NWC24_CONFIG_CURRENT_VERSION) {
        return result;
    }

    if (result == NWC24_OK || result == NWC24_ERR_VER_MISMATCH || result == NWC24_ERR_BROKEN) {
        idCreationCount = config->idCreationCount;
    }

    memset(config, 0, sizeof(*config));

    SetDefaultConfig();

    NWC24SetIdCreationCount(idCreationCount);

    result = NWC24iConfigFlush();
    return result;
}

NWC24Err NWC24iConfigOpen() {
    NWC24Err result;

    config = (NWC24ConfigData*)nwc24Work->configData;
    ConfigModified = FALSE;

    result = NWC24iConfigReload();
    if (result != NWC24_ERR_FILE_NOEXISTS && result == NWC24_OK) {
        CacheUserIdToLoMem(config->userId);
    }

    return result;
}

NWC24Err NWC24iConfigReload() {
    NWC24Err result;
    NWC24Err resultClose;
    NWC24File file;

    if (nwc24Work == NULL) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    result = NWC24FOpen(&file, ConfigFile, NWC24_OPEN_NAND_R);

    if (result == NWC24_OK) {
        result = NWC24FRead(config, sizeof(NWC24ConfigData), &file);
        resultClose = NWC24FClose(&file);
        result = result != NWC24_OK ? result : resultClose;
    }

    if (result == NWC24_OK) {
        result = CheckConfig();

        if (result == NWC24_OK) {
            ConfigModified = FALSE;
            return result;
        }
    }

    result = NWC24FOpen(&file, CfgBakFile, NWC24_OPEN_NAND_R);

    if (result == NWC24_OK) {
        result = NWC24FRead(config, sizeof(NWC24ConfigData), &file);
        resultClose = NWC24FClose(&file);
        result = result != NWC24_OK ? result : resultClose;
    }

    if (result == NWC24_OK) {
        result = CheckConfig();

        if (result == NWC24_OK) {
            ConfigModified = TRUE;
        }
    }

    return result;
}

NWC24Err NWC24iConfigFlush() {
    NWC24Err result;
    NWC24Err resultClose;
    NWC24File file;

    if (nwc24Work == NULL) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    if (!ConfigModified) {
        return NWC24_OK;
    }

    config->checksum = GetConfigCheckSum();

    result = NWC24FOpen(&file, ConfigFile, NWC24_OPEN_NAND_W);

    if (result == NWC24_OK) {
        result = NWC24FWrite(config, sizeof(NWC24ConfigData), &file);
        resultClose = NWC24FClose(&file);
        result = result != NWC24_OK ? result : resultClose;

        ConfigModified = FALSE;
    }

    if (result != NWC24_OK) {
        return result;
    }

    result = NWC24FOpen(&file, CfgBakFile, NWC24_OPEN_NAND_W);

    if (result == NWC24_OK) {
        result = NWC24FWrite(config, sizeof(NWC24ConfigData), &file);
        resultClose = NWC24FClose(&file);
        result = result != NWC24_OK ? result : resultClose;

        ConfigModified = FALSE;
    }

    return result;
}

const char* NWC24GetAccountDomain() {
    return config->accountDomain;
}

void NWC24SetAccountDomain(const char* accountDomain) {
    NWC24iStrLCpy(config->accountDomain, accountDomain, sizeof(config->accountDomain));
    ConfigModified = TRUE;
}

const char* NWC24GetMBoxDir() {
    OSIOSRev rev;
    __OSGetIOSRev(&rev);

    // Debug: "Firmware older than 0.7.6 is not supported"
    if (rev.major == 0 && (rev.minor == 7 && rev.micro == 0 || rev.minor < 7)) {
        OSHalt("stopped.", 695);
    }

    return MBoxDir;
}

u32 NWC24GetAppId() {
    u32 appId = *(u32*)OSGetAppGamename();

    if (appId == 0 && OSGetAppType() == 0) {
        appId = *(u32*)DVDGetCurrentDiskID()->gameName;
    }

    return appId;
}

u16 NWC24GetGroupId() {
    NANDStatus stat;
    u16 groupId;
    char* dir;

    groupId = VirtualGroupId;

    switch (OSGetAppType()) {
        case OS_APP_TYPE_IPL: {
            groupId = 01; // Nintendo
            break;
        }
        case OS_APP_TYPE_DVD: {
            groupId = *(u16*)DVDGetCurrentDiskID()->company;
            break;
        }
        case OS_APP_TYPE_CHANNEL:
            dir = nwc24Work->pathWork;
            if (NANDGetHomeDir(dir) == NAND_RESULT_OK) {
                if (NANDGetStatus(dir, &stat) == NAND_RESULT_OK) {
                    groupId = stat.groupId;
                }
            }
            break;
    }

    return groupId;
}

const char* NWC24GetPassword() {
    return config->password;
}

void NWC24SetPassword(const char* password) {
    NWC24iStrLCpy(config->password, password, sizeof(config->password));
    ConfigModified = TRUE;
}

const char* NWC24GetMailCheckId() {
    return config->mailCheckId;
}

void NWC24SetMailCheckId(const char* mailCheckId) {
    NWC24iStrLCpy(config->mailCheckId, mailCheckId, sizeof(config->mailCheckId));
    ConfigModified = TRUE;
    config->idCreationStage = NWC24_IDCS_REGISTERED;
}

const char* NWC24GetAccMgtServerURL() {
    return config->accMgtServerURL;
}

void NWC24SetAccMgtServerURL(const char* accMgtServerURL) {
    NWC24iStrLCpy(config->accMgtServerURL, accMgtServerURL, sizeof(config->accMgtServerURL));
    ConfigModified = TRUE;
}

const char* NWC24GetMailChkServerURL() {
    return config->mailChkServerURL;
}

void NWC24SetMailChkServerURL(const char* mailChkServerURL) {
    NWC24iStrLCpy(config->mailChkServerURL, mailChkServerURL, sizeof(config->mailChkServerURL));
    ConfigModified = TRUE;
}

const char* NWC24GetMailRcvServerURL() {
    return config->mailRcvServerURL;
}

void NWC24SetMailRcvServerURL(const char* mailRcvServerURL) {
    NWC24iStrLCpy(config->mailRcvServerURL, mailRcvServerURL, sizeof(config->mailRcvServerURL));
    ConfigModified = TRUE;
}

const char* NWC24GetMailDelServerURL() {
    return config->mailDelServerURL;
}

void NWC24SetMailDelServerURL(const char* mailDelServerURL) {
    NWC24iStrLCpy(config->mailDelServerURL, mailDelServerURL, sizeof(config->mailDelServerURL));
    ConfigModified = TRUE;
}

const char* NWC24GetMailTrsServerURL() {
    return config->mailTrsServerURL;
}

void NWC24SetMailTrsServerURL(const char* mailTrsServerURL) {
    NWC24iStrLCpy(config->mailTrsServerURL, mailTrsServerURL, sizeof(config->mailTrsServerURL));
    ConfigModified = TRUE;
}

void NWC24SetIdCreationCount(u32 idCreationCount) {
    config->idCreationCount = idCreationCount & (NWC24_CONFIG_MAX_ID_COUNT-1);
    ConfigModified = TRUE;
}

u32 NWC24GetIdCreationCount() {
    return config->idCreationCount;
}

NWC24Err NWC24GetIdCreationStage(NWC24IdCreationStage* idCreationStage) {
    *idCreationStage = config->idCreationStage;
    return NWC24_OK;
}

static void SetDefaultConfig() {
    // Default Account Domain
    NWC24SetAccountDomain("@wii.com");
    // Default Password
    NWC24SetPassword("0000000000000000");
    // Default Mail Check ID
    NWC24SetMailCheckId("9999999999999999");
    // Default Account Management Server URL
    NWC24SetAccMgtServerURL("https://amw.wc24.wii.com/cgi-bin/account.cgi");
    // Default Mail Check Server URL
    NWC24SetMailChkServerURL("http://rcw.wc24.wii.com/cgi-bin/check.cgi");
    // Default Mail Recieve Server URL
    NWC24SetMailRcvServerURL("https://mtw.wc24.wii.com/cgi-bin/receive.cgi");
    // Default Mail Delete Server URL
    NWC24SetMailDelServerURL("https://mtw.wc24.wii.com/cgi-bin/delete.cgi");
    // Default Mail Sends Server URL
    NWC24SetMailTrsServerURL("https://mtw.wc24.wii.com/cgi-bin/send.cgi");

    config->idCreationStage = NWC24_IDCS_INITIAL;
    config->version = NWC24_CONFIG_CURRENT_VERSION;
    config->magic = NWC24_CONFIG_MAGIC;
}

static u32 GetConfigCheckSum() {
    u32 i;
    u32 csum;
    u32* ptr;

    csum = 0;
    ptr = (u32*)config;

    // -1 to avoid checksum member
    for (i = 0; i < sizeof(NWC24ConfigData) / sizeof(u32) - 1; i++) {
        csum += *ptr++;
    }

    return csum;
}

static NWC24Err CheckConfig() {
    if (config->magic != NWC24_CONFIG_MAGIC) {
        return NWC24_ERR_BROKEN;
    }

    if (config->checksum != GetConfigCheckSum()) {
        return NWC24_ERR_BROKEN;
    }

    if (config->idCreationCount >= NWC24_CONFIG_MAX_ID_COUNT) {
        return NWC24_ERR_BROKEN;
    }

    if (config->version != NWC24_CONFIG_CURRENT_VERSION) {
        return NWC24_ERR_VER_MISMATCH;
    }

    return NWC24_OK;
}

static NWC24Err GenerateUserId(NWC24UserId* pId) {
    NWC24Err    result;
    u32         arg1 = 0;

    if (pId == NULL) {
        return NWC24_ERR_INVALID_VALUE;
    }

    *pId = 9999999999999999;
    result = NWC24iRequestGenerateUserId(pId, &arg1);
    CacheUserIdToLoMem(*pId);
    return result;
}

static NWC24Err RegisterUserId() {
    NWC24Err    result;
    s32         scheduleErrCount, scheduleErr;

    result = NWC24SuspendScheduler();
    if (result < NWC24_OK) {
        return result;
    }

    result = NWC24iRequestRegisterUserId();
    if (result != NWC24_OK && result != NWC24_ERR_ID_REGISTERED) {
        NWC24Err result2 = NWC24GetSchedulerError(&scheduleErrCount,&scheduleErr);
        if (result2 == NWC24_OK && scheduleErrCount > 0) {
            NWC24iSetErrorCode(scheduleErr);
        }
        else {
            NWC24iSetErrorCode(NWC24iMakeCode(NWC24_ERRCODE_1092XX, result));
        }
    }

    NWC24iSynchronizeRtcCounter(TRUE);
    NWC24ResumeScheduler();

    return result;
}

static void CacheUserIdToLoMem(NWC24UserId id) {
    NWC24UserId* pId = (NWC24UserId*)OSCachedToPhysical(0x31C0); // what's the point
    *pId = id;

    DCStoreRange(pId, DEFAULT_ALIGN);
}

static NWC24Err GetCachedUserIdFromLoMem(NWC24UserId* pId) {
    *pId = *(NWC24UserId*)OSCachedToPhysical(0x31C0);

    if (*pId == 0) {
        return NWC24_ERR_NULL;
    }
    
    return NWC24iCheckUserIdCRC(*pId);
}
