#ifndef DECOMP_SHUT_UP_IDE_H
#define DECOMP_SHUT_UP_IDE_H

#ifndef __MWERKS__
#define asm
#define __attribute__(x)
#define __declspec(x)

extern void __sync();
extern unsigned int __cntlzw(unsigned int value);
#endif

#endif // DECOMP_SHUT_UP_IDE_H
