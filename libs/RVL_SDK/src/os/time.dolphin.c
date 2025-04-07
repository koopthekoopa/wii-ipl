#include <revolution/os.h>
#include <private/os.h>

OSTime __get_clock() {
    return __OSGetSystemTime();
}

u32 __get_time() {
    return OSTicksToSeconds(OSGetTime()) - 0x43E83E00;
}

int __to_gm_time() {
    return 0;
}
