#include <revolution/cdb.h>
#include <private/cdb.h>

static CDBCryptBuf* s_cryptBuf;

void CDBCryptBufSysInit(CDBCryptBuf* cryptBuf) {
    s_cryptBuf = cryptBuf;
    cryptBuf->allocated = FALSE;
}

// Some weird crap is going on with these functions.

CDBErr CDBCryptBufAllocate(CDBCryptBuf* cryptBuf) {
    CDBErr err;

    if (s_cryptBuf->allocated == FALSE) {
        cryptBuf->buffer32[0] = (u32)s_cryptBuf;
        s_cryptBuf->allocated = TRUE;
        return CDB_ERROR_OK;
    }
    else {
        CDBReportError("failed to allocate crypt buffer\n");
        return CDB_ERROR_CRYPT_ALLOC_FAIL;
    }
}

CDBErr CDBCryptBufFree(CDBCryptBuf* cryptBuf) {
    CDBErr err;

    if ((CDBCryptBuf*)*cryptBuf->buffer32 == s_cryptBuf) {
        s_cryptBuf->allocated = FALSE;
        *cryptBuf->buffer32 = 0;
        return CDB_ERROR_OK;
    }
    else {
        CDBReportError("failed to free crypt buffer\n");
        return CDB_ERROR_1;
    }
}
