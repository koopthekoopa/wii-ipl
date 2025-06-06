#include <private/es/types.h>

#include <private/ipc.h>
#include <private/ios.h>

#include <revolution/esp.h>

static IOSFd __esFd = -1;

#define ESPWork         u8 espWork[256] ALIGN32
#define AtESPWork(x)    (espWork + x)

#define IS_ALIGNED(x)   (((u32)(x) & 31) == 0)

// Di means something. DVD Interface????
enum {
    ESP_IOCTLV_LAUNCH_TITLE = 8,
    ESP_IOCTLV_OPEN_CONTENT = 9,
    ESP_IOCTLV_READ_CONTENT = 10,
    ESP_IOCTLV_CLOSE_CONTENT = 11,
    ESP_IOCTLV_LIST_TITLE_CONTENTS = 16,
    ESP_IOCTLV_LIST_TITLE_CONTENTS_WITH_COUNT = 17,
    ESP_IOCTLV_GET_TICKET_VIEWS = 18,
    ESP_IOCTLV_GET_TICKET_VIEWS_WITH_COUNT = 19,
    ESP_IOCTLV_GET_TMDVIEW = 20,
    ESP_IOCTLV_GET_TMDVIEW_WITH_SIZE = 21,
    ESP_IOCTLV_GET_CONSUMPTION = 22,
    ESP_IOCTLV_GET_DATA_DIR = 29,
    ESP_IOCTLV_GET_DVD_TICKET_VIEW = 27,
    ESP_IOCTLV_GET_TITLE_ID = 32,
    ESP_IOCTLV_SEEK_CONTENT = 35,
    ESP_IOCTLV_GET_DVD_TMD = 57,
    ESP_IOCTLV_GET_DVD_TMD_WITH_COUNT = 58
};

ESError ESP_InitLib() {
    ESError ret = ES_ERR_OK;

    // Already initialized? Get out.
    if (__esFd >= 0) {
        goto out;
    }

    __esFd = IOS_Open("/dev/es", 0);

    // Failed? Return error code
    if (__esFd < ES_ERR_OK) {
        ret = __esFd;
    }

out:
    return ret;
}

ESError ESP_CloseLib() {
    ESError ret = ES_ERR_OK;

    // Already closed? Get out.
    if (__esFd < 0) {
        goto out;
    }

    ret = IOS_Close(__esFd);

    if (ret == ES_ERR_OK) {
        __esFd = -1;
    }

out:
    return ret;
}

ESError ESP_LaunchTitle(ESTitleId titleId, ESTicketView* ticket) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);
    ESTitleId*      tId = (ESTitleId*)AtESPWork(0x00);

    ESError         ret;

    if (__esFd < 0) {
        return ES_ERR_INVALID;
    }

    if (!IS_ALIGNED(ticket)) {
        return ES_ERR_INVALID;
    }

    *tId = titleId;
    vec[0].base = (u8*)tId;
    vec[0].length = sizeof(*tId);

    vec[1].base = (u8*)ticket;
    vec[1].length = sizeof(*ticket);

    ret = IOS_IoctlvReboot(__esFd, ESP_IOCTLV_LAUNCH_TITLE, 2, 0, vec);

    // About to launch. Immediately abort file descriptor!!
    __esFd = -1;

    return ret;
}

ESFd ESP_OpenContentFile(ESContentId contentId) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);
    ESContentId*    pContentId = (ESContentId*)AtESPWork(0x00);

    ESError         ret;

    if (__esFd < 0) {
        return ES_ERR_INVALID;
    }

    *pContentId = contentId;
    vec[0].base = (u8*)pContentId;
    vec[0].length = sizeof(*pContentId);

    ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_OPEN_CONTENT, 1, 0 , vec);
    return ret;
}

ESError ESP_ReadContentFile(ESFd fd, void* buffer, u32 size) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);
    ESFd*           cFd = (ESFd*)AtESPWork(0x00);

    ESError         ret;

    if (__esFd < 0 || fd < 0 || buffer == NULL || size == 0) {
        return ES_ERR_INVALID;
    }

    if (!IS_ALIGNED(buffer)) {
        return ES_ERR_INVALID;
    }

    *cFd = fd;
    vec[0].base = (u8*)cFd;
    vec[0].length = sizeof(*cFd);

    vec[1].base = (u8*)buffer;
    vec[1].length = size;

    ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_READ_CONTENT, 1, 1 , vec);
    return ret;
}

ESError ESP_SeekContentFile(ESFd fd, s32 offset, u32 whence) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);
    s32*            pFd = (s32*)AtESPWork(0x00);
    s32*            pOffset = (s32*)AtESPWork(0x20);
    u32*            pWhence = (u32*)AtESPWork(0x40);

    ESError         ret;

    if (__esFd < 0) {
        return ES_ERR_INVALID;
    }

    *pFd = fd;
    vec[0].base = (u8*)pFd;
    vec[0].length = sizeof(*pFd);

    *pOffset = offset;
    vec[1].base = (u8*)pOffset;
    vec[1].length = sizeof(*pOffset);

    *pWhence = whence;
    vec[2].base = (u8*)pWhence;
    vec[2].length = sizeof(*pWhence);

    ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_SEEK_CONTENT, 3, 0 , vec);
    return ret;
}

