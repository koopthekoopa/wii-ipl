#include <NMWException.h>

#define NUM_FRAGMENT    1

typedef int Bool;
#define False   0
#define True    1

#define Null    0

#if __MWERKS__
#pragma exceptions on 
#endif

typedef struct ProcessInfo {
    __eti_init_info*    exception_info; // 0x00
    char*               TOC;            // 0x04
    Bool                active;         // 0x08
} ProcessInfo;

static ProcessInfo fragmentInfo[1];

int __register_fragment(struct __eti_init_info* info, char* TOC) {
    ProcessInfo* f;
    int i;
    
    for (i = 0, f = fragmentInfo; i < 1; ++i, ++f) {
        if (f->active == False) {
            f->exception_info = info;
            f->TOC = TOC;
            f->active = True;
            return i;
        }
    }
    
    return -1;
}

void __unregister_fragment(int fragmentId) {
    ProcessInfo* f;
    if (fragmentId >= 0 && fragmentId < 1) {
        f = &fragmentInfo[fragmentId];
        f->exception_info = Null;
        f->TOC = Null;
        f->active = False;
    }
}
