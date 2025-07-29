#ifndef PRIVATE_PF_STR_H
#define PRIVATE_PF_STR_H

#include <revolution/types.h>

enum {
    PF_STR_TARGET_HEAD = 1,
    PF_STR_TARGET_TAIL,
};

enum {
    PF_STR_CODE_MODE_CHAR = 1,
    PF_STR_CODE_MODE_WCHAR,
};

typedef struct PF_STR {
    const s8*   p_head;     // 0x00
    const s8*   p_tail;     // 0x04

    u32         code_mode;  // 0x08
} PF_STR;

#endif // PRIVATE_PF_STR_H
