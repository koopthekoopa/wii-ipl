#include <private/usb.h>

#include <revolution/os.h>

#include <private/ipc.h>
#include <private/ios.h>

#include <private/fs.h>

#include <stdio.h>

#include <string.h>
#include <stdarg.h>

#define USB_HEAP_SIZE 0x4000

typedef enum {
    USB_NCLEAN_CLOSEDEVICE = 0,
    USB_NCLEAN_1,
    USB_NCLEAN_2,
    USB_NCLEAN_BULKMSG,
    USB_NCLEAN_4,
    USB_NCLEAN_5,
    USB_NCLEAN_6,
    USB_NCLEAN_CTRLMSG,
    USB_NCLEAN_MAX
} USBNClean;

typedef enum {
    USB_IOCTLV_CTRLMSG = 0,
    USB_IOCTLV_BLKMSG,
    USB_IOCTLV_INTRMSG
} USBIoctl;

typedef struct USBMsg {
    void*   buffer; // 0x00
    u16     length; // 0x04
} USBMsg;

typedef struct USBCommandBlock {
    USBCallback     callback;               // 0x00
    USBIsoCallback  isoCallback;            // 0x04
    void*           callbackArg;            // 0x08
    void*           unkIsoArg;              // 0x0C

    char            unk_0x10[0x4];

    void*           clean[USB_NCLEAN_MAX];  // 0x14
    u32             nclean;                 // 0x34
    char            unk_0x38[0x40 - 0x38];
    union {
        char    path[FS_MAX_PATH];
        USBMsg  msg;
    };                                      // 0x40
} USBCommandBlock;

static s32 hId = -1;

static void* lo = NULL;
static void* hi = NULL;

static u8 s_usb_log = FALSE;
static u8 s_usb_err = TRUE;

static void USB_LOG(const char* fmt, ...) {
    va_list list;

    if (s_usb_log) {
        OSReport("USB: ");
        va_start(list, fmt);
        vprintf(fmt, list);
        va_end(list);
    }
}

static void USB_ERR(const char* fmt, ...) {
    va_list list;

    if (s_usb_err) {
        OSReport("USB ERR: ");
        va_start(list, fmt);
        vprintf(fmt, list);
        va_end(list);
    }
}

static void* IOSAlloc(size_t size) {
    void* mem;

    mem = iosAllocAligned(hId, size, DEFAULT_ALIGN);

    if (mem == NULL) {
        USB_ERR("iosAllocAligned(%d, %u) failed: %d\n", hId, size, mem);
    }

    return mem;
}

static void IOSFree(void* mem) {
    s32 result;

    if (mem != NULL) {
        result = iosFree(hId, mem);

        if (result < IPC_RESULT_OK) {
            USB_ERR("iosFree(%d, 0x%x) failed: %d\n", hId, mem, result);
        }
    }
}

IOSError IUSB_OpenLib() {
    IOSError result;
    BOOL enabled;

    result = IPC_RESULT_OK;
    enabled = OSDisableInterrupts();

    if (hId != -1) {
        USB_LOG("Library is already initialized. Heap Id = %d\n", hId);
        goto end;
    }

    if (lo == NULL) {
        lo = IPCGetBufferLo();
        hi = IPCGetBufferHi();

        USB_LOG("iusb size: %d lo: %x hi: %x\n", sizeof(USBCommandBlock), lo, hi);

        if ((u8*)lo + USB_HEAP_SIZE > hi) {
            USB_ERR("Not enough IPC arena\n");
            result = IPC_RESULT_ALLOC_FAILED;
            goto end;
        }

        IPCSetBufferLo((u8*)lo + USB_HEAP_SIZE);
    }

    hId = iosCreateHeap(lo, USB_HEAP_SIZE);
    if (hId < 0) {
        USB_ERR("Not enough heaps\n");
        result = IPC_RESULT_ALLOC_FAILED;
    }

end:
    OSRestoreInterrupts(enabled);
    return result;
}

IOSError IUSB_CloseLib() {
    return IPC_RESULT_OK;
}

