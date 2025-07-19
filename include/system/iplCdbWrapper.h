#ifndef IPL_CDB_WRAPPER_H
#define IPL_CDB_WRAPPER_H

#include <revolution/cdb.h>

namespace ipl {
    namespace cdb {
        namespace wrapper {
            // only one
            CDBErr  init(void* work);
        }
    }
    
}

#endif // IPL_CDB_WRAPPER_H
