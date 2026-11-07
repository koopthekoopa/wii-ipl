

#ifndef ZI8_CLIB_ZMT_KEY_H
#define ZI8_CLIB_ZMT_KEY_H

#include <zi8clib/zitypes.h>

ziBool Zi8getKeyLayout(ziU8 language, ziWChar padKey, ziWChar* lytOut, ziU8 elementCount ZI_NEED_WORK);
ziBool Zi8ChangeCharCase(ziBool upper, ziWChar* ch, ziU8 language ZI_NEED_WORK);

#endif  // ZI8_CLIB_ZMT_KEY_H
