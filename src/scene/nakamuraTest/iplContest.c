#include "scene/nakamuraTest/iplContest.h"

#include "gamespy/common/gsAvailable.h"
#include "gamespy/natneg/NATify.h"
#include "gamespy/natneg/natneg.h"

#include <revolution/mem/expHeap.h>
#include <revolution/nhttp/d_nhttp.h>
#include <revolution/os.h>

typedef enum {
    HTTP_TEST_NOT_STARTED = 0,
    HTTP_TEST_STARTED = 1,
    HTTP_TEST_REQUEST_MADE = 2,
    HTTP_TEST_RESPONSE_RECEIVED = 3,
    HTTP_TEST_RESPONSE_ERRORED = 4,
    HTTP_TEST_DONE = 5,
} HTTPTestState;

typedef struct {
    void* heapBuf;
    MEMHeapHandle heap;
    OSMutex mutex;
    int state;
    undefined4 result;
    undefined4 errCode;
    HTTPTestState httpTestState;
    undefined4 unk_0x030;
    undefined4 unk_0x034;
    undefined4 unk_0x038;
    undefined4 unk_0x03c;
    s64 detectStartTime;
    NHTTPConnection httpConnection;
    NHTTPRequest* httpRequest;
    NHTTPResponse* httpResponse;
    NCDProxyProfile proxy;
    void* unk_0x7f0;
    NAT nat;
} StaticSession;

StaticSession g_session;

void* IPLContestNHTTPAlloc(u32 size, int align);
void IPLContestNHTTPFree(void* block);

void* IPLContestGSMalloc(u32 size);
void IPLContestGSFree(void* block);
void* IPLContestGSRealloc(void* oldBlock, u32 newSize);
void* IPLContestGSMemalign(u32 align, u32 size);

void iplContest_813D54F8(BOOL success, NAT nat);

void* IPLContestAlloc(int size);
void IPLContestFree(void* block, u32 _unused);

void sNHTTPReqCallback(int param_1, NHTTPResponse* httpRes);
void sNHTTPCleanupCallback();

void IPLContestInitialize(void* heapBuf, NCDProxyProfile* proxy) {
    char* pcVar1;
    char cVar2;
    char* pcVar3;
    char* pcVar4;
    int iVar5;

    g_session.heapBuf = heapBuf;
    g_session.heap = MEMCreateExpHeapEx(heapBuf, 0x10000, 0);
    OSInitMutex(&g_session.mutex);
    g_session.state = 0;
    g_session.result = 0xff00;
    g_session.errCode = 0;
    g_session.httpTestState = HTTP_TEST_NOT_STARTED;
    g_session.unk_0x030 = 0;
    g_session.detectStartTime = 0;
    g_session.httpConnection = 0;
    g_session.httpRequest = 0;
    g_session.httpResponse = NULL;
    g_session.unk_0x034 = 0;
    g_session.unk_0x038 = 0;
    g_session.unk_0x03c = 1;
    g_session.proxy = *proxy;
}

void IPLContestStart() {
    g_session.state = 1;
}

