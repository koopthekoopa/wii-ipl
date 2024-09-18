#ifndef IPL_ANTI_HOMEBREW_H
#define IPL_ANTI_HOMEBREW_H

#include <config.h>

#include <revolution.h>

/**
 * @brief Displays the Error #004 message.
 * @note To disable this function, head to `config.h` and define `UNBLOCK_HOMEBREW_EXPLOITS`
 */
inline void IPLAntiModMessage() {
#ifndef UNBLOCK_HOMEBREW_EXPLOITS
    GXColor clrBack = (GXColor){ 0, 0, 0, 0 };
    GXColor clrFont = (GXColor){ 255, 255, 255, 255 };
    OSFatal(clrFont, clrBack, "Error#004\nAn error has occurred.\nThe system files are corrupted.");
#endif // UNBLOCK_HOMEBREW_EXPLOITS
}


#endif // IPL_ANTI_HOMEBREW_H