ESError ESP_CloseContentFile(ESFd fd) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);
    s32*            pFd = (s32*)AtESPWork(0x00);

    ESError         ret;

    if (__esFd < 0 || fd < 0) {
        return ES_ERR_INVALID;
    }

    *pFd = fd;
    vec[0].base = (u8*)pFd;
    vec[0].length = sizeof(*pFd);

    ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_CLOSE_CONTENT, 1, 0, vec);
    return ret;
}

ESError ESP_ListTitleContentsOnCard(ESTitleId titleId, ESContentId* contentIds, u32* numContents) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);
    ESTitleId*      pTitleId = (ESTitleId*)AtESPWork(0x00);
    u32*            pNumContents = (u32*)AtESPWork(0x20);

    ESError         ret;

    if (__esFd < 0 || numContents == NULL) {
        return ES_ERR_INVALID;
    }

    if (!IS_ALIGNED(contentIds)) {
        return ES_ERR_INVALID;
    }

    *pTitleId = titleId;
    if (contentIds == NULL) {
        vec[0].base = (u8*)pTitleId;
        vec[0].length = sizeof(*pTitleId);

        vec[1].base = (u8*)pNumContents;
        vec[1].length = sizeof(*pNumContents);

        ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_LIST_TITLE_CONTENTS, 1, 1, vec);
        if (ret == IPC_RESULT_OK) {
            *numContents = *pNumContents;
        }
        return ret;
    }
    else if (*numContents == 0) {
        return ES_ERR_INVALID;
    }
    else {
        *pNumContents = *numContents;

        vec[0].base = (u8*)pTitleId;
        vec[0].length = sizeof(*pTitleId);
    
        vec[1].base = (u8*)pNumContents;
        vec[1].length = sizeof(*pNumContents);

        vec[2].base = (u8*)contentIds;
        vec[2].length = *numContents * sizeof(*contentIds);
    
        ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_LIST_TITLE_CONTENTS_WITH_COUNT, 2, 1, vec);
        return ret;
    }
}

ESError ESP_GetTicketViews(ESTitleId titleId,  ESTicketView* ticketViewList, u32* numTicketViews) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);
    ESTitleId*      pTitleId = (ESTitleId*)AtESPWork(0x00);
    u32*            pNumTicketViews = (u32*)AtESPWork(0x20);

    ESError         ret;

    if (__esFd < 0 || numTicketViews == NULL) {
        return ES_ERR_INVALID;
    }

    if (!IS_ALIGNED(ticketViewList)) {
        return ES_ERR_INVALID;
    }

    *pTitleId = titleId;
    if (ticketViewList == NULL) {
        vec[0].base = (u8*)pTitleId;
        vec[0].length = sizeof(*pTitleId);

        vec[1].base = (u8*)pNumTicketViews;
        vec[1].length = sizeof(*pNumTicketViews);

        ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_GET_TICKET_VIEWS, 1, 1, vec);
        if (ret == IPC_RESULT_OK) {
            *numTicketViews = *pNumTicketViews;
        }
        return ret;
    }
    else if (*numTicketViews == 0) {
        return ES_ERR_INVALID;
    }
    else {
        *pNumTicketViews = *numTicketViews;

        vec[0].base = (u8*)pTitleId;
        vec[0].length = sizeof(*pTitleId);
    
        vec[1].base = (u8*)pNumTicketViews;
        vec[1].length = sizeof(*pNumTicketViews);

        vec[2].base = (u8*)ticketViewList;
        vec[2].length = *numTicketViews * sizeof(*ticketViewList);
    
        ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_GET_TICKET_VIEWS_WITH_COUNT, 2, 1, vec);
        return ret;
    }
}

ESError ESP_DiGetTicketView(void* ticket, ESTicketView* ticketView) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);

    ESError         ret;

    if (__esFd < 0 || ticketView == NULL) {
        return ES_ERR_INVALID;
    }

    if (!IS_ALIGNED(ticket) || !IS_ALIGNED(ticketView)) {
        return ES_ERR_INVALID;
    }

    vec[0].base = (u8*)ticket;
    if (ticket == NULL) {
        vec[0].length = 0;
    }
    else {
        vec[0].length = sizeof(ESTicket);
    }

    vec[1].base = (u8*)ticketView;
    vec[1].length = sizeof(*ticketView);

    ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_GET_DVD_TICKET_VIEW, 1, 1, vec);
    return ret;
}

