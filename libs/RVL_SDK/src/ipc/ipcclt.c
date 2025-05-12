#include <private/ipc.h>

#include <private/ios.h>

#include <private/hollywood.h>

#include <revolution/os.h>
#include <private/os.h>

#include <string.h>
#include <size_t.h>

#define DIFFERENTIATE(a, b) ((a) < (b)) ? ((u32)0xFFFFFFFF - (b) + (a) + 1) : ((a) - (b))

#define IPC_CLT_HEAP_SIZE   0x1000

static IOSResponseRequest   __responses;

static s32 __mailboxAck = 1;
static u32 __relnchFl   = 0;

static IOSRpcRequest* __relnchRpc       = NULL;
static IOSRpcRequest* __relnchRpcSave   = NULL;

u8 __rpcBuf[OSRoundUp32B(sizeof(IOSRpcRequest))] ALIGN32;

static IOSHeapId hid = -1;

size_t strnlen(const char* s, size_t maxlen) {
    const unsigned char* p = (const unsigned char*)s;
    while (*p && maxlen-- > 0) {
        p++;
    }
    return (u32)p - (u32)s;
}

static inline IOSError ipcFree(IOSRpcRequest* rpc) {
    IOSError ret = IPC_RESULT_OK;
    iosFree(hid, rpc);
    return ret;
}

static inline void __ipcSendRequest() {
    IOSRpcRequest* rpc;

    if (DIFFERENTIATE(__responses.wcount, __responses.rcount) <= 0) {
        return;
    }

    rpc = (IOSRpcRequest*)__responses.buf[__responses.rptr];

    if (rpc == 0) {
        return;
    }

    if (rpc->relaunch_flag) {
        __mailboxAck--;
    }

    IPC_WRITE_REG(HW_IPC_PPCMSG, OSCachedToPhysical(rpc));
    __responses.rptr = (__responses.rptr + 1) % ARRSIZE(__responses.buf);
    __responses.rcount++;
    __mailboxAck--;

    IPC_WRITE_REG(HW_IPC_PPCCTRL, (IPC_READ_REG(HW_IPC_PPCCTRL) & ((1<<5) | (1<<4)) | (1<<0)));
}

void IpcReplyHandler(__OSInterrupt interrupt, OSContext* context) {
    OSContext           exceptionContext;
    IOSResourceRequest* req;
    IOSRpcRequest*      rep;
    u32                 addr;

    addr = IPC_READ_REG(HW_IPC_ARMMSG);

    if (!addr) {
        goto err;
    }

    rep = (IOSRpcRequest*)OSPhysicalToCached(addr);
    IPC_WRITE_REG(HW_IPC_PPCCTRL, (IPC_READ_REG(HW_IPC_PPCCTRL) & ((1<<5) | (1<<4)) | (1<<2)));
    ACR_WRITE_REG32(HW_PPCIRQFLAG, (1<<30));
    req = &rep->request;

    DCInvalidateRange(req, sizeof(*req));

    switch (req->handle) {
        case IPC_REQ_READ: {
            req->args.read.outPtr = (req->args.read.outPtr) ? OSPhysicalToCached((u32)req->args.read.outPtr) : NULL;

            if (req->status > 0) {
                DCInvalidateRange(req->args.read.outPtr, (u32)req->status);
            }

            break;
        }

        case IPC_REQ_IOCTL: {
            req->args.ioctl.outPtr = (req->args.ioctl.outPtr) ? OSPhysicalToCached((u32)req->args.ioctl.outPtr) : NULL;

            DCInvalidateRange(req->args.ioctl.inPtr, req->args.ioctl.inLen);
            DCInvalidateRange(req->args.ioctl.outPtr, req->args.ioctl.outLen);

            break;
        }

        case IPC_REQ_IOCTLV: {
            int i;
            IOSResourceIoctlv* v = &req->args.ioctlv;

            req->args.ioctlv.vector = (req->args.ioctlv.vector) ? (IOSIoVector*)OSPhysicalToCached((u32)req->args.ioctlv.vector) : NULL;
            DCInvalidateRange(&v->vector[0], (req->args.ioctlv.readCount + req->args.ioctlv.writeCount)*  sizeof(IOSIoVector));

            for (i = 0; i < (req->args.ioctlv.readCount + req->args.ioctlv.writeCount); i++) {
                v->vector[i].base = (v->vector[i].base) ? (u8*)OSPhysicalToCached((u32)v->vector[i].base) : NULL;
                DCInvalidateRange(v->vector[i].base, v->vector[i].length);
            }

            if (__relnchFl && __relnchRpcSave == rep) {
                __relnchFl = 0;

                if (__mailboxAck < 1) {
                    __mailboxAck++;
                }
            }

            break;
        }

        default:
            break;
    }

    if (rep->callback) {
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(&exceptionContext);

        rep->callback(req->status, (void*)rep->callback_arg);

        OSClearContext(&exceptionContext);
        OSSetCurrentContext(context);

        ipcFree(rep);
    }
    else {
        OSWakeupThread(&rep->thread_queue);
    }

    IPC_WRITE_REG(HW_IPC_PPCCTRL, (IPC_READ_REG(HW_IPC_PPCCTRL) & ((1<<5) | (1<<4))) | (1<<3));
    IPCiProfReply(req, (s32)req->handle);

err:
    return;
}

