#ifndef IPL_CHANNEL_SCRIPT_PRIVATE_H
#define IPL_CHANNEL_SCRIPT_PRIVATE_H

#include "channelScript/CHANSVm.h"

#define VmMagic "RCHE" /* Revolution Channel Script Engine */

#define VmCreateMethod(name) BOOL VmMethod_##name(CHANSVm* pVm, CHANSVmObjHdr* pObj0, CHANSVmObjHdr* pObj1)

#endif // IPL_CHANNEL_SCRIPT_PRIVATE_H


