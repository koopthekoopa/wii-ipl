#include <string.h>

#define K1 0x80808080
#define K2 0xFEFEFEFF

const unsigned long long nullLong = 0ULL;
char* strtokEmpty = (char*)&nullLong;
char* strtokPos = (char*)&nullLong;

char* strcpy(char* dst, const char* src) {
    unsigned char* destb;
    unsigned char* fromb;
    unsigned int w, t, align;
    unsigned int k1;
    unsigned int k2;

    fromb = (unsigned char*)src;
    destb = (unsigned char*)dst;

    if ((align = ((int)fromb & 3)) == ((int)destb & 3)) {
        if (align) {
            if ((*destb = *fromb) == 0) {
                return dst;
            }

            for (align = 3 - align; align; align--) {
                if ((*(++destb) = *(++fromb)) == 0) {
                    return dst;
                }
            }

            ++destb;
            ++fromb;
        }

        k1 = K1;
        k2 = K2;

        w = *((int*)(fromb));
        t = w + k2;
        t &= ~w;
        t &= k1;
        if (t == 0) {
            destb -= sizeof(int);

            do {
                *(int*)(destb += sizeof(int)) = w;
                w = *(int*)(fromb += sizeof(int));
                t = w + k2;
                t &= ~w;
                t &= k1;

                if (t) {
                    break;
                }
            } while (1);

            destb += sizeof(int);
        }
    }

    if ((*destb = *fromb) == 0) {
        return dst;
    }
    do {
        if ((*(++destb) = *(++fromb)) == 0) {
            return dst;
        }

    } while (1);

    return dst;
}

char* strncpy(char* dst, const char* src, size_t n) {
    const unsigned char* p = (const unsigned char*)src - 1;
    unsigned char* q = (unsigned char*)dst - 1;
    n++;

    while (--n) {
        if (!(*++q = *++p)) {
            while (--n) {
                *++q = 0;
            }
            break;
        }
    }

    return dst;
}

char* strcat(char* dst, const char* src) {
    const unsigned char* p = (unsigned char*)src - 1;
    unsigned char* q = (unsigned char*)dst - 1;

    while (*++q)
        ;
    q--;
    while (*++q = *++p)
        ;

    return dst;
}

char* strncat(char* dst, const char* src, size_t n) {
    const unsigned char* p = (const unsigned char*)src - 1;
    unsigned char* q = (unsigned char*)dst - 1;
    unsigned char c;

    while (*++q)
        ;
    q--;
    n++;

    while (--n != 0) {
        c = *++p;
        *++q = c;
        if (c == 0) {
            q--;
            break;
        }
    }

    *++q = 0;
    return dst;
}

int strcmp(const char* s1, const char* s2) {
    register unsigned char* left = (unsigned char*)s1;
    register unsigned char* right = (unsigned char*)s2;
    int k1, k2, align, x, dist;
    unsigned int l1, r1;

    l1 = *left;
    r1 = *right;
    dist = l1 - r1;

    if (dist) {
        return dist;
    }

    if ((align = ((unsigned int)left & 3)) == ((unsigned int)right & 3)) {
        if (align) {
            if (l1 == 0) {
                return (0);
            }
            for (align = 3 - align; align; align--) {
                l1 = *(++left);
                r1 = *(++right);
                if (l1 - r1) {
                    return (l1 - r1);
                }
                if (l1 == 0) {
                    return (0);
                }
            }
            left++;
            right++;
        }

        k1 = K1;
        k2 = K2;
        l1 = *(int*)left;
        r1 = *(int*)right;
        x = l1 + k2;
        x &= ~l1;
        if (!(x & k1)) {
            while (l1 == r1) {
                l1 = *(int*)(left += sizeof(int));
                r1 = *(int*)(right += sizeof(int));
                x = l1 + k2;
                if (x & k1) {
                    break;
                }
            }
        }

        l1 = *left;
        r1 = *right;
        dist = l1 - r1;
        if (dist) {
            return (dist);
        }
    }

    if (l1 == 0) {
        return (0);
    }
    do {
        l1 = *(++left);
        r1 = *(++right);
        if (l1 - r1) {
            return (l1 - r1);
        }
        if (l1 == 0) {
            return (0);
        }
    } while (1);
}

int strncmp(const char* s1, const char* s2, size_t n) {
    const unsigned char* p1 = (unsigned char*)s1 - 1;
    const unsigned char* p2 = (unsigned char*)s2 - 1;
    unsigned long c1, c2;

    n++;

    while (--n) {
        if ((c1 = *++p1) != (c2 = *++p2)) {
            return (c1 - c2);
        } else if (!c1) {
            break;
        }
    }

    return 0;
}

