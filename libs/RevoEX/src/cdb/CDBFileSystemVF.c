#include <revolution/cdb.h>
#include <private/cdb.h>

#include <revolution/vf.h>

#include <string.h>

char* CDBFindDataGetNameVF(CDBFindDataVF* findData) {
    if (findData->dta.longName[0] == 0) {
        return findData->dta.fileName;
    }
    else {
        return findData->dta.longName;
    }
}

int CDBFindDataIsDirectoryVF(CDBFindDataVF* findData) {
    return findData->dta.attribute >> 4 & 1;
}

BOOL CDBFindDataIsEndVF(CDBFindDataVF* findData) {
    return findData->isEnd;
}

BOOL CDBFSIsExistFileVF(const char* fileName) {
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

void CDBFSFindFirstVF(CDBFindDataVF* findData, const char* fileName) {
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

    CDBReportInfo("VFFileSearchFirst %s %s\n", findName, VFGetApiErrorString(vfErr));
    OSHalt("failed VFFileSearchFirst", 207);
}

void CDBFSFindNextVF(CDBFindDataVF* findData) {
    VFError vfErr;

    vfErr = VFFileSearchNext(&findData->dta);
    if (vfErr == VF_ERR_SUCCESS) {
        findData->isEnd = FALSE;
        return;
    }

    findData->isEnd = TRUE;
}

void CDBFSFindCloseVF(CDBFindDataVF* findData) {
    findData->isEnd = FALSE;
}

BOOL CDBFSIsDirNameVF(char* path) {
    u32 i;
    char* driveRoots[] = {
        CDB_CFG_VF_DRIVE_ROOT,
        CDB_CFG_SD_VF_DRIVE_ROOT,
    };
    for (i = 0; i < ARRSIZE(driveRoots); i++) {
        if (strcmp(driveRoots[i], path) == 0) {
            // It is a drive letter, it is not a path!
            return FALSE;
        }
    }
    // It is not a drive letter, it is a path!
    return TRUE;
}

CDBErr CDBFSCreateDirForceVF(const char* dirName) {
    u32 i, j;
    char realDirPath[256];

    int dirLen = strlen(dirName);

    for (i = 0; i < dirLen; i++) {
        if (dirName[i] == '/') {
            strncpy(realDirPath, dirName, i);
            realDirPath[i] = '\0';

            if (CDBFSIsDirNameVF(realDirPath)) {
                VFError vfErr = VFCreateDir(realDirPath);
                if (vfErr != VF_ERR_SUCCESS && vfErr != VF_ERR_EEXIST) {
                    if (vfErr == VF_ERR_ENOSPC) {
                        return CDB_ERROR_OUT_OF_SPACE;
                    }

                    CDBReportFatal("CDBFSCreateDir %s %s\n", realDirPath, VFGetApiErrorString(vfErr));
                    CDBSetFatalVFErrorFlag();
                    return CDBOnVFErrorOccured(vfErr);
                }
            }
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFSDeleteDirVF(const char* dirName) {
    VFError vfErr = VFDeleteDir(dirName);

    if (vfErr != VF_ERR_SUCCESS) {
        CDBReportError("CDBFSDeleteDirVF %s %s\n", dirName, VFGetApiErrorString(vfErr));
        CDBSetFatalVFErrorFlag();
        return CDBOnVFErrorOccured(vfErr);
    }

    return CDB_ERROR_OK;
}
