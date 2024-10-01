#ifndef CDB_PRIVATE_H
#define CDB_PRIVATE_H

#define CDBReport(type, args...)    \
    CDBReport(type);                \
    OSReport(##args)
    
enum {
    CDB_FATAL = 1,
    CDB_ERROR,
    CDB_WARN,
    CDB_INFO
};

#define CDBFatal(args...)   CDBReport(1, ##args)
#define CDBError(args...)   CDBReport(2, ##args)
#define CDBWarn(args...)    CDBReport(3, ##args)
#define CDBInfo(args...)    CDBReport(4, ##args)

#endif // CDB_PRIVATE_H