static void IpcAckHandler(__OSInterrupt interrupt, OSContext* context) {
    IPC_WRITE_REG(HW_IPC_PPCCTRL, (IPC_READ_REG(HW_IPC_PPCCTRL)  & ((1<<5) | (1<<4))) | (1<<1));
    ACR_WRITE_REG32(HW_PPCIRQFLAG, (1<<30));

    if (__mailboxAck < 1) {
        __mailboxAck++;
        IPCiProfAck();
    }

    if (__mailboxAck > 0) {
        if (__relnchFl) {
            IOSResourceRequest* req = &__relnchRpc->request;
            req->status = 0;
            __relnchFl = 0;

            OSWakeupThread(&__relnchRpc->thread_queue);
            IPC_WRITE_REG(HW_IPC_PPCCTRL, (IPC_READ_REG(HW_IPC_PPCCTRL)  & ((1<<5) | (1<<4))) | (1<<3));
        }

        __ipcSendRequest();
    }
}

void IPCInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
    if ((IPC_READ_REG(HW_IPC_PPCCTRL) & ((1<<4) | (1<<2))) == ((1<<4) | (1<<2))) {
        IpcReplyHandler(interrupt, context);
    }
 
    if ((IPC_READ_REG(HW_IPC_PPCCTRL) & ((1<<5) | (1<<1))) == ((1<<5) | (1<<1))) {
        IpcAckHandler(interrupt, context);
    }
}

IOSError IPCCltInit() {
    static u32  initialized = FALSE;
    IOSError    ret = IPC_RESULT_OK;
    void*       bufferLo;
    u32         i;

    if (initialized) {
        goto out;
    }

    initialized = TRUE;

    IPCInit();

    i = IPC_CLT_HEAP_SIZE<<1;
    bufferLo = IPCGetBufferLo();

    if ((void*)((u8*)bufferLo + i) > IPCGetBufferHi()) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    hid = iosCreateHeap(bufferLo, i);
    IPCSetBufferLo((void*)((u8*)bufferLo + i));

    __OSSetInterruptHandler(__OS_INTERRUPT_PI_ACR, IPCInterruptHandler);
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_ACR);

    IPC_WRITE_REG(HW_IPC_PPCCTRL, ((1<<5) | (1<<4) | (1<<3)));
    IPCiProfInit();

out:
    return ret;
}

IOSError IPCCltReInit() {
    u32         i;
    IOSError    ret = IPC_RESULT_OK;
    void*       bufferLo;

    i = IPC_CLT_HEAP_SIZE;
    bufferLo = IPCGetBufferLo();

    if ((void*)((u8*)bufferLo + i) > IPCGetBufferHi()) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    hid = iosCreateHeap(bufferLo, i);
    IPCSetBufferLo((void*)((u8*)bufferLo + i));

out:
    return ret;
}

static inline IOSRpcRequest* ipcAllocReq() {
    return (IOSRpcRequest*)iosAllocAligned(hid, sizeof(IOSRpcRequest), DEFAULT_ALIGN);
}

