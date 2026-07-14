#ifndef ZI8_OEM_DATA_H
#define ZI8_OEM_DATA_H

#include <zi8clib/zitypes.h>

ziU8 Zi8AttachOEMdata(Zi8OemSearchDict searchCb, ziU16 dictLen, ziPtr dictData ZI_NEED_WORK);
ziU8 Zi8DetachOEMdata(ziU8 oemId ZI_NEED_WORK);
ziU8 Zi8MatchOEMdata(ziWChar* text, ziU8 textLen, ziU8 language, ziWChar* wordOut, ziU16 wordMax, ziBool param_6, ziBool resume ZI_NEED_WORK);

#endif  // ZI8_OEM_DATA_H
