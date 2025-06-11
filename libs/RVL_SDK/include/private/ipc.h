#ifndef PRIVATE_IPC_H
#define PRIVATE_IPC_H

#include <private/ipc/types.h>

#include <private/ios/types.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Main */

void        IPCInit();
void        IPCReInit();

u32         IPCReadReg(u32 regIdx);
void        IPCWriteReg(u32 regIdx, u32 data);

#define     IPC_READ_REG(regIdx)        IPCReadReg((regIdx>>2))
#define     IPC_WRITE_REG(regIdx, data) IPCWriteReg((regIdx>>2), data)

void*       IPCGetBufferHi();
void*       IPCGetBufferLo();
void        IPCSetBufferLo(void* lo);

/* Profile */

void        IPCiProfInit();

void        IPCiProfQueueReq(void* req, s32 fd);

void        IPCiProfAck();

void        IPCiProfReply(void* req, s32 fd);

/* Clt */

IOSError    IPCCltInit();
IOSError    IPCCltReInit();

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_IPC_H
