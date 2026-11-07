#ifndef ZI8_CLIB_IS_H
#define ZI8_CLIB_IS_H

#include <zi8clib/zitypes.h>

ziU8 Zi8GetZHCharSet(ziPtr workData);

ziBool Zi8IsComponent(ziWChar ch ZI_NEED_WORK);
ziBool Zi8IsCharacter(ziWChar ch ZI_NEED_WORK);

enum ziCharSetFlags {
    ZI_CHAR_SET_MAINLAND_SMALL = 0b00001,
    ZI_CHAR_SET_TAIWAN_LARGE = 0b00010,
    ZI_CHAR_SET_HONG_KONG = 0b00100,
    ZI_CHAR_SET_MAINLAND_LARGE = 0b01000,
    ZI_CHAR_SET_TAIWAN_SMALL = 0b10000,
};

#endif  // ZI8_CLIB_IS_H
