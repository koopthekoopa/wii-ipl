#ifndef PRIVATE_ES_H
#define PRIVATE_ES_H

#include <revolution/types.h>
#include <private/es/types.h>

#ifdef __cplusplus
extern "C" {
#endif

ESError ES_InitLib();

ESError ES_ImportTicket(ESTicket* ticket, void* certs, u32 certSize, void* crls, u32 crlSize, int unknown);

ESError ES_ImportBoot(ESTicket* ticket, void* certs, u32 certSize, void* tmd, u32 tmdSize, void* tmdCerts, u32 tmdCertSize, void* crls, u32 crlSize, void* app, u32 appSize);

ESError ES_GetTmdSize(ESTitleMeta* tmd, u32* tmdSize);
ESError ES_GetTmdSizeFromView(ESTmdView* tmd, u32* tmdSize);

ESError ES_GetDeviceId(ESDeviceId* deviceId);

ESError ES_ImportTitleInit(ESTitleMeta* tmd, u32 tmdSize, void* certs, u32 certSize, void* crls, u32 crlSize, int unknown0, int unknown1);
ESFd    ES_ImportContentBegin(ESTitleId titleId, ESContentId contentId);
ESError ES_ImportContentData(ESFd fd, void* data, u32 dataSize);
ESError ES_ImportContentEnd(ESFd fd);
ESError ES_ImportTitleDone();
ESError ES_ImportTitleCancel();

ESError ES_LaunchTitle(ESTitleId titleId, ESTicketView* ticket);

ESFd    ES_OpenContentFile(ESContentId contentId);
ESFd    ES_OpenTitleContentFile(ESTitleId titleId, ESTicketView* ticketView, ESContentId contentIndex);
ESError ES_ReadContentFile(ESFd fd, void* buffer, u32 size);
ESError ES_SeekContentFile(ESFd fd, s32 offset, u32 whence);
ESError ES_CloseContentFile(ESFd fd);

ESError ES_ListOwnedTitles(ESTitleId* titleIds, u32* numTitles);
ESError ES_ListTitlesOnCard(ESTitleId* titleIds, u32* numTitles);
ESError ES_ListTitleContentsOnCard(ESTitleId titleId, ESContentId* contentIds, u32* numContents);
ESError ES_ListTmdContentsOnCard(ESTitleMeta* tmd, u32 tmdSize, ESContentId* contentIds, u32* numContents);
ESError ES_ListSharedContents(u32* numContents, ESHash* hashes);

ESError ES_GetTicketViews(ESTitleId titleId,  ESTicketView* ticketViewList, u32* numTicketViews);

ESError ES_GetTmd(ESTitleId titleId, ESTitleMeta* tmd, u32* tmdSize);
ESError ES_GetTmdView(ESTitleId titleId, ESTmdView* tmdView, u32* tmdSize);

ESError ES_DeleteTitleContent(ESTitleId titleId);
ESError ES_DeleteContent(ESTitleId titleId, ESContentId contentId);
ESError ES_DeleteTitle(ESTitleId titleId);
ESError ES_DeleteTicket(ESTicketView* ticket);

ESError ES_GetTitleId(ESTitleId* titleId);

ESError ES_SetUid(ESTitleId titleId);

ESError ES_GetDeviceCert(void* deviceCert);

ESError ES_DiGetTmdView(ESTitleMeta* tmd, u32 tmdSize, ESTmdView* tmdView, u32* tmdViewSize);

ESError ES_ExportTitleInit(ESTitleId titleId, ESDeviceId deviceId, ESTicketId ticketId, void* certs, u32 certSize, void* crls, u32 crlSize, int unknown, void* ticket, void* tmd, u32 tmdSize);
ESError ES_ExportContentBegin(ESTitleId titleId, ESContentId contentId);
ESError ES_ExportContentData(ESFd fd, void* data, u32 dataSize);
ESError ES_ExportContentEnd(ESFd fd);
ESError ES_ExportTitleDone();

ESError ES_Encrypt(u32 keyNum, u8* iv, u8* input, u32 size, u8* output);
ESError ES_Decrypt(u32 keyNum, u8* iv, u8* input, u32 size, u8* output);

ESError ES_VerifyCK2();

ESError ES_Sign(void* data, u32 length, ESSignature signature, ESCertSignature* sigKeyCert);
ESError ES_VerifySign(void* data, u32 length, ESSignature signature, void* certs, u32 certSize);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_ES_H
