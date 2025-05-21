#ifndef GLOBAL_HEADERS_DECOMP_SHUT_UP_IDE_H
#define DGLOBAL_HEADERS_ECOMP_SHUT_UP_IDE_H

#ifndef __MWERKS__

#define asm
#define register
#define __attribute__(x)
#define __declspec(x)

extern void         __sync();
extern unsigned int __cntlzw(unsigned int value);
extern void         __memclr(void* buffer, int len);
extern unsigned int __rlwimi(unsigned int a, unsigned int b, unsigned int c, unsigned int d, unsigned int e);
extern void*        __alloca(unsigned int blockSize);
extern int          __abs(int n);

#endif

#endif // GLOBAL_HEADERS_DECOMP_SHUT_UP_IDE_H
