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

            TPLPalette* mpPalette;         // 0x00
            TPLDescriptor* mpTexDesc;      // 0x04
            TPLHeader* mpTexHeader;        // 0x08
            TPLClutHeader* mpClutHeader;   // 0x0C
            char* mpTexData;               // 0x10
            char* mpClutData;              // 0x14
        };
    }  // namespace utility
}  // namespace ipl

#endif  // IPL_UTILITY_TPL_VADILITY_H
