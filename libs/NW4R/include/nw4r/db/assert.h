#ifndef NW4R_DB_ASSERT_H
#define NW4R_DB_ASSERT_H

#include <revolution/os/OSError.h>

#include <revolution/gx/GXStruct.h>

/**
 * NW4R asserts were removed on the first release
 * But then after realising it actually prevented homebrew code, they brought them back,
 * However instead the screen now displays "Error 004".
 */
#define NW4R_ASSERT(x) {                                                                \
    if (!(x)) {                                                                         \
        GXColor front = {255, 255, 255, 0};                                             \
        GXColor back  = { 0,   0,   0,  0};                                             \
        OSFatal((GXColor)front,                                                         \
                (GXColor)back,                                                          \
                "Error#004\nAn error has occurred.\nThe system files are corrupted.");  \
    }                                                                                   \
}

#endif // NW4R_DB_ASSERT_H
