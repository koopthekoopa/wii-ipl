#ifndef PRIVATE_NWC24_DOWNLOAD_H
#define PRIVATE_NWC24_DOWNLOAD_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>

#ifdef __cplusplus
extern "C" {
#endif

NWC24Err    NWC24iOpenDlTaskList();
NWC24Err    NWC24iCloseDlTaskList();

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NWC24_DOWNLOAD_H
