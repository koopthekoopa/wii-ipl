#ifndef IPL_CDB_WRAPPER_H
#define IPL_CDB_WRAPPER_H

#include <revolution/cdb.h>

namespace ipl {
    void    search_cb_(void* playTime, CDBRecord* record);
    namespace cdb {
        namespace wrapper {
            CDBErr  init(void* work);
        }
    }
    
}

#endif // IPL_CDB_WRAPPER_H
