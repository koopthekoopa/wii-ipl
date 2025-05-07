#ifndef NW4R_UT_INLINE_FUNCTIONS_H
#define NW4R_UT_INLINE_FUNCTIONS_H

#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        class NonCopyable {
            protected:
                NonCopyable()   {}
                ~NonCopyable()  {}
            private:
                NonCopyable(const NonCopyable&);
                const NonCopyable& operator=(const NonCopyable&);
        };

        template<typename T> inline T Min(T a, T b) {
            return (a > b) ? b : a;
        }

        template<typename T> inline T Max(T a, T b) {
            return (a < b) ? b : a;
        }

        template<typename T> inline T Clamp(T x, T low, T high) {
            return (x > high) ? high : ((x < low) ? low : x);
        }

        template<typename T> inline T BitExtract(T bits, int pos, int len) {
            T mask = (1 << len) - 1;
            return (bits >> pos)&  mask;
        }

        inline u32 GetIntPtr(const void* pPtr) {
            return reinterpret_cast<u32>(pPtr);
        }
        
        template<typename T> inline const void* AddOffsetToPtr(const void* pBase, T offset) {
            return reinterpret_cast<const void*>(GetIntPtr(pBase) + offset);
        }
        template<typename T> inline void* AddOffsetToPtr(void* pBase, T offset) {
            return reinterpret_cast<void*>(GetIntPtr(pBase) + offset);
        }
        
        inline s32 GetOffsetFromPtr(const void* pStart, const void* pEnd) {
            return static_cast<s32>(GetIntPtr(pEnd) - GetIntPtr(pStart));
        }
        
        inline int ComparePtr(const void* pPtr1, const void* pPtr2) {
            return static_cast<int>(GetIntPtr(pPtr1) - GetIntPtr(pPtr2));
        }

        template<typename T> inline T RoundUp(T t, unsigned int alignment) {
            return (alignment + t - 1)&  ~(alignment - 1);
        }
        
        template<typename T> inline void* RoundUp(T* pPtr, unsigned int alignment) {
            u32 value = reinterpret_cast<u32>(pPtr);
            u32 rounded = (alignment + value - 1)&  ~(alignment - 1);
            return reinterpret_cast<void*>(rounded);
        }
        
        template<typename T> inline T RoundDown(T t, unsigned int alignment) {
            return t&  ~(alignment - 1);
        }
        
        template<typename T> inline void* RoundDown(T* pPtr, unsigned int alignment) {
            u32 value = reinterpret_cast<u32>(pPtr);
            u32 rounded = value&  ~(alignment - 1);
            return reinterpret_cast<void*>(rounded);
        }
    }
}

#endif // NW4R_UT_INLINE_FUNCTIONS_H
