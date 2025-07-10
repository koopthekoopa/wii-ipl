#include "system/iplCdbWrapper.h"

#include <revolution/os.h>
#include <revolution/nand.h>

#include "system/iplPlayTimeLog.h"

namespace ipl {
    namespace cdb {
        namespace wrapper {
            BOOL    _condition(CDBErr result, int tries);
            #define MAX_TRIES   10

            #define CDB_WRAPPER(r)                                          \
                int tries = 0;                                               \
                CDBErr result;                                                \
                do { result = r; } while (_condition(result, ++tries));        \
                if (tries == MAX_TRIES) { result = CDB_ERROR_FATAL_ERROR; }     \
                return result;

            CDBErr  init(void* work)    { CDB_WRAPPER(CDBInit(work)); }

            BOOL _condition(CDBErr result, int tries) {
                BOOL bTryAgain = FALSE;

                if (result == CDB_ERROR_13) {
                    int nandResult = CDBGetLastNANDError();

                    bTryAgain = FALSE;

                    // weird recast...
                    if (((int)nandResult == NAND_RESULT_BUSY || (int)nandResult == NAND_RESULT_ALLOC_FAILED) && tries < MAX_TRIES) {
                        bTryAgain = TRUE;
                    }
                    if (bTryAgain) {
                        OSSleepMilliseconds(50);
                    }
                }

                return bTryAgain;
            }
        }
    }

    void search_cb_(void* playTime, CDBRecord* record) {
        PlayTimeLog* playTimeLog = reinterpret_cast<PlayTimeLog*>(playTime);
        playTimeLog->check(record);
    }
}
