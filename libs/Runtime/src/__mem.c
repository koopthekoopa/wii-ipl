#include <decomp.h>
#include <size_t.h>

#pragma section code_type ".init"

void* memcpy(void* dst, const void* src, size_t count) {
    char*   p;
    char*   q;
    int     i;

    if (src >= dst) {
        p = (char*)src - 1;
        q = (char*)dst - 1;

        for (i = count + 1; --i;) {
            *++q = *++p;
        }
    }
    else {
        p = (char*)src + count;
        q = (char*)dst + count;

        for (i = count + 1; --i;) {
            *--q = *--p;
        }
    }
    
    return dst;
}

void  __fill_mem(void* dst, int value, unsigned long length) {
#define cDest ((unsigned char*)dst)
#define lDest ((unsigned long*)dst)
    unsigned long val = (unsigned char)value;
    unsigned long i;
    lDest = (unsigned long*)dst;
    cDest = (unsigned char*)dst;

    cDest--;

    if (length >= 32) {
        i = ~(unsigned long)dst & 3;
        
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

void* memset(void* dst, int ch, size_t count) {
    __fill_mem(dst, ch, count);
    return dst;
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


