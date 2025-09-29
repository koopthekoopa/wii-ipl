#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

namespace ipl {
    namespace cs {
        namespace iplimage {
            void* allocator(CHANSVm* vm, u32 size) {
                u8* buffer = new(System::getCSManager()->getHeap(), 32) u8[size];
                return buffer;
            }

            BOOL init(CHANSVm* vm) {
                CHANSVmImageRegisterAllocator(allocator, NULL);
                return TRUE;
            }
        }
    }
}
