#ifndef PRIVATE_CDB_REPORT_H
#define PRIVATE_CDB_REPORT_H

#include <revolution/cdb/CDBTypes.h>

#include <revolution/os.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

BOOL    CDBIsPrintDebugMessage(s32 type);
void    CDBReport_(s32 type);

#define CDBReport(type, args...) {      \
    if (CDBIsPrintDebugMessage(type)) { \
        CDBReport_((s32)type);          \
        OSReport(args);                 \
    }                                   \
}

#define CDBReportFatal(args...) CDBReport(CDB_VERBOSE_LEVEL_FATAL,  args)
#define CDBReportError(args...) CDBReport(CDB_VERBOSE_LEVEL_ERROR,  args)
#define CDBReportWarn(args...)  CDBReport(CDB_VERBOSE_LEVEL_WARN,   args)
#define CDBReportInfo(args...)  CDBReport(CDB_VERBOSE_LEVEL_INFO,   args)

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_REPORT_H
