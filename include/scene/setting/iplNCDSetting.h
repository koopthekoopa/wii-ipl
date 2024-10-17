#ifndef IPL_NCD_SETTING_H
#define IPL_NCD_SETTING_H

#include <revolution/ncd.h>

namespace ipl {
    namespace ncd {
        class NCDSetting {
            public:
                static unsigned char* getMacAddr();
        };
    }
}

#endif // IPL_NCD_SETTING_H