int IPLContestProcess(void) {
    const char* xOrganizationHeader;
    u32 total;
    u32 complete;

    switch (g_session.state) {
        case 0:
            break;
        case 1:
            g_session.state = 2;
        case 2:
            switch (g_session.httpTestState) {
                case HTTP_TEST_NOT_STARTED:
                    if (NHTTPStartup(IPLContestNHTTPAlloc, IPLContestNHTTPFree, 0x11) == -1) {
                        g_session.httpTestState = HTTP_TEST_RESPONSE_ERRORED;
                        g_session.result |= 4;
                        g_session.errCode = g_session.errCode != 0 ? g_session.errCode : -52200;
                        OSReport("[error] Failed to start up NHTTP.\n");
                    } else {
                        g_session.unk_0x7f0 = IPLContestAlloc(0x400);
                        g_session.httpTestState = HTTP_TEST_STARTED;
                        OSReport("Starting HTTP conectting test.\n");
                    }
                    break;
                case HTTP_TEST_STARTED:
                    g_session.httpRequest =
                        NHTTPCreateRequest("http://conntest.nintendowifi.net/", 0, g_session.unk_0x7f0, 0x400, sNHTTPReqCallback, 0);
                    if (g_session.httpRequest == 0) {
                        g_session.httpTestState = HTTP_TEST_RESPONSE_ERRORED;
                        g_session.result |= 4;
                        g_session.errCode = g_session.errCode != 0 ? g_session.errCode : -52200;
                        OSReport("[error] Failed to create request.\n");
                    } else if (g_session.proxy.http.mode == 1 && NHTTPSetProxyDefault(g_session.httpRequest) != 0) {
                        g_session.httpTestState = HTTP_TEST_RESPONSE_ERRORED;
                        g_session.result |= 4;
                        g_session.errCode = g_session.errCode != 0 ? g_session.errCode : -52400;
                        OSReport("[error] Failed to set proxy.\n");
                    } else {
                        NHTTPSetClientCertDefault(g_session.httpRequest);
                        NHTTPSetRootCADefault(g_session.httpRequest);
                        NHTTPSetVerifyOption(g_session.httpRequest, 0);
                        g_session.httpConnection = NHTTPSendRequestAsync(g_session.httpRequest);
                        if (g_session.httpConnection < 0) {
                            NHTTPDeleteRequest(g_session.httpRequest);
                            g_session.httpTestState = HTTP_TEST_RESPONSE_ERRORED;
                            g_session.result |= 4;
                            g_session.errCode = g_session.errCode != 0 ? g_session.errCode : -52200;
                            OSReport("[error] Failed to send equest.\n");
                        } else {
                            g_session.httpTestState = HTTP_TEST_REQUEST_MADE;
                            OSReport("HTTP Request has been sent.\n");
                            g_session.detectStartTime = OSGetTime();
                        }
                    }
                    break;
                case HTTP_TEST_REQUEST_MADE:
                    NHTTPGetProgress(&complete, &total);
                    OSReport("received:%d/%d\n", complete, total);
                    if (OSGetTime() - g_session.detectStartTime < OSMillisecondsToTicks(90000LL) || g_session.httpConnection < 0)
                        break;
                    NHTTPCancelRequestAsync(g_session.httpConnection);
                    OSReport("[error] NHTTP timeout.\n");
                    g_session.httpConnection = -1;
                    break;
                case HTTP_TEST_RESPONSE_RECEIVED:
                    if (NHTTPGetHeaderField(g_session.httpResponse, "X-Organization", &xOrganizationHeader) == strlen("Nintendo") &&
                        strcmp("Nintendo", xOrganizationHeader) == 0) {
                        if (g_session.httpResponse != NULL) {
                            NHTTPDestroyResponse(g_session.httpResponse);
                            g_session.httpResponse = NULL;
                        }
                        if (g_session.unk_0x7f0 != NULL) {
                            IPLContestFree(g_session.unk_0x7f0, 0);
                            g_session.unk_0x7f0 = NULL;
                        }
                        g_session.httpTestState = HTTP_TEST_DONE;
                        NHTTPCleanupAsync(sNHTTPCleanupCallback);
                        OSReport("HTTP test has been completed.\n");
                    } else {
                        g_session.httpTestState = HTTP_TEST_RESPONSE_ERRORED;
                        g_session.result |= 1;
                        g_session.errCode = g_session.errCode != 0 ? g_session.errCode : -52200;
                        OSReport("[error] Invalid response header.\n");
                    }
                    break;
                case HTTP_TEST_RESPONSE_ERRORED:
                    if (g_session.httpResponse != NULL) {
                        NHTTPDestroyResponse(g_session.httpResponse);
                        g_session.httpResponse = NULL;
                    }
                    if (g_session.unk_0x7f0 != NULL) {
                        IPLContestFree(g_session.unk_0x7f0, 0);
                        g_session.unk_0x7f0 = NULL;
                    }
                    g_session.httpTestState = HTTP_TEST_DONE;
                    NHTTPCleanupAsync(sNHTTPCleanupCallback);
                    OSReport("HTTP test has been completed with error.\n");
                    break;
                case HTTP_TEST_DONE:
                    break;
            }
            break;
        case 3:
            if (((g_session.result & 1) != 0) || ((g_session.result & 4) != 0)) {
                g_session.state = 4;
                g_session.result = g_session.result & 0xffff00ff;
                OSReport("Port mapping detectioning test has been skipped.\n");

            } else
                switch (g_session.unk_0x030) {
                    case 0:
                        gsiMemoryCallbacksSet(IPLContestGSMalloc, IPLContestGSFree, IPLContestGSRealloc, IPLContestGSMemalign);
                        GSIStartAvailableCheckA("wiinat");
                        g_session.unk_0x030 = 1;
                        OSReport("Starting GameSpy available check.\n");
                        break;
                    case 1:
                        switch (GSIAvailableCheckThink()) {
                            case GSIACWaiting:
                                break;
                            case GSIACAvailable:
                                g_session.unk_0x034 = 1;
                                g_session.unk_0x030 = 2;
                                OSReport("GameSpy server is currently available.\n");
                                break;
                            default:
                                g_session.unk_0x034 = 0;
                                g_session.unk_0x030 = 5;
                                OSReport("GameSpy server is currently unavailable.\n");
                                break;
                        }
                        break;
                    case 2:
                        NNStartNatDetection(iplContest_813D54F8);
                        g_session.unk_0x030 = 3;
                        OSReport("Port mapping detectioning test has been started.\n");
                        g_session.detectStartTime = OSGetTime();
                        break;
                    case 3:
                        NNThink();
                        if (OSGetTime() - g_session.detectStartTime < OSMillisecondsToTicks(90000LL))
                            break;
                        g_session.unk_0x030 = 5;
                        g_session.unk_0x038 = 1;
                        OSReport("[error] NAT timeout.\n");
                        break;
                    case 4:
                        NNFreeNegotiateList();
                        g_session.state = 4;
                        g_session.result = g_session.result & 0xffff00ff;
                        OSReport("Port mapping detectioning test has been completed.\n");
                        break;
                    case 5:
                        g_session.state = 4;
                        g_session.result = g_session.result & 0xffff00ff;
                        break;
                }
            break;
        case 4:
            break;
    }
    return g_session.state;
}

