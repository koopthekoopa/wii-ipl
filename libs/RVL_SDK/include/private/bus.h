#ifndef PRIVATE_BUS_H
#define PRIVATE_BUS_H

#include <revolution/types.h>

#define RAMRead32(a)        (*(u32*) (a))
#define RAMWrite32(a, v)    (*(u32*) (a)) = ((u32)(v))
#define BUSRead32(a)        (*(vu32*)(a))
#define BUSWrite32(a, v)    (*(vu32*)(a)) = ((u32)(v))

#define RAMRead16(a)        (*(u16*) (a))
#define RAMWrite16(a, v)    (*(u16*) (a)) = ((u16)(v))
#define BUSRead16(a)        (*(vu16*)(a))
#define BUSWrite16(a, v)    (*(vu16*)(a)) = ((u16)(v))

#define RAMRead8(a)         (*(u8*) (a))
#define RAMWrite8(a, v)     (*(u8*) (a)) = ((u8)(v))
#define BUSRead8(a)         (*(vu8*)(a))
#define BUSWrite8(a, v)     (*(vu8*)(a)) = ((u8)(v))

#define RAMReadPtr32(a)     ((void*)(BUSRead32(a)))

#define SET_FLAG(x, b)      (x) |= (b)
#define CLEAR_FLAG(x, b)    (x) &= (~(b))
#define HAS_FLAG(x, b)      ((x) & b)

#endif // PRIVATE_BUS_H
