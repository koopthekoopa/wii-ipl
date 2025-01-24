#ifndef MSL_STRING_H
#define MSL_STRING_H

#include <cstring>

#ifdef __cplusplus

namespace std {
    // MSL/memory.h
    using   ::memcpy;
    using   ::memset;

    using   ::strcmp;
    using   ::stricmp;

    using   ::strncpy;
    using   ::strncat;
    using   ::strncmp;

    using   ::strlen;

    using   ::sprintf;
} // namespace std

#endif

#endif // MSL_STRING_H
