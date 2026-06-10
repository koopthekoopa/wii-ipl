
#ifndef D_NHTTP_H
#define D_NHTTP_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif  // __cplusplus

typedef struct {
    u8 dummy[1];
} NHTTPRequest;
typedef struct {
    u8 dummy[1];
} NHTTPResponse;

typedef int NHTTPConnection;

typedef void* (*NHTTPAlloc)(u32 size, int align);
typedef void (*NHTTPFree)(void* buf);

typedef void (*NHTTPRequestCallback)(int, NHTTPResponse*);
typedef void (*NHTTPCleanupCallback)();

int NHTTPStartup(NHTTPAlloc alloc, NHTTPFree free, u32 priority);
int NHTTPCleanupAsync(NHTTPCleanupCallback);
int NHTTPGetError();

NHTTPRequest* NHTTPCreateRequest(char* url, undefined4, void* buf, u32 bufSize, NHTTPRequestCallback reqCallback, undefined4);
NHTTPRequest* NHTTPCreateRequestEx(char* url, undefined4, void* buf, u32 bufSize, NHTTPRequestCallback reqCallback, undefined4, undefined4,
                                   undefined4);
int NHTTPDeleteRequest(NHTTPRequest* request);

NHTTPConnection NHTTPSendRequestAsync(NHTTPRequest* request);
int NHTTPCancelRequestAsync(NHTTPConnection connection);

void NHTTPGetProgress(u32* complete, u32* total);

int NHTTPDestroyResponse(NHTTPResponse* response);
u32 NHTTPGetHeaderField(NHTTPResponse* response, const char* name, const char** value);

int NHTTPGetResultCode(NHTTPResponse* res);

int NHTTPSetVerifyOption(NHTTPRequest* request, u32 option);

int NHTTPSetProxyDefault(NHTTPRequest* request);
int NHTTPSetRootCADefault(NHTTPRequest* request);
int NHTTPSetClientCertDefault(NHTTPRequest* request);

#ifdef __cplusplus
}
#endif  // __cplusplus

#endif  // D_NHTTP_H
