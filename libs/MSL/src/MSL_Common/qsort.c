#include <search.h>

#define swap(dst, src, cnt)                                                                                                                          \
    do {                                                                                                                                             \
        char* p;                                                                                                                                     \
        char* q;                                                                                                                                     \
        size_t n = cnt;                                                                                                                              \
        unsigned long tmp;                                                                                                                           \
        for (p = (char*)src - 1, q = (char*)dst - 1, n++; --n;) {                                                                                    \
            tmp = *++q;                                                                                                                              \
            *q = *++p;                                                                                                                               \
            *p = tmp;                                                                                                                                \
        }                                                                                                                                            \
    } while (0)

void qsort(void* table_base, size_t num_members, size_t member_size, compare_func compare_members) {
    size_t cur_ofs;
    size_t neg_size;
    size_t l, r, j;
    char* lp;
    char* rp;
    char* ip;
    char* jp;
    char* kp;

    if (num_members < 2) {
        return;
    }

    r = num_members;
    l = (r / 2) + 1;
    lp = (char*)table_base + member_size * (l - 1);
    rp = (char*)table_base + member_size * (r - 1);
    neg_size = (long)(member_size - member_size * 2);
    cur_ofs = l * member_size;

    for (;;) {
        if (l > 1) {
            l--;
            cur_ofs -= member_size;
            lp -= member_size;
        } else {
            swap(lp, rp, member_size);
            if (--r == 1) {
                return;
            }
            rp -= member_size;
        }

        j = l;
        jp = (char*)table_base + (cur_ofs + neg_size);

        while (j * 2 <= r) {
            j *= 2;
            ip = jp;
            jp = (char*)table_base + member_size * (j - 1);

            if (j < r) {
                kp = jp + member_size;
                if (compare_members(jp, kp) < 0) {
                    j++;
                    jp = kp;
                }
            }

            if (compare_members(ip, jp) < 0) {
                swap(ip, jp, member_size);
            } else {
                break;
            }
        }
    }
}
