
// Yes, versions other than 4.3U align by 8.
#if defined(VERSION_43U)
#pragma function_align 32
#else
#pragma function_align 8
#endif // VERSION_43U

#include <TRK_Hollywood_Revolution.h>

#pragma force_active on

// Encapsulating function to get the file to align properly
asm void __targsupp() {
#ifdef __MWERKS__ // clang-format off
    nofralloc
    entry TRKAccessFile
        twi 31, r0, 0
        blr
    entry TRKOpenFile
        twi 31, r0, 0
        blr
    entry TRKCloseFile
        twi 31, r0, 0
        blr
    entry TRKPositionFile
        twi 31, r0, 0
        blr
#endif // clang-format on
}
