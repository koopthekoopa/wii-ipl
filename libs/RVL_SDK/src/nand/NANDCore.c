#include <revolution/nand.h>
#include <private/nand.h>

#include <revolution/os.h>
#include <private/os.h>

#include <revolution/esp.h>

#include <private/ipc.h>
#include <private/fs.h>

#include <revolution/verdefs.h>

#include <stdio.h>
#include <string.h>
#include <stddef.h>

SDKDefineVersion(NAND, "Apr 20 2010", "11:21:16");

enum {
    STATE_NOT_INITIALIZED = 0, 
    STATE_WORKING, 
    STATE_INITIALIZED
};

static int s_libState = STATE_NOT_INITIALIZED;

static char s_currentDir[NAND_MAX_PATH] = "/"   ALIGN32;
static char s_homeDir[NAND_MAX_PATH]            ALIGN32;

static BOOL nandOnShutdown(BOOL final, u32 event);

static void nandShutdownCallback(ISFSError result, void* arg);
static void nandChangeDirCallback(ISFSError result, void* arg);

static OSShutdownFunctionInfo s_shutdownFuncInfo = { nandOnShutdown, 0xFF, NULL, NULL };

static BOOL nandIsRelativePath(const char* path) {
    if (path[0] == '/') {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

void nandRemoveTailToken(char* newPath, const char* oldPath) {
    if (oldPath[0] == '/' && oldPath[1] == '\0') {
        newPath[0] = '/';
        newPath[1] = '\0';
    }
    else {
        int i = 0;

        for (i = strlen(oldPath)-1; i >= 0; i--) {
            if (oldPath[i] == '/') {
                if (i != 0) {
                    strncpy(newPath, oldPath, i);
                    newPath[i] = '\0';
                    break;
                }
                else {
                    newPath[0] = '/';
                    newPath[1] = '\0';
                    break;
                }
            }
        }
    }
}

void nandGetHeadToken(char* token, char* newPath, const char* oldPath) {
    int i = 0;

    for (i = 0; i <= strlen(oldPath); i++) {
        if (oldPath[i] == '/') {
            strncpy(token, oldPath, i);
            token[i] = '\0';

            if (oldPath[i+1] == '\0') {
                newPath[0] = '\0';
            }
            else {
                strcpy(newPath, oldPath + i+1);
            }

            break;
        }
        else if (oldPath[i] == '\0') {
            strncpy(token, oldPath, i);
            token[i] = '\0';
            newPath[0] = '\0';
            break;
        }
    }
}

void nandGetRelativeName(char* name, const char* path) {
    if (strcmp("/", path) == 0) {
        strcpy(name, "");
    }
    else {
        int i = 0;

        for (i = strlen(path)-1; i >= 0; i--) {
            if (path[i] == '/') {
                break;
            }
        }

        strcpy(name, path + i+1);
    }
}

void nandConvertPath(char* absPath, const char* wd, const char* relPath) {
    char token[128];
    char newRelPath[128];

    if (strlen(relPath) == 0) {
        strcpy(absPath, wd);
        return;
    }

    nandGetHeadToken(token, newRelPath, relPath);

    if (strcmp(token, ".") == 0) {
        nandConvertPath(absPath, wd, newRelPath);
    }
    else if (strcmp(token, "..") == 0) {
        char new_wd[128];
        nandRemoveTailToken(new_wd, wd);
        nandConvertPath(absPath, new_wd, newRelPath);
    }
    else if (token[0] != '\0') {
        char new_wd[128];
        if (strcmp(wd, "/") == 0) {
            sprintf(new_wd, "/%s", token);
        }
        else {
            sprintf(new_wd, "%s/%s", wd, token);
        }

        nandConvertPath(absPath, new_wd, newRelPath);
    }
    else {
        strcpy(absPath, wd);
    }
}

BOOL nandIsPrivatePath(const char* path) {
    if (strncmp(path, "/shared2", 8) == 0) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

BOOL nandIsUnderPrivatePath(const char* path) {
    if ((strncmp(path, "/shared2/", 9) == 0) && (path[9] != '\0')) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

BOOL nandIsInitialized() {
    if (s_libState == STATE_INITIALIZED) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void nandReportErrorCode(ISFSError result) {}

s32 nandConvertErrorCode(ISFSError result) {
    int errorMap[] = {
        // FS codes
        ISFS_ERROR_OK,                  NAND_RESULT_OK,
        ISFS_ERROR_ACCESS,              NAND_RESULT_ACCESS,
        ISFS_ERROR_CORRUPT,             NAND_RESULT_CORRUPT,
        ISFS_ERROR_ECC_CRIT,            NAND_RESULT_ECC_CRIT,
        ISFS_ERROR_EXISTS,              NAND_RESULT_EXISTS,
        ISFS_ERROR_AUTHENTICATION,      NAND_RESULT_AUTHENTICATION,
        ISFS_ERROR_INVALID,             NAND_RESULT_INVALID,
        ISFS_ERROR_MAXBLOCKS,           NAND_RESULT_MAXBLOCKS,
        ISFS_ERROR_MAXFD,               NAND_RESULT_MAXFD,
        ISFS_ERROR_MAXFILES,            NAND_RESULT_MAXFILES,
        ISFS_ERROR_MAXDEPTH,            NAND_RESULT_MAXDEPTH,
        ISFS_ERROR_NOEXISTS,            NAND_RESULT_NOEXISTS,
        ISFS_ERROR_NOTEMPTY,            NAND_RESULT_NOTEMPTY,
        ISFS_ERROR_NOTREADY,            NAND_RESULT_UNKNOWN,
        ISFS_ERROR_OPENFD,              NAND_RESULT_OPENFD,
        ISFS_ERROR_UNKNOWN,             NAND_RESULT_UNKNOWN,
        ISFS_ERROR_BUSY,                NAND_RESULT_BUSY,
        ISFS_ERROR_SHUTDOWN,            NAND_RESULT_FATAL_ERROR,

        // IPC codes
        IPC_RESULT_ACCESS,              NAND_RESULT_ACCESS,
        IPC_RESULT_EXISTS,              NAND_RESULT_EXISTS,
        IPC_RESULT_INTR,                NAND_RESULT_UNKNOWN,
        IPC_RESULT_INVALID,             NAND_RESULT_INVALID,
        IPC_RESULT_MAX,                 NAND_RESULT_UNKNOWN,
        IPC_RESULT_NOEXISTS,            NAND_RESULT_NOEXISTS,
        IPC_RESULT_EMPTYQUEUE,          NAND_RESULT_UNKNOWN,
        IPL_RESULT_FULLQUEUE,           NAND_RESULT_BUSY,
        IPC_RESULT_UNKNOWN,             NAND_RESULT_UNKNOWN,
        IPC_RESULT_NOTREADY,            NAND_RESULT_UNKNOWN,
        IPC_RESULT_ECC,                 NAND_RESULT_UNKNOWN,
        IPC_RESULT_ECC_CRIT,            NAND_RESULT_ECC_CRIT,
        IPC_RESULT_BADBLOCK,            NAND_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_OBJTYPE,     NAND_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_RNG,         NAND_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_FLAG,        NAND_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_FORMAT,      NAND_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_VERSION,     NAND_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_SIGNATURE,   NAND_RESULT_UNKNOWN,
        IPC_RESULT_VERIFY_FAILED,       NAND_RESULT_UNKNOWN,
        IPC_RESULT_INTERNAL_FAILURE,    NAND_RESULT_UNKNOWN,
        IPC_RESULT_ALLOC_FAILED,        NAND_RESULT_ALLOC_FAILED,
        IPC_RESULT_INVALID_SIZE,        NAND_RESULT_UNKNOWN,
    };

    int i = 0;

    if (result >= ISFS_ERROR_OK) {
        return result;
    }

    for (; i < ARRSIZE(errorMap); i += 2) {
        if (errorMap[i] == result) {
            if (result == ISFS_ERROR_ECC_CRIT || result == ISFS_ERROR_AUTHENTICATION || result == ISFS_ERROR_UNKNOWN
            || result == IPC_RESULT_UNKNOWN || result == IPC_RESULT_ECC_CRIT) {
                char buf[128] ALIGN64;
                sprintf(buf, "ISFS error code: %d", result);
                NANDLoggingAddMessageAsync(NULL, buf);
            }

            nandReportErrorCode(result);
            return errorMap[i+1];
        }
    }

    OSReport("CAUTION!  Unexpected error code [%d] was found.\n", result); {
        char buf[128] ALIGN64;
        sprintf(buf, "ISFS unexpected error code: %d", result);
        NANDLoggingAddMessageAsync(NULL, buf);
    }

    nandReportErrorCode(result);

    return NAND_RESULT_UNKNOWN;
}

void nandGenerateAbsPath(char* absPath, const char* path) {
    if (strlen(path) == 0) {
        strcpy(absPath, "");
    }
    else if (nandIsRelativePath(path)) {
        nandConvertPath(absPath, s_currentDir, path);
    }
    else {
        u32 len = -1;
        strcpy(absPath, path);
        
        len = strlen(absPath);
        if (len > 0) {
            if (absPath[len-1] == '/' && len-1 != 0) {
                absPath[len-1] = '\0';
            }
        }
    }
}

void nandGetParentDirectory(char* parentDir, const char* absPath) {
    int i = 0;
    for (i = strlen(absPath); i >= 0; i--) {
        if (absPath[i] == '/') {
            break;
        }
    }

    if (i == 0) {
        strcpy(parentDir, "/");
    }
    else {
        strncpy(parentDir, absPath, i);
        parentDir[i] = '\0';
    }
}

s32 NANDInit() {
    BOOL enabled = OSDisableInterrupts();

    if (s_libState == STATE_WORKING) {
        OSRestoreInterrupts(enabled);
        return NAND_RESULT_BUSY;
    }
    else if (s_libState == STATE_INITIALIZED) {
        OSRestoreInterrupts(enabled);
        return NAND_RESULT_OK;
    }
    else {
        ISFSError result = ISFS_ERROR_UNKNOWN;
        s_libState = STATE_WORKING;
        OSRestoreInterrupts(enabled);

        result = ISFS_OpenLib();
        if (result == ISFS_ERROR_OK) {
            ESTitleId   id;

            s32 ret = ESP_InitLib();

            if (ret == ES_ERR_OK) {
                ret = ESP_GetTitleId(&id);
            }
            if (ret == ES_ERR_OK) {
                ret = ESP_GetDataDir(id, s_homeDir);
            }
            if (ret == ES_ERR_OK) {
                strcpy(s_currentDir, s_homeDir);
            }

            ESP_CloseLib();

            if (ret != ES_ERR_OK) {
                OSReport("Failed to set home directory.\n");
            }

            OSRegisterShutdownFunction(&s_shutdownFuncInfo);

            enabled = OSDisableInterrupts();

            s_libState = STATE_INITIALIZED;

            OSRestoreInterrupts(enabled);

            OSRegisterVersion(GetVersion(NAND));

            return NAND_RESULT_OK;
        }
        else {
            enabled = OSDisableInterrupts();
            
            s_libState = STATE_NOT_INITIALIZED;

            OSRestoreInterrupts(enabled);

            return nandConvertErrorCode(result);
        }
    }
}

static BOOL nandOnShutdown(BOOL final, u32 event) {
    if (!final) {
        if (event == OS_SHUTDOWN_STANDBY) {
            vBOOL   flag = FALSE;

            OSTime  t = OSGetTime();

            ISFS_ShutdownAsync(nandShutdownCallback, (void*)&flag);

            while (OSTicksToMilliseconds(OSGetTime() - t) < 500) {
                if (flag) {
                    break;
                }
            }
        }
        return TRUE;
    }
    else {
        return TRUE;
    }
}

static void nandShutdownCallback(ISFSError result, void* arg) {
    *(BOOL*)arg = TRUE;
}

static ISFSError nandChangeDir(const char* path, NANDCommandBlock* block, BOOL isAsync, BOOL hasPrivateAccess) {
    if (isAsync) {
        nandGenerateAbsPath(block->absPath, path);
        if (!hasPrivateAccess && nandIsPrivatePath(block->absPath)) {
            return ISFS_ERROR_ACCESS;
        }
        else {
            return ISFS_ReadDirAsync(block->absPath, NULL, &block->num, nandChangeDirCallback, block);
        }
    }
    else {
        u32 num = 0;
    
        char absPath[NAND_MAX_PATH] = "";
    
        nandGenerateAbsPath(absPath, path);
        if (!hasPrivateAccess && nandIsPrivatePath(absPath)) {
            return ISFS_ERROR_ACCESS;
        }
        else {
            ISFSError err = ISFS_ReadDir(absPath, NULL, &num);
            if (err == ISFS_ERROR_OK) {
                BOOL enabled = OSDisableInterrupts();
                strcpy(s_currentDir, absPath);
                OSRestoreInterrupts(enabled);
            }
            return err;
        }
    }
}

s32 NANDChangeDir(const char* path) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    return nandConvertErrorCode(nandChangeDir(path, NULL, FALSE, FALSE));
}

static void nandChangeDirCallback(ISFSError result, void* arg) {
    NANDCommandBlock* block = (NANDCommandBlock*)arg;
    if (result == ISFS_ERROR_OK) {
        BOOL enabled = OSDisableInterrupts();
        strcpy(s_currentDir, block->absPath);
        OSRestoreInterrupts(enabled);
    }

    block->callback(nandConvertErrorCode(result), block);
}

s32 NANDGetCurrentDir(char* path) {
    BOOL enabled = FALSE;

    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    enabled = OSDisableInterrupts();
    strcpy(path, s_currentDir);
    OSRestoreInterrupts(enabled);

    return NAND_RESULT_OK;
}

s32 NANDGetHomeDir(char* path) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    strcpy(path, s_homeDir);

    return NAND_RESULT_OK;
}

void nandCallback(ISFSError result, void* arg) {
    NANDCommandBlock* block = (NANDCommandBlock*)arg;
    block->callback(nandConvertErrorCode(result), block);
}

static void nandGetTypeCallback(ISFSError result, void* arg);

static ISFSError nandGetType(const char* path, u8* type, NANDCommandBlock* block, BOOL isAsync, BOOL hasPrivateAccess) {
    if (strlen(path) == 0) {
        return ISFS_ERROR_INVALID;
    }

    if (isAsync) {
        nandGenerateAbsPath(block->absPath, path);
        if (!hasPrivateAccess && nandIsUnderPrivatePath(block->absPath)) {
            return ISFS_ERROR_ACCESS;
        }
        else {
            block->type = type;
            return ISFS_ReadDirAsync(block->absPath, NULL, &block->num, nandGetTypeCallback, block);
            return ISFS_ReadDirAsync(block->absPath, NULL, &block->num, nandGetTypeCallback, block);
        }
    }
    else {
        char absPath[NAND_MAX_PATH] = "";

        nandGenerateAbsPath(absPath, path);

        if (!hasPrivateAccess && nandIsUnderPrivatePath(absPath)) {
            return ISFS_ERROR_ACCESS;
        }
        else {
            u32         dummy = 0;
            ISFSError   err = ISFS_ReadDir(absPath, NULL, &dummy);

            if (err == ISFS_ERROR_OK || err == ISFS_ERROR_ACCESS) {
                *type = NAND_TYPE_DIR;
                err = ISFS_ERROR_OK;
            }
            else if (err == ISFS_ERROR_INVALID) {
                *type = NAND_TYPE_FILE;
                err = ISFS_ERROR_OK;
            }

            return err;
        }
    }
}

s32 NANDGetType(const char* path, u8* type) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    return nandConvertErrorCode(nandGetType(path, type, NULL, FALSE, FALSE));
}

s32 NANDPrivateGetType(const char* path, u8* type) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    return nandConvertErrorCode(nandGetType(path, type, NULL, FALSE, TRUE));
}

s32 NANDPrivateGetTypeAsync(const char* path, u8* type, NANDCallback callback, NANDCommandBlock* block) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    block->callback = callback;
    return nandConvertErrorCode(nandGetType(path, type, block, TRUE, TRUE));
}

static void nandGetTypeCallback(ISFSError result, void* arg) {
    NANDCommandBlock* block = (NANDCommandBlock*)arg;

    if (result == ISFS_ERROR_OK || result == ISFS_ERROR_ACCESS) {
        *block->type = NAND_TYPE_DIR;
        result = ISFS_ERROR_OK;
    }
    else if (result == ISFS_ERROR_INVALID) {
        *block->type = NAND_TYPE_FILE;
        result = ISFS_ERROR_OK;
    }

    block->callback(nandConvertErrorCode(result), block);
}

const char* nandGetHomeDir() {
    return s_homeDir;
}
