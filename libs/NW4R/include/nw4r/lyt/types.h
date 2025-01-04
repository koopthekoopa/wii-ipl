#ifndef NW4R_LYT_TYPES_H
#define NW4R_LYT_TYPES_H

#include <revolution/types.h>

#include <nw4r/math/types.h>
#include <nw4r/ut/LinkList.h>

#define NW4R_RES_NAME_SIZE  17

namespace nw4r {
    namespace lyt {
        namespace detail {
            template<typename T> inline void SetBit(T* pBits, int pos, bool val) {
                const T mask = (T)(~(1 << pos));
                *pBits &= mask;
                *pBits |= (val ? 1 : 0) << pos;
            }

            template<typename T> inline bool TestBit(T bits, int pos) {
                const T mask = (T)(1 << pos);
                return 0 != (bits & mask);
            }
        }
        
        typedef struct Size {
            Size() : width(), height() {}
            
            Size(f32 aWidth, f32 aHeight) : width(aWidth), height(aHeight) {}

            Size(const Size& other) : width(other.width), height(other.height) {}

            f32 width;
            f32 height;
        } Size;

        enum {
            TEXT_COLOR_FORE = 0,
            TEXT_COLOR_BACK,
            TEXT_COLOR_MAX
        };
    }
}

#endif // NW4R_LYT_TYPES_H
