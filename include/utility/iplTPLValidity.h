#ifndef IPL_UTILITY_TPL_VADILITY_H
#define IPL_UTILITY_TPL_VADILITY_H

#include <revolution/tpl.h>

namespace ipl {
    namespace utility {
        class tpl_validity {
        public:
            tpl_validity(TPLPalette* pal, u32 palSize);

            BOOL is_valid_for_ltx();

            static BOOL isValidForLTX(TPLPalette* pal, u32 palSize) {
                tpl_validity inst(pal, palSize);
                return inst.is_valid_for_ltx();
            }

        private:
            BOOL is_valid_cmn();
            BOOL is_valid();

            s32 mpPalette;      // 0x00
            s32 mpTexDesc;      // 0x04
            s32 mpTexHeader;    // 0x08
            s32 mpClutHeader;   // 0x0C
            s32 mpTexData;      // 0x10
            s32 mpClutData;     // 0x14
        };
    }  // namespace utility
}  // namespace ipl

#endif  // IPL_UTILITY_TPL_VADILITY_H
