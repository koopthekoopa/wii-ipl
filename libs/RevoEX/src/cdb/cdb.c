#include <revolution/cdb.h>
#include <private/cdb.h>

#include <revolution/vf.h>

CDBErr CDBInit(void* work) {
    return CDBInitEx(work, NULL, 0);
}

CDBErr CDBInitEx(void* work, void* fsCacheBuffer, u32 fsCacheSize) {
    CDBErr ret;

    // Check is VF is initialized
    if (VFIsAvailable() != VF_IS_AVAILABLE) {
        CDBReportFatal("VF is not initialized\n");
        return CDB_ERROR_VF_INIT_FAIL;
    }

    // Filesystem init
    ret = CDBFSInit(fsCacheBuffer, fsCacheSize);
    if (ret != CDB_ERROR_OK) {
        return ret;
    }

    CDBDatabaseInstancePoolInit(work);
    CDBRecordPoolInit(work);

    CDBFSSDInit();

    MutexInitialized();

    ret = CDBInitHashedMacAddr();
    if (ret != CDB_ERROR_OK) {
        return ret;
    }

    CDBReportInfo("CDBSystem has been initialized\n");

    return CDB_ERROR_OK;
}

CDBErr CDBUninit() {
    CDBErr ret;

    if (CDBFSSDIsMounted()) {
        CDBReportWarn("SD is mounted to CDB\n");
        return CDB_ERROR_SD_IS_MOUNTED;
    }

    ret = CDBDatabaseCheckOpenRecord();
    if (ret != CDB_ERROR_OK) {
        return ret;
    }

    ret = CDBDatabaseCheckOpenDatabase();
    if (ret != CDB_ERROR_OK) {
        return ret;
    }

    // Goodbye Filesystem
    ret = CDBFSUninit();
    if (ret != CDB_ERROR_OK) {
        return ret;
    }

    CDBReportInfo("CDBSystem has been uninitialized\n");

    return CDB_ERROR_OK;
}

s32 CDBGetFreeSize() {
    return VFGetDriveFreeSize(CDB_CFG_VF_DRIVE_LETTER);
}
