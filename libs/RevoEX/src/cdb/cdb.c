#include <revolution/cdb.h>
#include <private/cdb.h>

#include <revolution/vf.h>

#pragma sym on

CDBErr CDBInit(void *work) {
    return CDBInitEx(work, 0, 0);
}

CDBErr CDBInitEx(void *work, int unk0, int unk1) {
    CDBErr ret;

    if (VFIsAvailable() != TRUE) {
        CDBReportFatal("VF is not initialized\n");
        return CDB_ERROR_VF_INIT_FAIL;
    }

    ret = CDBFSInit(unk0, unk1);
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

    ret = CDBFSUninit();
    if (ret != CDB_ERROR_OK) {
        return ret;
    }

    CDBReportInfo("CDBSystem has been uninitialized\n");

    return CDB_ERROR_OK;
}

s32 CDBGetFreeSize() {
    return VFGetDriveFreeSize("CDB");
}
