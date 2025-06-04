#include <revolution/os.h>

void*           __OSArenaLo = (void*)-1;
void*           __OSArenaHi = NULL;

static void*    s_mem2ArenaLo = (void*)-1;
static void*    s_mem2ArenaHi = NULL;

void* OSGetMEM1ArenaHi()            { return __OSArenaHi; }
void* OSGetMEM2ArenaHi()            { return s_mem2ArenaHi; }
void* OSGetArenaHi()                { return OSGetMEM1ArenaHi(); }

void* OSGetMEM1ArenaLo()            { return __OSArenaLo; }
void* OSGetMEM2ArenaLo()            { return s_mem2ArenaLo; }
void* OSGetArenaLo()                { return OSGetMEM1ArenaLo(); }

void  OSSetMEM1ArenaHi(void* hi)    { __OSArenaHi = hi; }
void  OSSetMEM2ArenaHi(void* hi)    { s_mem2ArenaHi = hi; }
void  OSSetArenaHi(void* hi)        { OSSetMEM1ArenaHi(hi); }

void  OSSetMEM1ArenaLo(void* lo)    { __OSArenaLo = lo; }
void  OSSetMEM2ArenaLo(void* lo)    { s_mem2ArenaLo = lo; }
void  OSSetArenaLo(void* lo)        { OSSetMEM1ArenaLo(lo); }

void* OSAllocFromMEM1ArenaLo(u32 size, u32 align) {
    u8* begin = PTR_ROUNDUP(OSGetMEM1ArenaLo(), align);
    u8* end = begin + size;
    end = PTR_ROUNDUP(end, align);

    OSSetMEM1ArenaLo(end);

    return begin;
}

void* OSAllocFromMEM2ArenaLo(u32 size, u32 align) {
    u8* begin = PTR_ROUNDUP(OSGetMEM2ArenaLo(), align);
    u8* end = begin + size;
    end = PTR_ROUNDUP(end, align);

    OSSetMEM2ArenaLo(end);

    return begin;
}
