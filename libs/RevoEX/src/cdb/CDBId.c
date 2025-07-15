#include <revolution/cdb.h>
#include <private/cdb.h>

#include <revolution/vf.h>

#include <stdio.h>

CDBErr GenCDBIdNumber(CDBId* cdbID) {
    char    confPath[256];
    VFFILE* confFile;

    CDBErr  err;
    VFError vfErr;

    sprintf(confPath, "%s%s%s", CDB_CFG_VF_DRIVE_ROOT, "/", CDB_CFG_CDBID_FILE);
    confFile = VFOpenFile(confPath, "r+", 0);

    if (confFile == NULL) {
        confFile = VFCreateFile(confPath, 0);

        cdbID->num = 0;

        if (confFile == NULL) {
            CDBReportError("failed to create %s\n", CDB_CFG_CDBID_FILE);
            return CDBOnVFErrorOccured(CDBGetLastVFError());
        }

        vfErr = VFWriteFile(confFile, cdbID, sizeof(CDBId));
        if (vfErr != VF_ERR_SUCCESS) {
            return CDBOnVFErrorOccured(vfErr);
        }

        vfErr = VFCloseFile(confFile);
        if (vfErr != VF_ERR_SUCCESS) {
            return CDBOnVFErrorOccured(vfErr);
        }

        return CDB_ERROR_OK;
    }

    vfErr = VFReadFile(confFile, cdbID, sizeof(CDBId), NULL);
    if (vfErr != VF_ERR_SUCCESS) {
        return CDBOnVFErrorOccured(vfErr);
    }

    cdbID->num++;

    vfErr = VFSeekFile(confFile, 0, VF_SEEK_ORIGIN_BEGIN);
    if (vfErr != VF_ERR_SUCCESS) {
        return CDBOnVFErrorOccured(vfErr);
    }

    vfErr = VFWriteFile(confFile, cdbID, sizeof(CDBId));
    if (vfErr != VF_ERR_SUCCESS) {
        return CDBOnVFErrorOccured(vfErr);
    }

    vfErr = VFCloseFile(confFile);
    if (vfErr != VF_ERR_SUCCESS) {
        return CDBOnVFErrorOccured(vfErr);
    }

    return CDB_ERROR_OK;
}
