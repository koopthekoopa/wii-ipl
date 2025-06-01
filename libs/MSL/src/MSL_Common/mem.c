#include <internal/mem_funcs.h>
#include <stddef.h>

#pragma exceptions on

void* memmove(void* dest, const void* src, size_t count) {
    const char* cur;
    char* dst;
    int rev = ((unsigned long)src < (unsigned long)dest);

    if (count >= 0x20) {
        int isUnaligned = (((int)dest ^ (int)src)) & 0x3;
        if (isUnaligned) {
            if (rev == 0) {
                __copy_longs_unaligned(dest, src, count);
            }
            else {
                __copy_longs_rev_unaligned(dest, src, count);
            }
        }
        else {
            if (rev == 0) {
                __copy_longs_aligned(dest, src, count);
            }
            else {
                __copy_longs_rev_aligned(dest, src, count);
            }
        }

        return dest;
    }

    if (rev == 0) {
        for (cur = (const char*)src - 1, dst = (char*)dest - 1, count++; --count;) {
            *++dst = *++cur;
        }
    }
    else {
        for (cur = (const char*)src + count, dst = (char*)dest + count, count++; --count;) {
            *--dst = *--cur;
        }
    }
    return dest;
}

void* memchr(const void* ptr, int ch, size_t count) {
    const unsigned char* cur;
    unsigned long val = (ch & 0xFF);

    for (cur = (unsigned char*)ptr - 1, count++; --count;) {
        if ((*++cur & 0xFF) == val) {
            return (void*)cur;
        }
    }

    return 0;
}

void* __memrchr(const void* ptr, int ch, size_t count) {
    const unsigned char* cur;
    size_t val = (ch & 0xFF);

    for (cur = (unsigned char*)ptr + count, count++; --count;) {
        if (*--cur == val) {
            return (void*)cur;
        }
    }

    return 0;
}

int memcmp(const void* ptr1, const void* ptr2, size_t num) {
    const unsigned char* p1;
    const unsigned char* p2;

    for (p1 = (const unsigned char*)ptr1 - 1, p2 = (const unsigned char*)ptr2 - 1, num++; --num;) {
        if (*++p1 != *++p2) {
            return (*p1 < *p2) ? -1 : + 1;
        }
    }

    return 0;
}
