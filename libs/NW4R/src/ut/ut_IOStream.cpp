#include <nw4r/ut/IOStream.h>

namespace nw4r {
    namespace ut {
        NW4R_UT_GET_RUNTIME_TYPEINFO(IOStream);

        bool IOStream::ReadAsync(void* pDst, u32 size, IOStreamCallback pCallback, void* pCallbackArg) {
            return false;
        }

        void IOStream::Write(const void* pSrc, u32 size) {}

        bool IOStream::WriteAsync(const void* pSrc, u32 size, IOStreamCallback pCallback, void* pCallbackArg) {
            return false;
        }

        bool IOStream::IsBusy() const {
            return false;
        }
    }
}
