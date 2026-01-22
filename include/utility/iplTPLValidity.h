#ifndef IPL_UTILITY_TPL_VADILITY_H
#define IPL_UTILITY_TPL_VADILITY_H

#include <revolution/tpl.h>

namespace ipl {
    namespace utility {
        class tpl_validity {
            public:
                tpl_validity(TPLPalette* pal, u32 palSize);

                BOOL        is_valid_for_ltx();

                static BOOL isValidForLTX(TPLPalette* pal, u32 palSize) {
                    tpl_validity inst(pal, palSize);
                    return inst.is_valid_for_ltx();
                }
                
            private:
                u8  unk_0x00[16];
        };
    }
}

#endif // IPL_UTILITY_TPL_VADILITY_H
