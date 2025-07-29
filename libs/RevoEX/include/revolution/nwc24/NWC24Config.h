#ifndef NWC24_CONFIG_H
#define NWC24_CONFIG_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>
#include <revolution/nwc24/NWC24Types.h>

#ifdef __cplusplus
extern "C" {
#endif

NWC24Err    NWC24GetMyUserId(NWC24UserId* pId);
NWC24Err    NWC24GenerateNewUserId(NWC24UserId* pId);
NWC24Err    NWC24RegisterUserId();

const char* NWC24GetAccountDomain();
void        NWC24SetAccountDomain(const char* accountDomain);

const char* NWC24GetMBoxDir();
u32         NWC24GetAppId();
u16         NWC24GetGroupId();

const char* NWC24GetPassword();
void        NWC24SetPassword(const char* password);

const char* NWC24GetMailCheckId();
void        NWC24SetMailCheckId(const char* mailCheckId);

const char* NWC24GetAccMgtServerURL();
void        NWC24SetAccMgtServerURL(const char* accMgtServerURL);

const char* NWC24GetMailChkServerURL();
void        NWC24SetMailChkServerURL(const char* mailChkServerURL);

const char* NWC24GetMailRcvServerURL();
void        NWC24SetMailRcvServerURL(const char* mailRcvServerURL);

const char* NWC24GetMailDelServerURL();
void        NWC24SetMailDelServerURL(const char* mailDelServerURL);

const char* NWC24GetMailTrsServerURL();
void        NWC24SetMailTrsServerURL(const char* mailTrsServerURL);

#ifdef __cplusplus
}
#endif

#endif  // NWC24_CONFIG_H
