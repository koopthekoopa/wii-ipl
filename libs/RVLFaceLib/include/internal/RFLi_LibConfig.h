#ifndef RFLi_CONFIGURATION_H
#define RFLi_CONFIGURATION_H

#include <revolution/types.h>

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

// clang-format off

/* Available builds:
    20070609
    20080218
    20080306 (used)
*/
#define RFL_BUILD   20080218

/* CONFIGURATIONS
    RFL_USE_ICON_CALLBACK - Enable callback after drawing icon
    RFL_USE_MODEL_CALLBACK - Enable callback after creating character model
    RFL_USE_COORDINATE_DATA - Enable coordinates data
*/

#if RFL_BUILD == 20080306
#define RFL_USE_ICON_CALLBACK
#define RFL_USE_MODEL_CALLBACK
#define RFL_USE_COORDINATE_DATA
#elif RFL_BUILD == 20070609
#define RFL_USE_ICON_CALLBACK
#define RFL_USE_COORDINATE_DATA
#endif

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

// clang-format on

#ifdef __cplusplus
}
#endif

#endif  // RFLi_CONFIGURATION_H
