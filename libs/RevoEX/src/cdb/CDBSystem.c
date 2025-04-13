#include <revolution/cdb.h>
#include <private/cdb.h>

#include <revolution/os.h>

static OSMutex s_mutex;
static BOOL    s_mutexInitialized = FALSE;

void MutexInitialized() {
    s_mutexInitialized = TRUE;
}

void CDBLock() {
    OSLockMutex(&s_mutex);
}

void CDBUnlock() {
    OSUnlockMutex(&s_mutex);
}

void CDBReport_(int type) {
    switch (type) {
        case CDBReportTypeFatal: {
            OSReport("(CDB) fatal error : ");
            break;
        }
        case CDBReportTypeError: {
            OSReport("(CDB) error : ");
            break;
        }
        case CDBReportTypeWarn: {
            OSReport("(CDB) warning : ");
            break;
        }
        case CDBReportTypeInfo: {
            OSReport("(CDB) info : ");
            break;
        }
        default: {
            break;
        }
    }
}
