#ifndef PRIVATE_WUD_H
#define PRIVATE_WUD_H

#include <revolution/types.h>

#include <private/wud/WUDInternal.h>
#include <private/wud/WUDTypes.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL WUDInit();
BOOL WUDIsBusy();
void WUDRegisterAllocator(WUDAllocFunc pAllocFunc, WUDFreeFunc pFreeFunc);
u32 WUDGetAllocatedMemSize();
void WUDShutdown(BOOL saveSmp);

WUDLibStatus WUDGetStatus();
u8 WUDGetBufferStatus();

void WUDSetSniffMode(BD_ADDR addr, s32 interval);

WUDSyncDeviceCallback WUDSetSyncSimpleCallback(WUDSyncDeviceCallback pCallback);

WUDClearDeviceCallback WUDSetClearDeviceCallback(WUDClearDeviceCallback pCallback);

BOOL WUDStartSyncDevice();
BOOL WUDStartFastSyncSimple();
BOOL WUDStartSyncSimple();
BOOL WUDStopSyncSimple();

BOOL WUDStartClearDevice();
BOOL WUDSetDisableChannel(s8 afhChannel);

WUDHidRecvCallback WUDSetHidRecvCallback(WUDHidRecvCallback pCallback);
WUDHidConnCallback WUDSetHidConnCallback(WUDHidConnCallback pCallback);

void WUDSetVisibility(u8 disc, u8 conn);
u8 WUDGetConnectable();

void WUDiGetFirmwareVersion();
void WUDiInitSub();

void WUDiEnableStack();
void WUDiAutoSync();
void WUDiDeleteAllLinkKeys();

void WUDiRegisterDevice(BD_ADDR addr);
void WUDiRemoveDevice(BD_ADDR addr);

WUDDevInfo* WUDiGetDevInfo(BD_ADDR addr);
WUDDevInfo* WUDiGetDevInfoIndex(int idx);
WUDDevInfo* WUDiGetNewDevInfo();
void WUDiRemoveDevInfo(BD_ADDR addr);
void WUDiClearDevice();

u8 WUDiGetDevNumber();
u8 WUDiGetDevSmpNumber();
u8 WUDiGetConnNumber();
u8 WUDiGetLinkNum();

void WUDiMoveTopSmpDevInfoPtr(WUDDevInfo* pInfo);
void WUDiMoveBottomSmpDevInfoPtr(WUDDevInfo* pInfo);
WUDDevInfo* WUDiGetRemoveSmpDevice();
void WUDiMoveTopOfDisconnectedSmpDevice(WUDDevInfo* pInfo);

void WUDiMoveTopStdDevInfoPtr(WUDDevInfo* pInfo);
void WUDiMoveBottomStdDevInfoPtr(WUDDevInfo* pInfo);
WUDDevInfo* WUDiGetRemoveStdDevice();
void WUDiMoveTopOfDisconnectedStdDevice(WUDDevInfo* pInfo);

BD_ADDR_PTR _WUDGetDevAddr(UINT8 handle);
u16 _WUDGetQueuedSize(s8 handle);
u16 _WUDGetNotAckedSize(s8 handle);
u8 _WUDGetLinkNumber();

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_WUD_H