int IPLContestGetResult() {
    if ((g_session.result & 0xff00) != 0) {
        return 0xff00;
    }
    return g_session.result;
}
int IPLContestGetErrorCode(int conntype) {
    return -(g_session.errCode - conntype);
}

int IPLGetNATSupportCode(int conntype) {
    NAT nat;
    int natTypeLookup[7] = {2, 3, 4, 5, 6, 7, 1};
    int promiscuityLookup[5] = {2, 3, 4, 5, 1};
    int mappingSchemeLookup[6] = {1, 2, 3, 4, 5, 6};
    int qr2CompatLookup[2] = {1, 2};

    int natVal, promiscuityVal, mappingSchemeVal, qr2CompatVal;
    int tempCodeA, tempCodeB, tempCodeC;
    int code;

    nat = g_session.nat;

    if (g_session.unk_0x034 != 0) {
        if (g_session.unk_0x038 != 0) {
            code = 11180;
        } else if (g_session.unk_0x03c != 0) {
            code = 11170;
        } else {
            if (nat.mappingScheme == 0 && nat.mappings[2].publicPort == nat.mappings[1].publicPort * 2 - nat.mappings[0].publicPort) {
                nat.mappingScheme = 5;
            }

            natVal = natTypeLookup[nat.natType];
            promiscuityVal = promiscuityLookup[nat.promiscuity];
            mappingSchemeVal = mappingSchemeLookup[nat.mappingScheme];
            qr2CompatVal = qr2CompatLookup[!nat.qr2Compatible];

            tempCodeA = mappingSchemeVal * 100;
            tempCodeB = tempCodeA + natVal * 10000;
            tempCodeC = tempCodeB + promiscuityVal * 1000;
            code = tempCodeC + qr2CompatVal * 10;
        }
    } else {
        code = 11190;
    }
    switch (conntype / 10) {
        case 2:
            code += 1;
            break;
        case 3:
            code += 2;
            break;
        case 4:
            code += 3;
            break;
    }
    OSReport("Wii Support Code:%d\n", code);
    return code;
}

