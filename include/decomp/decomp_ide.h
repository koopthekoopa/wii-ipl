#ifndef DECOMP_SHUT_UP_IDE_H
#define DECOMP_SHUT_UP_IDE_H

#ifndef __MWERKS__

#define asm
#define __attribute__(x)
#define __declspec(x)

extern void         __sync();
extern unsigned int __cntlzw(unsigned int value);
extern void         __memclr(void* buffer, int len);
extern unsigned int __rlwimi(unsigned int a, unsigned int b, unsigned int c, unsigned int d, unsigned int e);

#endif

#endif // DECOMP_SHUT_UP_IDE_H
