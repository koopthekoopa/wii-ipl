#ifndef ZI8_OEM_DATA_H
#define ZI8_OEM_DATA_H

#include <zi8clib/zitypes.h>

ziU8 Zi8AttachOEMdata(ziU8* oemData, ziU16 oemSize, ziPtr other ZI_NEED_WORK);
ziU8 Zi8DetachOEMdata(ziU8 oemId ZI_NEED_WORK);

#endif  // ZI8_OEM_DATA_H