void IPLContestShutdown() {
    if (g_session.heap != NULL) {
        MEMDestroyExpHeap(g_session.heap);
    }
}

// NHTTP Alloc
void* IPLContestNHTTPAlloc(u32 size, int align) {
    void* block;

    if (align < 4)
        align = 4;

    OSLockMutex(&g_session.mutex);
    block = MEMAllocFromExpHeapEx(g_session.heap, size, align);
    OSUnlockMutex(&g_session.mutex);
    return block;
}

// NHTTP Free
void IPLContestNHTTPFree(void* block) {
    IPLContestFree(block, 0);
}

// p_malloc
void* IPLContestGSMalloc(u32 size) {
    return IPLContestAlloc(size);
}

// p_free
void IPLContestGSFree(void* block) {
    IPLContestFree(block, 0);
}

// p_realloc
void* IPLContestGSRealloc(void* oldBlock, u32 newSize) {
    void* newBlock;

    OSLockMutex(&g_session.mutex);
    newBlock = MEMAllocFromExpHeapEx(g_session.heap, newSize, 4);
    OSUnlockMutex(&g_session.mutex);
    if (newBlock == NULL) {
        newBlock = NULL;
    } else if (oldBlock != NULL) {
        memcpy(newBlock, oldBlock, newSize);
        IPLContestFree(oldBlock, 0);
    }
    return newBlock;
}

// p_memalign
void* IPLContestGSMemalign(u32 align, u32 size) {
    void* block;

    OSLockMutex(&g_session.mutex);
    block = MEMAllocFromExpHeapEx(g_session.heap, size, align);
    OSUnlockMutex(&g_session.mutex);
    return block;
}

// IPLContestAlloc
void* IPLContestAlloc(int size) {
    void* block;

    OSLockMutex(&g_session.mutex);
    block = MEMAllocFromExpHeapEx(g_session.heap, size, 4);
    OSUnlockMutex(&g_session.mutex);
    return block;
}

// IPLContestFree
void IPLContestFree(void* block, u32 _unused) {
    OSLockMutex(&g_session.mutex);
    if (block != NULL) {
        MEMFreeToExpHeap(g_session.heap, block);
    }
    OSUnlockMutex(&g_session.mutex);
}

void sNHTTPReqCallback(int param_1, NHTTPResponse* httpRes) {
    g_session.httpResponse = httpRes;
    if (param_1 == 0) {
        switch (NHTTPGetResultCode(httpRes)) {
            case 200:
                g_session.httpTestState = HTTP_TEST_RESPONSE_RECEIVED;
                return;
            case 407:
                g_session.httpTestState = HTTP_TEST_RESPONSE_ERRORED;
                g_session.errCode = g_session.errCode != 0 ? g_session.errCode : -52500;
                g_session.result |= 4;
                return;
            default:
                g_session.httpTestState = HTTP_TEST_RESPONSE_ERRORED;
                g_session.errCode = g_session.errCode != 0 ? g_session.errCode : -52200;
                g_session.result |= 4;
                return;
        }
    }

    g_session.httpTestState = HTTP_TEST_RESPONSE_ERRORED;
    switch (param_1) {
        case 0x4:
            g_session.errCode = g_session.errCode != 0 ? g_session.errCode : -52100;
            break;
        case 0xc:
            g_session.errCode = g_session.errCode != 0 ? g_session.errCode : -52400;
            break;
        case 0xd:
            g_session.errCode = g_session.errCode != 0 ? g_session.errCode : -52400;
            break;
        default:
            g_session.errCode = g_session.errCode != 0 ? g_session.errCode : -52200;
            break;
    }
    g_session.result |= 4;
    OSReport("[error] NHTTPReqCallback errorcode:%d\n", NHTTPGetError());
    return;
}
void sNHTTPCleanupCallback() {
    g_session.state = 3;
}

void iplContest_813D54F8(gsi_bool success, NAT nat) {
    if (success) {
        g_session.nat = nat;
        g_session.unk_0x03c = 0;
    } else {
        g_session.unk_0x03c = 1;
    }
    g_session.unk_0x030 = 4;
    return;
}
