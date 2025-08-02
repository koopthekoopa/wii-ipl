#ifndef NWC24_ERROR_CODES_H
#define NWC24_ERROR_CODES_H

#define NWC24_ERRCODE_1090XX    (-109000)   /* Error initializing NWC24 Library (XX == NWC24Err) */
#define NWC24_ERRCODE_1091XX    (-109100)   /* Error running check (XX = NWC24Err) */
#define NWC24_ERRCODE_1092XX    (-109200)   /* Error registering User ID (XX == NWC24Err) */
#define NWC24_ERRCODE_1093XX    (-109300)   /* Error committing message (XX == NWC24Err) */

#include <revolution/types.h>

void    NWC24iSetErrorCode(s32 code);

#define NWC24iMakeCode(code, result) (result + code)

#endif  // NWC24_ERROR_CODES_H
