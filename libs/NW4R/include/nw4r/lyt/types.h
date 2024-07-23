#ifndef NW4R_LAYOUT_TYPES_H
#define NW4R_LAYOUT_TYPES_H

#include <revolution/types.h>
#include <nw4r/math/types.h>
#include <nw4r/ut/LinkList.h>
#include <stddef.h>

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
        };

        class AnimationLink {
            public:
                AnimationLink() : mNode() {}

                ut::LinkListNode    mNode;
        };
    }
}

#endif // NW4R_LAYOUT_TYPES_H


