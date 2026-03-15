#ifndef ZI8_CLIB_CONVERT_H
#define ZI8_CLIB_CONVERT_H

#include <zi8clib/zitypes.h>

ziWChar Zi8ConvertUC2WC(ziChar ch, ziU8 language ZI_NEED_WORK);
ziChar Zi8ConvertWC2UC(ziWChar ch, ziU8 language ZI_NEED_WORK);

ziWChar Zi8ConvertUC2Key(ziChar ch, ziU8 language ZI_NEED_WORK);
ziWChar Zi8ConvertWC2Key(ziWChar ch, ziU8 language ZI_NEED_WORK);

#endif  // ZI8_CLIB_CONVERT_H
