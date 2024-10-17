#ifndef REVOLUTION_SOCKET_BASIC_H
#define REVOLUTION_SOCKET_BASIC_H

#include <revolution/types.h>

typedef struct SOPollFD {
    int fd;             // 0x00
    int events;         // 0x04
    int revents;        // 0x08
} SOPollFD;

typedef struct SOHostEnt {
    char*   name;       // 0x00
    char**  aliases;    // 0x04
    s16     addrType;   // 0x08
    s16     length;     // 0x0A
    u8**    addrList;   // 0x0C
} SOHostEnt;

typedef struct SOInAddr {
    u32 addr;           // 0x00
} SOInAddr;

#endif  // REVOLUTION_SOCKET_BASIC_H