char* strchr(const char* str, int ch) {
    const unsigned char* p = (unsigned char*)str - 1;
    unsigned long c = (ch & 0xff);
    unsigned long chr;

    while (chr = *++p) {
        if (chr == c) {
            return ((char*)p);
        }
    }

    return (c ? NULL : (char*)p);
}

char* strrchr(const char* str, int ch) {
    const unsigned char* p = (unsigned char*)str - 1;
    const unsigned char* q = 0;
    unsigned long c = (ch & 0xff);
    unsigned long chr;

    while (chr = *++p) {
        if (chr == c) {
            q = p;
        }
    }

    if (q) {
        return ((char*)q);
    }

    return (c ? NULL : (char*)p);
}

char* strpbrk(const char* s1, const char* s2) {
    const unsigned char* p;
    unsigned char c;
    unsigned char tbl[32] = {0};
    unsigned char bit;

    p = (const unsigned char*)s2 - 1;

    while ((c = *++p) != 0) {
        bit = (unsigned char)(1 << (c & 7));
        tbl[c >> 3] |= bit;
    }

    p = (const unsigned char*)s1 - 1;

    while ((c = *++p) != 0) {
        bit = (unsigned char)(1 << (c & 7));
        if (tbl[c >> 3] & bit) {
            return (char*)p;
        }
    }

    return NULL;
}

size_t strspn(const char* s1, const char* s2) {
    const unsigned char* p;
    unsigned char c;
    unsigned char tbl[32] = {0};
    unsigned char bit;

    p = (const unsigned char*)s2 - 1;

    while ((c = *++p) != 0) {
        bit = (unsigned char)(1 << (c & 7));
        tbl[c >> 3] |= bit;
    }

    p = (const unsigned char*)s1 - 1;

    while ((c = *++p) != 0) {
        bit = (unsigned char)(1 << (c & 7));
        if (!(tbl[c >> 3] & bit)) {
            break;
        }
    }

    return (size_t)(p - (const unsigned char*)s1);
}

size_t strcspn(const char* s1, const char* s2) {
    const unsigned char* p;
    unsigned char c;
    unsigned char tbl[32] = {0};
    unsigned char bit;

    p = (const unsigned char*)s2 - 1;

    while ((c = *++p) != 0) {
        bit = (unsigned char)(1 << (c & 7));
        tbl[c >> 3] |= bit;
    }

    p = (const unsigned char*)s1 - 1;

    while ((c = *++p) != 0) {
        bit = (unsigned char)(1 << (c & 7));
        if (tbl[c >> 3] & bit) {
            break;
        }
    }

    return (size_t)(p - (const unsigned char*)s1);
}

char* strtok(char* s1, const char* s2) {
    unsigned char* p;
    unsigned char c;
    unsigned char tbl[32] = {0};
    unsigned char bit;
    char* token_start;

    if (s1 != NULL) {
        strtokPos = s1;
    }

    p = (unsigned char*)s2 - 1;

    while ((c = *++p) != 0) {
        bit = (unsigned char)(1 << (c & 7));
        tbl[c >> 3] |= bit;
    }

    p = (unsigned char*)strtokPos - 1;

    while ((c = *++p) != 0) {
        bit = (unsigned char)(1 << (c & 7));
        if (!(tbl[c >> 3] & bit)) {
            break;
        }
    }

    if (c == 0) {
        strtokPos = strtokEmpty;
        return NULL;
    }

    token_start = (char*)p;

    while ((c = *++p) != 0) {
        bit = (unsigned char)(1 << (c & 7));
        if (tbl[c >> 3] & bit) {
            break;
        }
    }

    if (c == 0) {
        strtokPos = strtokEmpty;
        return token_start;
    }

    strtokPos = (char*)p + 1;
    *(char*)p = 0;
    return token_start;
}

char* strstr(const char* str, const char* pat) {
    unsigned char* s1 = (unsigned char*)str - 1;
    unsigned char* p1 = (unsigned char*)pat - 1;
    unsigned long firstc, c1, c2;

    if ((pat == NULL) || (!(firstc = *++p1))) {
        return ((char*)str);
    }

    while (c1 = *++s1) {
        if (c1 == firstc) {
            const unsigned char* s2 = s1 - 1;
            const unsigned char* p2 = p1 - 1;

            while ((c1 = *++s2) == (c2 = *++p2) && c1) {
            }

            if (!c2) {
                return ((char*)s1);
            }
        }
    }

    return NULL;
}
