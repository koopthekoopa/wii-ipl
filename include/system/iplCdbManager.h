#ifndef IPL_CDB_MANAGER_H
#define IPL_CDB_MANAGER_H

#include <revolution/types.h>
#include <revolution/cdb.h>

namespace ipl {
    namespace cdb {
        class Manager {
            public:
                void    unmountSD();
                void    mountSD();

                CDBErr getCDBResult() {
                    return mCDBResult;
                }

                void mountSD_if_unmounted() {
                    if (!mbSDMounted) {
                        mountSD();
                    }
                }

                void unmountSD2_if_mounted() {
                    if (mbSDMounted) {
                        unmountSD();
                    }
                }

            private:
                int     unk_0x00;
                CDBErr  mCDBResult;     // 0x04
                int     unk_0x08;
                int     unk_0x0C;
                int     unk_0x10;
                bool    mbSDMounted;    // 0x14
        };
    }
}

#endif // IPL_CDB_MANAGER_H
