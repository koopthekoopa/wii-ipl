#include "search.h"

void* bsearch(const void* key, const void* ptr, size_t count, size_t size, compare_func comp) {
    const char* p;
    int cmp;
    size_t low, high, mid;

    if (key == NULL || ptr == NULL || count == 0 || size == 0 || comp == NULL) {
        return NULL;
    }

    p = (const char*)ptr;
    cmp = comp(key, p);

    if (cmp == 0) {
        return (void*)p;
    }

    if (cmp < 0) {
        return NULL;
    }

    low = 1;
    high = count - 1;

    while (low <= high) {
        mid = (low + high) >> 1;
        p = (const char*)ptr + size * mid;
        cmp = comp(key, p);

        if (cmp == 0) {
            return (void*)p;
        }

        if (cmp < 0) {
            high = mid - 1;
        } else {
            low = mid + 1;
        }
    }

    return NULL;
}
