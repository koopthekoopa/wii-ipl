#include <decomp_ide.h>
#include <size_t.h>

#pragma section code_type ".init"

void* memcpy(void* pDest, const void* pSrc, size_t count) {
    char*   p;
    char*   q;
    int     i;

    if (pSrc >= pDest) {
        p = (char*)pSrc - 1;
        q = (char*)pDest - 1;

        for (i = count + 1; --i;) {
            *++q = *++p;
        }
    } else {
        p = (char*)pSrc + count;
        q = (char*)pDest + count;

        for (i = count + 1; --i;) {
            *--q = *--p;
        }
    }
    
    return pDest;
}

void  __fill_mem(void* pDest, int value, unsigned long length) {
#define cDest ((unsigned char*)pDest)
#define lDest ((unsigned long*)pDest)
    unsigned long val = (unsigned char)value;
    unsigned long i;
    lDest = (unsigned long*)pDest;
    cDest = (unsigned char*)pDest;

    cDest--;

    if (length >= 32) {
        i = ~(unsigned long)pDest & 3;
        
        if (i) {
            length -= i;
            do {
                *++cDest = val;
            } while(--i);
        }

        if (val) {
            val |= val << 24 | val << 16 | val << 8;
        }

        lDest = (unsigned long*)(cDest + 1) - 1;

        i = length >> 5;
        if (i) {
            do {
                *++lDest = val;
                *++lDest = val;
                *++lDest = val;
                *++lDest = val;
                *++lDest = val;
                *++lDest = val;
                *++lDest = val;
                *++lDest = val;
            } while (--i);
        }

        i = (length & 31) >> 2;

        if (i) {
            do {
                *++lDest = val;
            } while (--i);
        }

        cDest = (unsigned char*)(lDest + 1) - 1;

        length &= 3;
    }

    if (length) {
        do {
            *++cDest = val;
        } while(--length);
    }
#undef cDest
#undef lDest
}

void* memset(void* pDest, int ch, size_t count) {
    __fill_mem(pDest, ch, count);
    return pDest;
}

#pragma section code_type ".text"

__declspec(weak) size_t strlen(const char* str) {
    size_t          size = -1;
    unsigned char*  p = (unsigned char*)str - 1;

    do {
        size++;
    } while (*++p);

    return size;
}


