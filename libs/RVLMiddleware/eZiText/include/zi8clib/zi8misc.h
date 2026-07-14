#ifndef ZI8_CLIB_MISC_H
#define ZI8_CLIB_MISC_H

#include <zi8clib/zitypes.h>

ziU16 Zi8Uni2Ptr(ziWChar ch, Table0Entry* ptr ZI_NEED_WORK);
ziU16 Zi8Uni2Ord(ziWChar ch ZI_NEED_WORK);

ziWChar Zi8Ord2Uni(ziU16 ord ZI_NEED_WORK);
ziU16 Zi8Ord2Ord(ziU16 ord ZI_NEED_WORK);

#endif  // ZI8_CLIB_MISC_H