static inline IOSError __ipcQueueRequest(IOSResourceRequest* req) {
    IOSError ret = IPC_RESULT_OK;

    if (DIFFERENTIATE(__responses.wcount, __responses.rcount) >= ARRSIZE(__responses.buf)) {
        ret = IPL_RESULT_FULLQUEUE;
    }
    else {
        __responses.buf[__responses.wptr] = req;
        __responses.wptr = (__responses.wptr + 1) % ARRSIZE(__responses.buf);
        __responses.wcount++;
        IPCiProfQueueReq(req, (s32)req->handle);
    }

    return ret;
}

static inline IOSError __ios_Open(IOSRpcRequest* rpc, const char* path, u32 flags) {
    IOSError            ret = IPC_RESULT_OK;
    IOSResourceRequest* req;

    if (!rpc) {
        ret = IPC_RESULT_INVALID;
        goto error;
    }

    req = &rpc->request;
    DCFlushRange((void*)path, strnlen(path, 64)+1);
    req->args.open.path = (u8*)OSCachedToPhysical(path);
    req->args.open.flags = flags;

error:
    return ret;
}

static inline IOSError __ios_Ipc1(IOSFd fd, u32 cmd, IOSIpcCb callback, void* callbackArg, IOSRpcRequest** rpc) {
    IOSError            ret = IPC_RESULT_OK;
    IOSResourceRequest* req;

    if (rpc == 0) {
        ret = IPC_RESULT_INVALID;
        goto error;
    }
    
    *rpc = (IOSRpcRequest*)ipcAllocReq();
    
    if (*rpc == 0) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto error;
    }

    req = &(*rpc)->request;
    (*rpc)->callback = callback;
    (*rpc)->callback_arg = callbackArg;
    (*rpc)->relaunch_flag = FALSE;
    req->cmd = cmd;
    req->handle = (u32)fd;

error:
    return ret;
}

static IOSError __ios_Ipc2(IOSRpcRequest* rpc, IOSIpcCb callback) {
    IOSError            ret = IPC_RESULT_OK;
    u32                 inten;
    IOSResourceRequest* req;

    if (rpc == NULL) {
        ret = IPC_RESULT_INVALID;
    }
    else {
        req = &rpc->request;

        if (!callback) {
            OSInitThreadQueue(&rpc->thread_queue);
        }

        DCFlushRange(req, sizeof(*req));
        inten = OSDisableInterrupts();
        ret = __ipcQueueRequest(req);

        if (ret != IPC_RESULT_OK) {
            OSRestoreInterrupts(inten);

            if (callback) {
                ipcFree(rpc);
            }
        }
        else {
            if (__mailboxAck > 0) {
                __ipcSendRequest();
            }

            if (!callback) {
                OSSleepThread(&rpc->thread_queue);
            }

            OSRestoreInterrupts(inten);

            if (!callback) {
                ret = req->status;
            }
        }
    }

    if (rpc && !callback) {
        ipcFree(rpc);
    }

    return ret;
}

IOSError IOS_OpenAsync(const char* pPath, u32 flags, IOSIpcCb callback, void* callback_arg) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(0, IPC_REQ_OPEN, callback, callback_arg, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Open(rpc, pPath, flags);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Ipc2(rpc, callback);
error:
    return ret;
}

IOSError IOS_Open(const char* path, u32 flags) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(0, IPC_REQ_OPEN, NULL, NULL, &rpc);
    
    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Open(rpc, path, flags);
    
    if (ret != IPC_RESULT_OK) {
        goto error;
    }
    
    ret = __ios_Ipc2(rpc, NULL);

error:
    return ret;
}

IOSError IOS_CloseAsync(IOSFd fd, IOSIpcCb callback, void* callbackArg) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_CLOSE, callback, callbackArg, &rpc);

    if (ret == IPC_RESULT_OK) {
        ret = __ios_Ipc2(rpc, callback);
    }

    return ret;
}

IOSError IOS_Close(IOSFd fd) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_CLOSE, NULL, NULL, &rpc);

    if (ret == IPC_RESULT_OK) {
        ret = __ios_Ipc2(rpc, NULL);
    }

    return ret;
}

static IOSError __ios_Read(IOSRpcRequest* rpc, void* buf, u32 len) {
    IOSResourceRequest* req;
    IOSError            ret = IPC_RESULT_OK;

    if (!rpc) {
        ret = IPC_RESULT_INVALID;
        goto error;
    }

    req = &rpc->request;

    DCInvalidateRange(buf, len);
    req->args.read.outPtr = (buf) ? (u8*)OSCachedToPhysical(buf) : 0;
    req->args.read.outLen = len;

error:
    return ret;
}

