#ifndef NW4R_IPL_ASSERT_H
#define NW4R_IPL_ASSERT_H

#include <config.h>

#include <revolution.h>

namespace nw4r {
    namespace ipl {
        /**
         * @brief Displays the Error #004 message.
         */
        inline void Panic(const char* file, int line, const char* result) {
            #pragma unused(file)
            #pragma unused(line)
            #pragma unused(result)
            
            GXColor clrBack = (GXColor){ 0, 0, 0, 0 };
            GXColor clrFont = (GXColor){ 255, 255, 255, 255 };
            OSFatal(clrFont, clrBack, "Error#004\nAn error has occurred.\nThe system files are corrupted.");
        }
        
    }
}

#endif // NW4R_IPL_ASSERT_H


