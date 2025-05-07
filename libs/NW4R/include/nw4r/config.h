#ifndef NW4R_CONFIG_H
#define NW4R_CONFIG_H

#include <nw4r/lyt/types.h>

#define NW4R_BYTEORDER_BIG 0xFEFF
#define NW4R_BYTEORDER_LITTLE 0xFFFE

#ifdef NW4R_LITTLE_ENDIAN
#define NW4R_BYTEORDER_NATIVE NW4R_BYTEORDER_LITTLE
#else
#define NW4R_BYTEORDER_NATIVE NW4R_BYTEORDER_BIG
#endif

#define NW4R_VERSION(major, minor) ((major & 0xFF) << 8 | minor & 0xFF)

#endif // NW4R_CONFIG_H
