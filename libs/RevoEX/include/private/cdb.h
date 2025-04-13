#ifndef PRIVATE_CDB_H
#define PRIVATE_CDB_H

#include <revolution/os.h>
#include <revolution/cdb/CDBTypes.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

enum {
    CDBReportTypeFatal = 1,
    CDBReportTypeError,
    CDBReportTypeWarn,
    CDBReportTypeInfo,
};

void    MutexInitialized();

BOOL    CDBIsPrintDebugMessage(int type);
void    CDBReport_(int type);

#define CDBReport(type, args...)    \
    if (CDBIsPrintDebugMessage(type)) { \
        CDBReport_(type);               \
        OSReport(args);                 \
    }

#define CDBReportFatal(args...) CDBReport(CDBReportTypeFatal, args)
#define CDBReportError(args...) CDBReport(CDBReportTypeError, args)
#define CDBReportWarn(args...)  CDBReport(CDBReportTypeWarn, args)
#define CDBReportInfo(args...)  CDBReport(CDBReportTypeInfo, args)

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_H
