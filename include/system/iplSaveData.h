#ifndef IPL_SAVE_DATA_H
#define IPL_SAVE_DATA_H

#include <revolution.h>

namespace ipl {
    namespace savedata {
        class Manager {
            public:
                Manager();

                bool isResetAcceptable();
        };
    }
}

#endif // IPL_SAVE_DATA_H