IOSError IOS_ReadAsync(IOSFd fd, void* buf, u32 len, IOSIpcCb callback, void* callbackArg) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_READ, callback, callbackArg, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Read(rpc, buf, len);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Ipc2(rpc, callback);

error:
    return ret;
}

IOSError IOS_Read(IOSFd fd, void* buf, u32 len) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_READ, NULL, NULL, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Read(rpc, buf, len);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Ipc2(rpc, NULL);

error:
    return ret;
}

static IOSError __ios_Write(IOSRpcRequest* rpc, void* buf, u32 len) {
    IOSResourceRequest* req;
    IOSError            ret = IPC_RESULT_OK;

    if (!rpc) {
        ret = IPC_RESULT_INVALID;
        goto error;
    }

    req = &rpc->request;
    req->args.write.inPtr = (buf) ? (u8*)OSCachedToPhysical(buf) : NULL;
    req->args.write.inLen = len;
    DCFlushRange(buf, len);

error:
    return ret;
}

IOSError IOS_WriteAsync(IOSFd fd, void* buf, u32 len, IOSIpcCb callback, void* callbackArg) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_WRITE, callback, callbackArg, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Write(rpc, buf, len);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Ipc2(rpc, callback);

error:
    return ret;
}

IOSError IOS_Write(IOSFd fd, void* buf, u32 len) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_WRITE, NULL, NULL, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Write(rpc, buf, len);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Ipc2(rpc, NULL);

error:
    return ret;
}

static IOSError __ios_Seek(IOSRpcRequest* rpc, s32 offset, u32 whence) {
    IOSResourceRequest* req;
    IOSError            ret = IPC_RESULT_OK;

    if (!rpc) {
        ret = IPC_RESULT_INVALID;
        goto error;
    }

    req = &rpc->request;
    req->args.seek.offset = offset;
    req->args.seek.whence = whence;

error:
    return ret;
}

IOSError IOS_SeekAsync(IOSFd fd, s32 offset, u32 whence, IOSIpcCb callback, void* callbackArg) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_SEEK, callback, callbackArg, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Seek(rpc, offset, whence);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Ipc2(rpc, callback);

error:
    return ret;
}

IOSError IOS_Seek(IOSFd fd, s32 offset, u32 whence) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_SEEK, NULL, NULL, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Seek(rpc, offset, whence);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Ipc2(rpc, NULL);

error:
    return ret;
}

static IOSError __ios_Ioctl(IOSRpcRequest* rpc, s32 cmd, void* input, u32 inputLen, void* output, u32 outputLen) {
    IOSResourceRequest* req;
    IOSError            ret = IPC_RESULT_OK;

    if (!rpc) {
        ret = IPC_RESULT_INVALID;
        goto error;
    }

    req = &rpc->request;

    req->args.ioctl.cmd = (u32)cmd;
    req->args.ioctl.outPtr = (output) ? (u8*)OSCachedToPhysical(output) : 0;
    req->args.ioctl.outLen = outputLen;
    req->args.ioctl.inPtr = (input) ? (u8*)OSCachedToPhysical(input) : 0;
    req->args.ioctl.inLen = inputLen;
    
    DCFlushRange(input, inputLen);
    DCFlushRange(output, outputLen);

error:
    return ret;
}

IOSError IOS_IoctlAsync(IOSFd fd, s32 cmd, void* input, u32 inputLen, void* output, u32 outputLen, IOSIpcCb callback, void* callbackArg) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_IOCTL, callback, callbackArg, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto err;
    }

    ret = __ios_Ioctl(rpc, cmd, input, inputLen, output, outputLen);

    if (ret != IPC_RESULT_OK) {
        goto err;
    }

    ret = __ios_Ipc2(rpc, callback);

err:
    return ret;
}

IOSError IOS_Ioctl(IOSFd fd, s32 cmd, void* input, u32 inputLen, void* output, u32 outputLen) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_IOCTL, NULL, NULL, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Ioctl(rpc, cmd, input, inputLen, output, outputLen);

    if (ret != IPC_RESULT_OK) {
        goto error;
    }

    ret = __ios_Ipc2(rpc, NULL);

error:
    return ret;
}