ESError ESP_DiGetTmd(ESTitleMeta* tmd, u32* tmdSize) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);
    u32*            pTmdSize = (u32*)AtESPWork(0x00);

    ESError         ret;

    if (__esFd < 0 || tmdSize == NULL) {
        return ES_ERR_INVALID;
    }

    if (!IS_ALIGNED(tmd)) {
        return ES_ERR_INVALID;
    }

    if (tmd == NULL) {
        vec[0].base = (u8*)pTmdSize;
        vec[0].length = sizeof(*pTmdSize);

        ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_GET_DVD_TMD, 0, 1, vec);
        if (ret == IPC_RESULT_OK) {
            *tmdSize = *pTmdSize;
        }
        return ret;
    }
    else if (*tmdSize == 0) {
        return ES_ERR_INVALID;
    }
    else {
        *pTmdSize = *tmdSize;

        vec[0].base = (u8*)pTmdSize;
        vec[0].length = sizeof(*pTmdSize);

        vec[1].base = (u8*)tmd;
        vec[1].length = *tmdSize;

        ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_GET_DVD_TMD_WITH_COUNT, 1, 1, vec);
        return ret;
    }
}

ESError ESP_GetTmdView(ESTitleId titleId, ESTmdView* tmdView, u32* tmdSize) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);
    ESTitleId*      pTitleId = (ESTitleId*)AtESPWork(0x00);
    u32*            pTmdSize = (u32*)AtESPWork(0x20);

    ESError         ret;

    if (__esFd < 0 || tmdSize == NULL) {
        return ES_ERR_INVALID;
    }

    if (!IS_ALIGNED(tmdView)) {
        return ES_ERR_INVALID;
    }

    *pTitleId = titleId;
    if (tmdView == NULL) {
        vec[0].base = (u8*)pTitleId;
        vec[0].length = sizeof(*pTitleId);

        vec[1].base = (u8*)pTmdSize;
        vec[1].length = sizeof(*pTmdSize);

        ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_GET_TMDVIEW, 1, 1, vec);
        if (ret == IPC_RESULT_OK) {
            *tmdSize = *pTmdSize;
        }
        return ret;
    }
    else if (*tmdSize == 0) {
        return ES_ERR_INVALID;
    }
    else {
        *pTmdSize = *tmdSize;

        vec[0].base = (u8*)pTitleId;
        vec[0].length = sizeof(*pTitleId);
    
        vec[1].base = (u8*)pTmdSize;
        vec[1].length = sizeof(*pTmdSize);

        vec[2].base = (u8*)tmdView;
        vec[2].length = *tmdSize;
    
        ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_GET_TMDVIEW_WITH_SIZE, 2, 1, vec);
        return ret;
    }
}

ESError ESP_GetDataDir(ESTitleId titleId, char* dataDir) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);
    ESTitleId*      pTitleId = (ESTitleId*)AtESPWork(0x00);

    ESError         ret;

    if (__esFd < 0 || dataDir == NULL) {
        return ES_ERR_INVALID;
    }

    if (!IS_ALIGNED(dataDir)) {
        return ES_ERR_INVALID;
    }

    *pTitleId = titleId;
    vec[0].base = (u8*)pTitleId;
    vec[0].length = sizeof(*pTitleId);
    
    vec[1].base = (u8*)dataDir;
    vec[1].length = sizeof(*dataDir) * 30;

    ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_GET_DATA_DIR, 1, 1, vec);
    return ret;
}

ESError ESP_GetTitleId(ESTitleId* titleId) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);

    ESError         ret;

    if (__esFd < 0 || titleId == NULL) {
        return ES_ERR_INVALID;
    }

    // Explicity use espWork instead of a pointer... ???
    vec[0].base = AtESPWork(0x00);
    vec[0].length = sizeof(ESTitleId);

    ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_GET_TITLE_ID, 0, 1, vec);
    if (ret == IPC_RESULT_OK) {
        *titleId = *(ESTitleId*)AtESPWork(0x00);;
    }
    return ret;
}

ESError ESP_GetConsumption(ESTicketId ticketId, ESLpEntry* limitEntries, u32* numEntries) {
    ESPWork;

    IOSIoVector*    vec = (IOSIoVector*)AtESPWork(0xD0);
    ESTitleId*      pTicketId = (ESTitleId*)AtESPWork(0x00);
    u32*            pNumEntries = (u32*)AtESPWork(0x20);

    ESError         ret;

    if (__esFd < 0) {
        return ES_ERR_INVALID;
    }

    if (!IS_ALIGNED(limitEntries)) {
        return ES_ERR_INVALID;
    }

    *pTicketId = ticketId;
    vec[0].base = (u8*)pTicketId;
    vec[0].length = sizeof(ticketId);

    if (limitEntries == NULL) {
        vec[1].base = NULL;
        vec[1].length = 0;
    }
    else {
        vec[1].base = (u8*)limitEntries;
        vec[1].length = *numEntries * sizeof(*limitEntries);
        *pNumEntries = *numEntries;
    }

    vec[2].base = (u8*)pNumEntries;
    vec[2].length = sizeof(*pNumEntries);

    ret = IOS_Ioctlv(__esFd, ESP_IOCTLV_GET_CONSUMPTION, 1, 2, vec);
    *numEntries = *pNumEntries;
    return ret;
}
