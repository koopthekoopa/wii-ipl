#ifndef IPL_PLAY_TIME_H
#define IPL_PLAY_TIME_H

#include <revolution/types.h>

#include <revolution/cdb.h>

namespace ipl {
    class PlayTimeLog {
        public:
            void    check(CDBRecord* record);

        private:
            u8  unk_0x00[0x120];
    };
}

#endif // IPL_PLAY_TIME_H
