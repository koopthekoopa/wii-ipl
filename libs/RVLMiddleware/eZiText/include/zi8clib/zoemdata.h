#ifndef ZI8_OEM_DATA_H
#define ZI8_OEM_DATA_H

#include <zi8clib/zitypes.h>

ziUChar Zi8AttachOEMdata(ziUChar* oemData, ziUShort oemSize, ziVoid* unknown, ziVoid* workData);
ziUChar Zi8DetachOEMdata(ziUChar unknown, ziVoid* workData);

#endif // ZI8_OEM_DATA_H
