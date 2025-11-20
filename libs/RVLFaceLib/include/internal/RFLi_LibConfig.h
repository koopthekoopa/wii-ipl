#ifndef RFLi_CONFIGURATION_H
#define RFLi_CONFIGURATION_H

#include <revolution/types.h>

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Available builds:
    20080218 (used)
    20080306
*/
#define RFL_BUILD   20080218

#ifndef KEEP_OLD_NULL
#ifdef NULL
#undef NULL
#endif // NULL
#define NULL    0L
#endif // KEEP_OLD_NULL

// Debug build
#ifdef DEBUG
#define RFL_DEBUG
#endif

#define RFL_ALIGN           8
#define RFL_BUFFER_ALIGN    DEFAULT_ALIGN /* 32 */

#ifdef __cplusplus
}
#endif

#endif // RFLi_CONFIGURATION_H
