#ifndef NW4R_ANTI_UNAUTHORIZED_MODDING_H
#define NW4R_ANTI_UNAUTHORIZED_MODDING_H

#include <config.h>

#include <revolution.h>

namespace nw4r {
    namespace ipl {
        /**
         * @brief Displays the Error #004 message.
         * @note To disable this function, head to `config.h` and define `UNBLOCK_HOMEBREW_EXPLOITS`
         */
        inline void BlockUnauthorizedMod() {
        #ifndef UNBLOCK_HOMEBREW_EXPLOITS
            GXColor clrBack = (GXColor){ 0, 0, 0, 0 };
            GXColor clrFont = (GXColor){ 255, 255, 255, 255 };
            OSFatal(clrFont, clrBack, "Error#004\nAn error has occurred.\nThe system files are corrupted.");
        #endif // UNBLOCK_HOMEBREW_EXPLOITS
        }
    }
}


#endif // NW4R_ANTI_UNAUTHORIZED_MODDING_H