static s32 _intrBlkCtrlIsoCb(s32 result, void* arg) {
    int i;
    USBCommandBlock* block = (USBCommandBlock*)arg;

    USB_LOG("_intrBlkCtrlIsoCb returned: %d\n", result);
    USB_LOG("_intrBlkCtrlIsoCb: nclean = %d\n", block->nclean);

    if (block->nclean != USB_NCLEAN_CTRLMSG
    && block->nclean != USB_NCLEAN_BULKMSG
    && block->nclean != USB_NCLEAN_CLOSEDEVICE
    && block->nclean != USB_NCLEAN_4
    && block->nclean != USB_NCLEAN_2) {
        USB_ERR("__intrBlkCtrlIsoCb: got invalid nclean\n");
    }
    else {
        for (i = 0; i < block->nclean; i++) {
            USB_LOG("Freeing clean[%d] = %x\n", i, block->clean[i]);
            IOSFree(block->clean[i]);
        }
        block->nclean = USB_NCLEAN_CLOSEDEVICE;
    }

    USB_LOG("cb = %x cbArg = %x\n", block->callback, block->callbackArg);

    if (block->callback != NULL) {
        block->callback(result, block->callbackArg);
    } 
    else if (block->isoCallback != NULL) {
        USB_LOG("calling iso callback\n");
        block->isoCallback(result, block->unkIsoArg, block->callbackArg);
    }

    IOSFree(block);
    return result;
}

IOSError IUSB_OpenDeviceIds(const char* interface, u16 vid, u16 pid, IOSError* resultOut) {
    IOSError result;
    USBCommandBlock* block;

    block = NULL;

    if (resultOut == NULL) {
        result = IPC_RESULT_INVALID;
        goto end;
    }

    block = IOSAlloc(sizeof(USBCommandBlock));
    if (block == NULL) {
        USB_ERR("OpenDeviceIds: Not enough memory\n");
        result = IPC_RESULT_ALLOC_FAILED;
        goto end;
    }

    memset(block, 0, sizeof(USBCommandBlock));
    snprintf(block->path, sizeof(block->path), "/dev/usb/%s/%x/%x", interface, vid, pid);
    USB_LOG("OpenDevice - %s\n", block->path);

    result = IOS_Open(block->path, 0);
    USB_LOG("OpenDevice returned: %d\n", result);

    *resultOut = result;

end:
    IOSFree(block);
    return result;
}