static IOSError __ios_Ioctlv(IOSRpcRequest* rpc, s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vect) {
    IOSResourceRequest* req;
    IOSResourceIoctlv*  v;
    IOSError            ret = IPC_RESULT_OK;

    u32 i, j;

    if (!rpc) {
        ret = IPC_RESULT_INVALID;
        goto err;
    }

    req = &rpc->request;
    req->args.ioctlv.cmd = (u32)cmd;
    req->args.ioctlv.readCount = readCount;
    req->args.ioctlv.writeCount = writeCount;
    req->args.ioctlv.vector = vect;

    v = &req->args.ioctlv;

    for (i = 0, j = v->readCount; i < req->args.ioctlv.writeCount; i++) {
        DCFlushRange(v->vector[j + i].base, v->vector[j + i].length);
        v->vector[j + i].base = (v->vector[j + i].base) ? (u8*)OSCachedToPhysical(v->vector[j + i].base) : 0;
    }

    for (i = 0; i < req->args.ioctlv.readCount; i++) {
        DCFlushRange(v->vector[i].base, v->vector[i].length);
        v->vector[i].base = (v->vector[i].base) ? (u8*)OSCachedToPhysical(v->vector[i].base) : 0;
    }

    DCFlushRange(&v->vector[0], (v->readCount + v->writeCount)*  sizeof(IOSIoVector));
    req->args.ioctlv.vector = (vect) ? (IOSIoVector*)OSCachedToPhysical(vect) : 0;

err:
    return ret;
}

IOSError IOS_IoctlvAsync(IOSFd fd, s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vect, IOSIpcCb callback, void* callbackArg) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_IOCTLV, callback, callbackArg, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto err;
    }

    ret = __ios_Ioctlv(rpc, cmd, readCount, writeCount, vect);

    if (ret != IPC_RESULT_OK) {
        goto err;
    }

    ret = __ios_Ipc2(rpc, callback);

err:
    return ret;
}

IOSError IOS_Ioctlv(IOSFd fd, s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vect) {
    IOSRpcRequest*  rpc;
    IOSError        ret = IPC_RESULT_OK;

    ret = __ios_Ipc1(fd, IPC_REQ_IOCTLV, NULL, NULL, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto err;
    }

    ret = __ios_Ioctlv(rpc, cmd, readCount, writeCount, vect);

    if (ret != IPC_RESULT_OK) {
        goto err;
    }

    ret = __ios_Ipc2(rpc, NULL);

err:
    return ret;
}

IOSError IOS_IoctlvReboot(IOSFd fd, s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vect) {
    IOSError            ret = IPC_RESULT_OK;
    u32                 inten;

    IOSResourceRequest* req;
    IOSRpcRequest*      rpc;

    inten = OSDisableInterrupts();

    if (__relnchFl) {
        OSRestoreInterrupts(inten);
        ret = -10;
        goto finish;
    }

    __relnchFl = 1;
    OSRestoreInterrupts(inten);

    ret = __ios_Ipc1(fd, IPC_REQ_IOCTLV, NULL, NULL, &rpc);

    if (ret != IPC_RESULT_OK) {
        goto err;
    }

    __relnchRpcSave = rpc;
    rpc->relaunch_flag = TRUE;

    ret = __ios_Ioctlv(rpc, cmd, readCount, writeCount, vect);
    
    if (ret != IPC_RESULT_OK) {
        goto err;
    }

    memcpy(&__rpcBuf, rpc, sizeof(IOSRpcRequest));
    __relnchRpc = (IOSRpcRequest*)&__rpcBuf;
    req = &rpc->request;

    OSInitThreadQueue(&__relnchRpc->thread_queue);
    DCFlushRange(req, sizeof(*req));

    inten = OSDisableInterrupts();
    ret = __ipcQueueRequest(req);

    if (ret != IPC_RESULT_OK) {
        OSRestoreInterrupts(inten);
        goto err;
    }

    if (__mailboxAck > 0) {
        __ipcSendRequest();
    }

    OSSleepThread(&__relnchRpc->thread_queue);
    OSRestoreInterrupts(inten);
    ret = (&__relnchRpc->request)->status;

err:
    __relnchFl = 0;
    __relnchRpcSave = NULL;

    if (rpc && (ret != IPC_RESULT_OK)) {
        ipcFree(rpc);
    }

finish:
    return ret;
}
