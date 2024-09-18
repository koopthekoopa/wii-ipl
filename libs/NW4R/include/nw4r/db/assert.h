#ifndef NW4R_ASSERT_H
#define NW4R_ASSERT_H

#include <nw4r/ipl.h>

#define NW4R_ASSERT(x)      (!!x || (nw4r::db::Panic(__FILE__, __LINE__, #x), 0))
#define NW4R_IPL_ASSERT(x)  (!!x || (ipl::BlockUnauthorizedMod(), 0))

#endif // NW4R_ASSERT_H