DECOMP_FORCE_ACTIVE(usb_c, "OpenDevice\n");
DECOMP_FORCE_ACTIVE(usb_c, "OpenDeviceIdsAsync: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "CloseDevice\n");
DECOMP_FORCE_ACTIVE(usb_c, "CloseDevice returned: %d\n");

IOSError IUSB_CloseDeviceAsync(s32 fd, USBCallback callback, void* callbackArg) {
    IOSError result;
    USBCommandBlock* block;

    USB_LOG("CloseDevice\n");

    block = IOSAlloc(sizeof(USBCommandBlock));
    if (block == NULL) {
        USB_ERR("CloseDeviceAsync: Not enough memory\n");
        result = IPC_RESULT_ALLOC_FAILED;
        goto end;
    }
    
    memset(block, 0, sizeof(USBCommandBlock));

    block->callback = callback;
    block->callbackArg = callbackArg;
    block->nclean = USB_NCLEAN_CLOSEDEVICE;

    result = IOS_CloseAsync(fd, _intrBlkCtrlIsoCb, block);
    USB_LOG("CloseDevice returned: %d\n", result);

    if (result < 0) {
        IOSFree(block);
    }

end:
    return result;
}

DECOMP_FORCE_ACTIVE(usb_c, "openDevice: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "getDeviceList: Not enough memory\n");

IOSError __IntrBlkMsgInt(s32 fd, u32 endpoint, u32 length, void* buffer, u8 ioctl, USBCallback callback, void* callbackArg, u8 async) {
    IOSError result;
    IOSIoVector* vectors;
    u8* endpointWork;
    u16* lengthWork;
    USBCommandBlock* block;

    vectors = (IOSIoVector*)IOSAlloc(0x60);
    endpointWork = (u8*)IOSAlloc(DEFAULT_ALIGN);
    lengthWork = (u16*)IOSAlloc(DEFAULT_ALIGN);

    if (vectors == NULL || endpointWork == NULL || lengthWork == NULL) {
        USB_ERR("__IntrBlkMsgInt: Not enough memory\n");
        result = IPC_RESULT_ALLOC_FAILED;
        goto end;
    }

    *endpointWork = (u8)endpoint;
    *lengthWork = (u16)length;

    // Input vector 1: Transfer endpoint
    vectors[0].base = endpointWork;
    vectors[0].length = sizeof(u8);

    // Input vector 2: Transfer length
    vectors[1].base = (u8*)lengthWork;
    vectors[1].length = sizeof(u16);

    // Output vector 1: Transfer buffer
    vectors[2].base = buffer;
    vectors[2].length = length;

    DCFlushRange(endpointWork, DEFAULT_ALIGN);
    DCFlushRange(lengthWork, DEFAULT_ALIGN);
    DCFlushRange(vectors, 0x60);

    if (!async) {
        result = IOS_Ioctlv(fd, ioctl, 2, 1, vectors);
        USB_LOG("intr/blk ioctl returned: %d\n", result);
        goto end;
    }

    block = IOSAlloc(sizeof(USBCommandBlock));
    if (block == NULL) {
        USB_ERR("IntBlkMsgInt (async): Not enough memory\n");
        result = IPC_RESULT_ALLOC_FAILED;
        goto end;
    }

    memset(block, 0, sizeof(USBCommandBlock));

    block->callback = callback;
    block->callbackArg = callbackArg;
    USB_LOG("intrblkmsg: cb = 0x%x cbArg = 0x%x\n", block->callback, block->callbackArg);

    // Mark memory for deletion
    block->nclean = USB_NCLEAN_BULKMSG;
    block->clean[0] = endpointWork;
    block->clean[1] = lengthWork;
    block->clean[2] = vectors;

    block->msg.buffer = buffer;
    block->msg.length = length;

    result = IOS_IoctlvAsync(fd, ioctl, 2, 1, vectors, _intrBlkCtrlIsoCb, block);
    if (result >= IPC_RESULT_OK) {
        goto end_async;
    }

    IOSFree(block);

// Non-async (or unsuccessful async) means we must manually free memory
end:
    IOSFree(endpointWork);
    IOSFree(lengthWork);
    IOSFree(vectors);

// Async callback automatically freed the memory marked in block->clean
end_async:
    return result;
}

IOSError IUSB_ReadIntrMsgAsync(s32 fd, u32 endpoint, u32 length, void* buffer, USBCallback callback, void* callbackArg) {
    DCInvalidateRange(buffer, length);
    return __IntrBlkMsgInt(fd, endpoint, length, buffer, USB_IOCTLV_INTRMSG, callback, callbackArg, TRUE);
}

IOSError IUSB_ReadBlkMsgAsync(s32 fd, u32 endpoint, u32 length, void* buffer, USBCallback callback, void* callbackArg) {
    DCInvalidateRange(buffer, length);
    return __IntrBlkMsgInt(fd, endpoint, length, buffer, USB_IOCTLV_BLKMSG, callback, callbackArg, TRUE);
}

IOSError IUSB_WriteBlkMsgAsync(s32 fd, u32 endpoint, u32 length, const void* buffer, USBCallback callback, void* callbackArg) {
    DCFlushRange((void*)buffer, length);
    return __IntrBlkMsgInt(fd, endpoint, length, (void*)buffer, USB_IOCTLV_BLKMSG, callback, callbackArg, TRUE);
}

static IOSError __CtrlMsgInt(s32 fd, u8 requestType, u8 request, u16 value, u16 index, u16 length, void* buffer, USBCallback callback, void* callbackArg, u8 async) {
    IOSError result;
    IOSIoVector* vectors;
    u8* requestTypeWork;
    u8* requestWork;
    u8* unkWork;
    u16* valueWork;
    u16* indexWork;
    u16* lengthWork;
    USBCommandBlock* block;

    if ((buffer == NULL && length != 0) || (u32)buffer % DEFAULT_ALIGN != 0) {
        result = IPC_RESULT_INVALID;
        USB_ERR("ctrlmsg: bad data buffer\n");
        goto end_async;
    }

    vectors = (IOSIoVector*)IOSAlloc(0xE0);
    requestTypeWork = (u8*)IOSAlloc(DEFAULT_ALIGN);
    requestWork = (u8*)IOSAlloc(DEFAULT_ALIGN);
    unkWork = (u8*)IOSAlloc(DEFAULT_ALIGN);
    valueWork = (u16*)IOSAlloc(DEFAULT_ALIGN);
    indexWork = (u16*)IOSAlloc(DEFAULT_ALIGN);
    lengthWork = (u16*)IOSAlloc(DEFAULT_ALIGN);

    if (requestTypeWork == NULL || requestWork == NULL || unkWork == NULL ||
        valueWork == NULL || indexWork == NULL || lengthWork == NULL ||
        vectors == NULL) {
        USB_ERR("Ctrl Msg: Not enough memory\n");
        result = IPC_RESULT_ALLOC_FAILED;
        goto end;
    }

    *requestTypeWork = requestType;
    *requestWork = request;
    *valueWork = (value & 0xFF) << 8 | value >> 8 & 0xFF;
    *indexWork = (index & 0xFF) << 8 | index >> 8 & 0xFF;
    *lengthWork = (length & 0xFF) << 8 | length >> 8 & 0xFF;
    *unkWork = 0;

    // Input vector 1: bmRequestType
    vectors[0].base = requestTypeWork;
    vectors[0].length = sizeof(u8);

    // Input vector 2: bmRequest
    vectors[1].base = requestWork;
    vectors[1].length = sizeof(u8);

    // Input vector 3: wValue
    vectors[2].base = (u8*)valueWork;
    vectors[2].length = sizeof(u16);

    // Input vector 4: wIndex
    vectors[3].base = (u8*)indexWork;
    vectors[3].length = sizeof(u16);

    // Input vector 5: wLength
    vectors[4].base = (u8*)lengthWork;
    vectors[4].length = sizeof(u16);

    // Input vector 6: Unknown data
    vectors[5].base = unkWork;
    vectors[5].length = sizeof(u8);

    // Output vector 1: Transfer buffer
    vectors[6].base = buffer;
    vectors[6].length = length;

    DCFlushRange(requestTypeWork, DEFAULT_ALIGN);
    DCFlushRange(requestWork, DEFAULT_ALIGN);
    DCFlushRange(unkWork, DEFAULT_ALIGN);
    DCFlushRange(valueWork, DEFAULT_ALIGN);
    DCFlushRange(indexWork, DEFAULT_ALIGN);
    DCFlushRange(lengthWork, DEFAULT_ALIGN);
    DCFlushRange(vectors, 0xE0);

    if (!async) {
        result = IOS_Ioctlv(fd, USB_IOCTLV_CTRLMSG, 6, 1, vectors);
        goto end;
    }

    block = IOSAlloc(sizeof(USBCommandBlock));
    if (block == NULL) {
        USB_ERR("CtrlMsgInt (async): Not enough memory\n");
        result = IPC_RESULT_ALLOC_FAILED;
        goto end;
    }

    memset(block, 0, sizeof(USBCommandBlock));

    block->callback = callback;
    block->callbackArg = callbackArg;
    USB_LOG("ctrlmsgint: cb = 0x%x cbArg = 0x%x\n", block->callback, block->callbackArg);

    // Mark memory for deletion
    block->nclean = USB_NCLEAN_CTRLMSG;
    block->clean[0] = requestTypeWork;
    block->clean[1] = requestWork;
    block->clean[2] = valueWork;
    block->clean[3] = indexWork;
    block->clean[4] = lengthWork;
    block->clean[5] = unkWork;
    block->clean[6] = vectors;

    block->msg.buffer = buffer;
    block->msg.length = length;

    result = IOS_IoctlvAsync(fd, USB_IOCTLV_CTRLMSG, 6, 1, vectors, _intrBlkCtrlIsoCb, block);
    USB_LOG("Ctrl Msg async returned: %d\n", result);

    if (result >= IPC_RESULT_OK) {
        goto end_async;
    }

    IOSFree(block);

// Non-async (or unsuccessful async) means we must manually free memory
end:
    IOSFree(requestTypeWork);
    IOSFree(requestWork);
    IOSFree(valueWork);
    IOSFree(indexWork);
    IOSFree(lengthWork);
    IOSFree(unkWork);
    IOSFree(vectors);

// Async callback automatically freed the memory marked in block->clean
end_async:
    return result;
}

IOSError IUSB_WriteCtrlMsgAsync(s32 fd, u8 requestType, u8 request, u16 value, u16 index, u16 length, void* buffer, USBCallback callback, void* callbackArg) {
    DCFlushRange(buffer, length);
    return __CtrlMsgInt(fd, requestType, request, value, index, length, buffer, callback, callbackArg, TRUE);
}

// oh my
DECOMP_FORCE_ACTIVE(usb_c, "CloseDeviceAsync: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "openDevice: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "getDeviceList: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "getDeviceList: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "__IntrBlkMsgInt: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "intr/blk ioctl returned: %d\n");
DECOMP_FORCE_ACTIVE(usb_c, "IntBlkMsgInt (async): Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "intrblkmsg: cb = 0x%x cbArg = 0x%x\n");
DECOMP_FORCE_ACTIVE(usb_c, "ctrlmsg: bad data buffer\n");
DECOMP_FORCE_ACTIVE(usb_c, "Ctrl Msg: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "CtrlMsgInt (async): Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "ctrlmsgint: cb = 0x%x cbArg = 0x%x\n");
DECOMP_FORCE_ACTIVE(usb_c, "Ctrl Msg async returned: %d\n");
DECOMP_FORCE_ACTIVE(usb_c, "GetStrCb returned: %d\n");
DECOMP_FORCE_ACTIVE(usb_c, "GetStrCb: buf = 0x%x buflen = %u\n");
DECOMP_FORCE_ACTIVE(usb_c, "Failed to convert buffer from unicode 2 ascii\n");
DECOMP_FORCE_ACTIVE(usb_c, "calling cb 0x%x with arg 0x%x\n");
DECOMP_FORCE_ACTIVE(usb_c, "Failed __CtrlMsg: %d");
DECOMP_FORCE_ACTIVE(usb_c, "Failed to convert unicode 2 ascii\n");
DECOMP_FORCE_ACTIVE(usb_c, "GetStr - _GetStrCb\n");
DECOMP_FORCE_ACTIVE(usb_c, " GetAsciiStrAsync: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "__CtrlMsgInt failed %d\n");
DECOMP_FORCE_ACTIVE(usb_c, "GetDescrCb returned: %d\n");
DECOMP_FORCE_ACTIVE(usb_c, "GetDevDescr\n");
DECOMP_FORCE_ACTIVE(usb_c, "GetDevDescr: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "GetDevDescr: %d\n");
DECOMP_FORCE_ACTIVE(usb_c, "GetDevDescr - _GetDescrCb\n");
DECOMP_FORCE_ACTIVE(usb_c, "GetDevDescrAsync: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "DeviceRemovalNotifyAsync\n");
DECOMP_FORCE_ACTIVE(usb_c, "packet %u too big: %u\n");
DECOMP_FORCE_ACTIVE(usb_c, "Invalid parameters for ISO transfer request\n");
DECOMP_FORCE_ACTIVE(usb_c, "IUSB_IsoMsgAsync: Not enough memory\n");
DECOMP_FORCE_ACTIVE(usb_c, "Open(%s) failed\n");
DECOMP_FORCE_ACTIVE(usb_c, "Invalid path or devClass in insertion notification call\n");
