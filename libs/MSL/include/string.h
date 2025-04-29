#ifndef MSL_STRING_H
#define MSL_STRING_H

#include <cstring>

#ifdef __cplusplus

namespace std {
    using   ::memcpy;
    using   ::memset;
    using   ::memove;

    using   ::memcmp;

    using   ::strcpy;
    using   ::strcmp;

    using   ::stricmp;
    
    using   ::strcat;

    using   ::strncpy;
    using   ::strncat;
    using   ::strncmp;

    using   ::strlen;
    using   ::strnlen;

    using   ::sprintf;
} // namespace std

#endif

#endif // MSL_STRING_H
