#include <nw4r/ut/Font.h>

namespace nw4r {
    namespace ut {
        /* All of RomFont is deadstripped except for one generated weak function of the Font's desctructor. 
           All what this does is generate that said weak. */

        class RomFont : public Font {
            RomFont();
            virtual ~RomFont() {}
        };

        RomFont::RomFont() :
        Font() {}
    }
}
