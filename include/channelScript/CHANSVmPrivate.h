#ifndef IPL_CHANNEL_SCRIPT_PRIVATE_H
#define IPL_CHANNEL_SCRIPT_PRIVATE_H

#include "channelScript/CHANSVm.h"

#include <decomp.h>

#include <revolution.h>

#define CHANSPrivateVerifySignature     "RCHE"  /* Revolution Channel Script Engine? */

#define CHANSPrivateCreateExport(x)     static CHANSDefineMethod(CHANSPrivateExport_##x)
#define CHANSPrivateExport(x)           CHANSPrivateExport_##x

#define CHANSPrivateCreateGetExport(x)  static CHANSDefineMethod(CHANSPrivateGetxport_##x)
#define CHANSPrivateGetExport(x)        CHANSPrivateGetExport_##x
#define CHANSPrivateCreateSetExport(x)  static CHANSDefineMethod(CHANSPrivateSetExport_##x)
#define CHANSPrivateSetExport(x)        CHANSPrivateSetExport_##x

#endif // IPL_CHANNEL_SCRIPT_H


