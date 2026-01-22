#include <revolution/cdb.h>
#include <private/cdb.h>

#include <revolution/vf.h>

#include <string.h>

char    CDB_WIIID_DAT_PATH[NAND_MAX_PATH];

char    CDB_VFF_FILE_NAME[NAND_MAX_PATH];
u32     CDB_VFF_FILE_SIZE;

// This is absolutely DISGUSTING.

// Left over unused logs
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "NANDCreateDir %s\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "NANDCreateDir() error = %d\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "NANDPrivateGetStatus %s = %d\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "ownerId=%u, groupId=%u, attribute=%u, permission=");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "(other-group-owner)\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "nocopy/cdbwiiid.dat");

// These ones are used but they are pooled somewhere else
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "VFMountDriveNANDFlashEx VFErr=%d(%s)\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "home=%s\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "VFCreateSystemFileNANDFlashEx DEVErr=%d\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "VFMountDriveNANDFlashEx VFErr=%d\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "VFFormatDrive VFErr=%d\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "VFMountDriveNANDFlashEx %s->%s succeeded\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "VFChangeDir %s %s\n");

static inline CDBErr CDBFSInitVFFile(void* cacheBuffer, u32 cacheSize) {
    VFError vfErr;
    s32     nandErr;
    
    vfErr = VFMountDriveNANDFlashCacheEx(CDB_CFG_VF_DRIVE_LETTER, CDB_VFF_FILE_NAME, cacheBuffer, cacheSize);
    if (vfErr != VF_ERR_SUCCESS) {
        CDBReportInfo("VFMountDriveNANDFlashEx VFErr=%d(%s)\n", vfErr, VFGetApiErrorString(vfErr));

        if (vfErr == VF_ERR_NOT_EXIST_FILE) {
            u32 nandCheck;

            nandErr = NANDCheck(0x500, 1, &nandCheck);
            if (nandErr != NAND_RESULT_OK) {
                CDBReportFatal("failed NANDCheck\n");
                return CDBOnNANDErrorOccured(nandErr);
            }

            if (nandCheck != NAND_CHECK_SUCCESS) {
                if (nandCheck & NAND_CHECK_HOME_INSSPACE) {
                    CDBReportFatal("NANDCheck : NAND_CHECK_HOME_INSSPACE\n");
                }
                if (nandCheck & NAND_CHECK_HOME_INSINODE) {
                    CDBReportFatal("NANDCheck : NAND_CHECK_HOME_INSINODE\n");
                }
                if (nandCheck & NAND_CHECK_SYS_INSSPACE) {
                    CDBReportFatal("NANDCheck : NAND_CHECK_SYS_INSSPACE\n");
                }
                if (nandCheck & NAND_CHECK_SYS_INSINODE) {
                    CDBReportFatal("NANDCheck : NAND_CHECK_SYS_INSINODE\n");
                }
                return CDB_ERROR_OUT_OF_SPACE;
            }

            vfErr = VFCreateSystemFileNANDFlashEx(CDB_VFF_FILE_NAME, CDB_VFF_FILE_SIZE);
            if (vfErr != VF_ERR_SUCCESS) {
                char nandHomeDir[64];
                NANDGetHomeDir(nandHomeDir);

                CDBReportFatal("home=%s\n", nandHomeDir);
                CDBReportFatal("VFCreateSystemFileNANDFlashEx DEVErr=%d\n", vfErr);
                return CDBOnNANDErrorOccured(vfErr);
            }

            vfErr = VFMountDriveNANDFlashCacheEx(CDB_CFG_VF_DRIVE_LETTER, CDB_VFF_FILE_NAME, cacheBuffer, cacheSize);
            if (vfErr != VF_ERR_SUCCESS) {
                CDBReportFatal("VFMountDriveNANDFlashEx VFErr=%d\n", vfErr);
                return CDBOnVFErrorOccured(vfErr);
            }

            vfErr = VFFormatDrive(CDB_CFG_VF_DRIVE_LETTER);
            if (vfErr != VF_ERR_SUCCESS) {
                CDBReportFatal("VFFormatDrive VFErr=%d\n", vfErr);
                return CDBOnVFErrorOccured(vfErr);
            }
        }
        else {
            CDBReportFatal("VFMountDriveNANDFlashEx VFErr=%d(%s)\n", vfErr, VFGetApiErrorString(vfErr));
            return CDBOnVFErrorOccured(vfErr);
        }
    }

    CDBReportInfo("VFMountDriveNANDFlashEx %s->%s succeeded\n", CDB_VFF_FILE_NAME, CDB_CFG_VF_DRIVE_LETTER);
        
    vfErr = VFChangeDir(CDB_CFG_VF_DRIVE_ROOT"/");
    if (vfErr != VF_ERR_SUCCESS) {
        CDBReportFatal("VFChangeDir %s %s\n", CDB_CFG_VF_DRIVE_ROOT"/", VFGetApiErrorString(vfErr));
        return CDBOnVFErrorOccured(vfErr);
    }

    return CDBSetVFSyncMode(0);
}

