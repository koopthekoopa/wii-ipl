#include <revolution/cdb.h>
#include <private/cdb.h>

#include <revolution/vf.h>

#include <string.h>
#include <stdio.h>

typedef struct CDB_FS_SD_WORK {
    int             sdStatus;   // 0x00

    BOOL            isMounted;  // 0x04
    BOOL            isEjected;  // 0x08
    BOOL            isInserted; // 0x0C

    VFEventCallback sdCallback; // 0x10
} CDB_FS_SD_WORK;

enum {
    SD_STATUS_NOT_MOUNTED = 0,
    SD_STATUS_MOUNTED,
    SD_STATUS_UNAVAILABLE, // ?
};

char    CDB_SD_VFF_FILE_NAME[72];

char    CDB_SD_ROOT_PATH_LS[32];
char    CDB_SD_ROOT_PATH_CD[32];

char    CDB_SD_VF_DRIVE_LETTER[4];

static CDB_FS_SD_WORK   s_fssdWork;

BOOL CDBFSIsExistFileSD(const char* fileName) {
    char    findName[256];
    VFDta   vfDta;

    VFError vfErr;

    strcpy(findName, fileName);

    vfErr = VFFileSearchFirst(&vfDta, findName, 0x80);
    if (vfErr == VF_ERR_SUCCESS) {
        return TRUE;
    }

    if (vfErr == VF_ERR_ENOENT) {
        return FALSE;
    }

    CDBReportInfo("VFFileSearchFirst in CDBFSIsExistFile() %s %s\n", findName, VFGetApiErrorString(vfErr));

    return FALSE;
}

void CDBFSFindFirstSD(CDBFindDataSD* findData, const char* fileName) {
    char    findName[256];

    VFError vfErr;

    strcpy(findName, fileName);
    CDBFSConcatenatePath(findName, "*");

    vfErr = VFFileSearchFirst(&findData->dta, findName, 0x80);
    if (vfErr == VF_ERR_SUCCESS) {
        findData->isEnd = FALSE;
        return;
    }

    if (vfErr == VF_ERR_ENOENT) {
        findData->isEnd = TRUE;
        return;
    }
    if (vfErr == VF_ERR_EINVAL) {
        findData->isEnd = TRUE;
        return;
    }

    if (CDBFSSDIsEjected()) {
        findData->isEnd = TRUE;
        return;
    }

    CDBReportInfo("VFFileSearchFirst %s %s\n", findName, VFGetApiErrorString(vfErr));
    findData->isEnd = TRUE;
}

void CDBFSFindNextSD(CDBFindDataSD* findData) {
    VFError vfErr;

    vfErr = VFFileSearchNext(&findData->dta);
    if (vfErr == VF_ERR_SUCCESS) {
        findData->isEnd = FALSE;
        return;
    }

    findData->isEnd = TRUE;
}

void CDBFSFindCloseSD(CDBFindDataSD* findData) {
    findData->isEnd = FALSE;
}

char* CDBFindDataGetNameSD(CDBFindDataSD* findData) {
    if (findData->dta.longName[0] == 0) {
        return findData->dta.fileName;
    }
    else {
        return findData->dta.longName;
    }
}

int CDBFindDataIsDirectorySD(CDBFindDataSD* findData) {
    return findData->dta.attribute >> 4 & 1;
}

BOOL CDBFindDataIsEndSD(CDBFindDataSD* findData) {
    return findData->isEnd;
}

BOOL CDBFSIsDirNameSD(char* path) {
    u32 i;
    u32 unk;
    char* driveRoots[] = {
        CDB_CFG_SD_VF_DRIVE_ROOT,
    };
    for (i = 0; i < ARRSIZE(driveRoots); i++) {
        if (strcmp(driveRoots[i], path) == 0) {
            // It is a drive letter, it is not a path!
            return FALSE;
        }
    }
    // It is not a drive letter, it is a path!
    return path[strlen(path)-1] != ':';
}

