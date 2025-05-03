#ifndef MSL_WCHAR_H
#define MSL_WCHAR_H

#include <cwchar>

#ifdef __cplusplus

namespace std {
    using   ::wmemset;

    using   ::wcslen;

    using   ::wcsncpy;

    using   ::vswprintf;
} // namespace std

#endif

#endif // MSL_CWCHAR_H
