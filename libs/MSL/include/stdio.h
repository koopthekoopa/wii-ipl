#ifndef MSL_STDIO_H
#define MSL_STDIO_H

#include <cstdio>

#ifdef __cplusplus

namespace std {
    using   ::sprintf;
    using   ::snprintf;
    using   ::vprintf;
    using   ::vsnprintf;
} // namespace std

#endif

#endif // MSL_STDIO_H
