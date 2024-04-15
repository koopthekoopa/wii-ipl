#include <decomp_vscode.h>
#include <size_t.h>

#pragma section code_type ".init"

/*
    @Address 0x81330230
    @Size 0x50
*/
void* memcpy(void* dest, const void* src, size_t count) {
    char* p;
    char* q;
    int i;

    if (src >= dest) {
        p = (char*)src - 1;
        q = (char*)dest - 1;

        for (i = count + 1; --i;) {
            *++q = *++p;
        }
    } else {
        p = (char*)src + count;
        q = (char*)dest + count;

        for (i = count + 1; --i;) {
            *--q = *--p;
        }
    }
    
    return dest;
}


/*
    @Address 0x81330280
    @Size 0xB4
*/
void  __fill_mem(void* dest, int value, unsigned long length) {
#define cDest ((unsigned char*)dest)
#define lDest ((unsigned long*)dest)
    unsigned long val = (unsigned char)value;
    unsigned long i;
    lDest = (unsigned long*)dest;
    cDest = (unsigned char*)dest;

    cDest--;

    if (length >= 32) {
        i = ~(unsigned long)dest & 3;
        
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

/*
    @Address 0x81330334
    @Size 0x30
*/
void* memset(void* dest, int ch, size_t count) {
    __fill_mem(dest, ch, count);
    return dest;
}

#pragma section code_type ".text"

/*
    @Address 0x815F8EFC
    @Size 0x1C
*/
__declspec(weak) size_t strlen(const char* str) {
    size_t size = -1;
    unsigned char* p = (unsigned char*)str - 1;

    do {
        size++;
    } while (*++p);

    return size;
}