// More unused
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "NANDPrivateDelete %s-->\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "NANDPrivateDelete=%d\n");
DECOMP_FORCE_ACTIVE(CDBFileSystem_c, "<--NANDPrivateDelete\n");

CDBErr CDBFSInit(void* cacheBuffer, u32 cacheSize) {
    VFError vfErr;
    s32     nandErr;

    strcpy(CDB_VFF_FILE_NAME, "/title/00000001/00000002/data/cdb.vff");
    CDB_VFF_FILE_SIZE = 0x1400000;

    strcpy(CDB_WIIID_DAT_PATH, "/title/00000001/00000002/data/nocopy/cdbwiiid.dat");

    return CDBFSInitVFFile(cacheBuffer, cacheSize);
}

CDBErr CDBFSUninit() {
    VFError vfErr;

    vfErr = VFUnmountDriveForce(CDB_CFG_VF_DRIVE_LETTER);
    if (vfErr != VF_ERR_SUCCESS) {
        CDBReportFatal("VFUnmoutDrive err=%d:%s\n", vfErr, VFGetApiErrorString(vfErr));
        return CDBOnVFErrorOccured(vfErr);
    }

    return CDB_ERROR_OK;
}

char* CDBFindDataGetName(CDBFindData* findData) {
    if (findData->loc == CDB_FS_LOCATION_NAND) {
        return CDBFindDataGetNameVF(&findData->vf);
    }
    else {
        return CDBFindDataGetNameSD(&findData->sd);
    }
}

BOOL CDBFindDataIsDirectory(CDBFindData* findData) {
    if (findData->loc == CDB_FS_LOCATION_NAND) {
        return CDBFindDataIsDirectoryVF(&findData->vf);
    }
    else {
        return CDBFindDataIsDirectorySD(&findData->sd);
    }
}

BOOL CDBFindDataIsEnd(CDBFindData* findData) {
    if (findData->loc == CDB_FS_LOCATION_NAND) {
        return CDBFindDataIsEndVF(&findData->vf);
    }
    else {
        return CDBFindDataIsEndSD(&findData->sd);
    }
}

BOOL CDBFSIsExistFile(const char* fileName, CDBLocation location) {
    if (location == CDB_FS_LOCATION_NAND) {
        return CDBFSIsExistFileVF(fileName);
    }
    else {
        return CDBFSIsExistFileSD(fileName);
    }
}

void CDBFSFindFirstRoot(CDBFindData *findData, CDBLocation location) {
    CDBFSFindFirstRootEx(findData, location, NULL);
}

void CDBFSFindFirstRootEx(CDBFindData *findData, CDBLocation location, u64* wiiId) {
    char rootPath[256];

    findData->loc = location;
    CDBGenRootPath(rootPath, location, wiiId);
    findData->loc = location;

    CDBFSFindFirst(findData, rootPath, location);
}

void CDBFSFindFirst(CDBFindData* findData, const char* fileName, CDBLocation location) {
    findData->loc = location;
    if (findData->loc == CDB_FS_LOCATION_NAND) {
        CDBFSFindFirstVF(&findData->vf, fileName);
    }
    else {
        CDBFSFindFirstSD(&findData->sd, fileName);
    }
}

void CDBFSFindNext(CDBFindData* findData) {
    if (findData->loc == CDB_FS_LOCATION_NAND) {
        CDBFSFindNextVF(&findData->vf);
    }
    else {
        CDBFSFindNextSD(&findData->sd);
    }
}

void CDBFSFindClose(CDBFindData* findData) {
    if (findData->loc == CDB_FS_LOCATION_NAND) {
        CDBFSFindCloseVF(&findData->vf);
    }
    else {
        CDBFSFindCloseSD(&findData->sd);
    }
}

void CDBFSDeleteDir(char* dirName, CDBLocation location) {
    CDBReportInfo("CDBFSDeleteDir() %s\n", dirName);
    if (location == CDB_FS_LOCATION_NAND) {
        CDBFSDeleteDirVF(dirName);
    }
    else {
        CDBFSDeleteDirSD(dirName);
    }
}
