#ifndef REVOLUTION_CX_UNCOMPRESS_H
#define REVOLUTION_CX_UNCOMPRESS_H

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/types.h>

u32     CXGetUncompressedSize(const void *srcp);
void    CXUncompressLZ(const void *src, void *dest);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_CX_UNCOMPRESS_H


