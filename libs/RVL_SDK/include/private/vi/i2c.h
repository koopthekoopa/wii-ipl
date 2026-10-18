#ifndef PRIVATE_I2C_H
#define PRIVATE_I2C_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL __VISendI2CData(u8 slaveAddr, u8* pData, int nBytes);
BOOL __VIReceiveI2CData(u8 slaveAddr, u8* pData, int nBytes);
void WaitMicroTime(s32 usec);

#ifdef __cplusplus
}
#endif  // __cplusplus

#endif  // PRIVATE_I2C_H
