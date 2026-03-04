#ifndef ZI8_CLIB_IS_H
#define ZI8_CLIB_IS_H

#include <zi8clib/zitypes.h>

ziU8    Zi8GetZHCharSet(ziPtr workData);

ziBool  Zi8IsComponent(ziWChar ch ZI_NEED_WORK);
ziBool  Zi8IsCharacter(ziWChar ch ZI_NEED_WORK);

#endif // ZI8_CLIB_IS_H