CDBErr CDBFSCreateDirForceSD(const char* dirName) {
    u32 i, j;
    char realDirPath[256];

    int dirLen = strlen(dirName);

    for (i = 0; i < dirLen; i++) {
        if (dirName[i] == '/') {
            strncpy(realDirPath, dirName, i);
            realDirPath[i] = '\0';

            if (CDBFSIsDirNameSD(realDirPath)) {
                VFError vfErr = VFCreateDir(realDirPath);
                if (vfErr != VF_ERR_SUCCESS && vfErr != VF_ERR_EEXIST) {
                    if (vfErr == VF_ERR_ENOSPC) {
                        return CDB_ERROR_OUT_OF_SPACE;
                    }
                    if (vfErr == VF_ERR_EACCES) {
                        return CDB_ERROR_ACCESS_DENIED;
                    }
                    if (CDBFSSDIsEjected()) {
                        return CDB_ERROR_SD_EJECTED;
                    }

                    CDBReportInfo("CDBFSCreateDirForceSD %s %s\n", realDirPath, VFGetApiErrorString(vfErr));
                    return CDBOnVFErrorOccured(vfErr);
                }
            }
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFSDeleteDirSD(const char* dirName) {
    VFError vfErr = VFDeleteDir(dirName);

    if (vfErr != VF_ERR_SUCCESS) {
        if (vfErr == VF_ERR_EACCES) {
            return CDB_ERROR_ACCESS_DENIED;
        }

        CDBReportInfo("CDBFSDeleteDirSD %s %s\n", dirName, VFGetApiErrorString(vfErr));
        return CDBOnVFErrorOccured(vfErr);
    }

    return CDB_ERROR_OK;
}

void CDBFSSDInit() {
    char* sdVFLetter = CDB_CFG_SD_VF_DRIVE_LETTER;

    s_fssdWork.sdStatus = SD_STATUS_NOT_MOUNTED;
    s_fssdWork.isMounted = FALSE;
    s_fssdWork.isEjected = FALSE;
    s_fssdWork.isInserted = FALSE;
    s_fssdWork.sdCallback = NULL;

    if (sdVFLetter != NULL) {
        if (strcmp(sdVFLetter, "") != 0) {
            if (strlen(sdVFLetter) <= 7) {
                strcpy(CDB_SD_VF_DRIVE_LETTER, sdVFLetter);
                sprintf(CDB_SD_ROOT_PATH_CD, "%s%s%s", "", sdVFLetter, ":/private/wii/title/HAEA/");
                sprintf(CDB_SD_ROOT_PATH_LS, "%s%s%s", "", sdVFLetter, ":/private/wii/title/HAEA");
            }
        }
    }
}

void CDBFSSDEjectedCallback(u32 vfEvent) {
    if (s_fssdWork.sdCallback != NULL) {
        s_fssdWork.sdCallback(vfEvent);
    }

    if (vfEvent == VF_EVENT_EJECTED) {
        CDBReportInfo("SDEjectedCallback EJECTED\n");
        s_fssdWork.isEjected = TRUE;
    }
    else if (vfEvent == VF_EVENT_INSERTED) {
        CDBReportInfo("SDEjectedCallback INSERTED\n");
        s_fssdWork.isInserted = TRUE;
    }
}

CDBErr CDBFSSDMount() {
    VFError vfErr;

    if (s_fssdWork.sdStatus == SD_STATUS_UNAVAILABLE) {
        return CDB_ERROR_2;
    }

    if (s_fssdWork.isMounted) {
        return CDB_ERROR_SD_IS_MOUNTED;
    }

    s_fssdWork.isMounted = FALSE;
    s_fssdWork.isEjected = FALSE;
    s_fssdWork.isInserted = FALSE;

    vfErr = VFMountDriveSDDirectEx(CDB_SD_VF_DRIVE_LETTER, VF_SD_SLOT_0, CDBFSSDEjectedCallback);
    if (vfErr != VF_ERR_SUCCESS) {
        CDBReportInfo("VFMountDriveSDDirect err=%d:%s\n", vfErr, VFGetApiErrorString(vfErr));
        return CDBOnVFErrorOccured(vfErr);
    }

    CDBReportInfo("VFMountDriveSDDirect %s->[%s] succeeded\n", "SD Slot0", CDB_SD_VF_DRIVE_LETTER);

    s_fssdWork.sdStatus = SD_STATUS_MOUNTED;
    s_fssdWork.isMounted = TRUE;

    return CDB_ERROR_OK;
}

CDBErr CDBFSSDUnmount() {
    VFError vfErr;

    if (s_fssdWork.sdStatus == SD_STATUS_UNAVAILABLE) {
        return CDB_ERROR_2;
    }

    if (!s_fssdWork.isMounted) {
        return CDB_ERROR_SD_IS_NOT_MOUNTED;
    }

    vfErr = VFUnmountDriveForce(CDB_SD_VF_DRIVE_LETTER);
    if (vfErr != VF_ERR_SUCCESS) {
        CDBReportFatal("VFUnmoutDrive err=%d:%s\n", vfErr, VFGetApiErrorString(vfErr));
        return CDBOnVFErrorOccured(vfErr);
    }

    s_fssdWork.sdStatus = SD_STATUS_NOT_MOUNTED;
    s_fssdWork.isMounted = FALSE;
    s_fssdWork.isEjected = FALSE;
    s_fssdWork.isInserted = FALSE;

    /* @BUG: should not have CDB_SD_VF_DRIVE_LETTER */
    CDBReportInfo("VFUnmountDriveForce %s succeeded\n", "SD Slot0", CDB_SD_VF_DRIVE_LETTER);
    return CDB_ERROR_OK;
}

BOOL CDBFSSDIsMounted() {
    return s_fssdWork.isMounted;
}

BOOL CDBFSSDIsEjected() {
    return s_fssdWork.isEjected;
}

BOOL CDBFSSDIsInserted() {
    return s_fssdWork.isInserted;
}

DECOMP_FORCE_ACTIVE(CDBFileSystem_c, CDB_SD_VFF_FILE_NAME); // Unused but linked
