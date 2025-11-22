#include <private/usbcmn/puh_ker_msg.h>

#include <revolution/os.h>

#define MAX_PUH_SEM 2

static struct {
    struct {
        OSMessageQueue* queue;  // 0x00
        void*           unk_0x04;
    }       entries[MAX_PUH_SEM];   // 0x00
    void*   unk_0x14;
} st_uhs_ker_msg_mng;

s32 uhf_ker_send_message(int index, void* message) {
    if (index == 0 || index > MAX_PUH_SEM) {
        return -5;
    }

    if (message == NULL) {
        return -5;
    }

    if (st_uhs_ker_msg_mng.entries[index-1].queue == NULL) {
        return -12;
    }

    return OSSendMessage(st_uhs_ker_msg_mng.entries[index-1].queue, message, 0) ? 0 : -20;
}
