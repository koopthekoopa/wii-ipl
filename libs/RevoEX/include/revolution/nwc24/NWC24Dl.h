#ifndef NWC24_DL_H
#define NWC24_DL_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NWC24_DL_TASK_MAX       120
#define NWC24_DL_SUBTASK_MAX    32

typedef u16 NWC24DlId;

typedef enum NWC24DLError {
    DL24ERR_MESS_00,
    DL24ERR_MESS_01,
    DL24ERR_MESS_02,
    DL24ERR_MESS_03,
    DL24ERR_MESS_04,
    DL24ERR_MESS_05,
    DL24ERR_MESS_06,
    DL24ERR_MESS_07,
    DL24ERR_MESS_08,
    DL24ERR_MESS_09,
    DL24ERR_MESS_10,
    DL24ERR_MESS_11,
    DL24ERR_MESS_12,
    DL24WAR_MESS_01,
    NANDERR_MESS_01,
    NANDERR_MESS_02,
    NANDERR_MESS_03,

    DL24ERR_MESS_MAX
} NWC24DLError;

typedef enum NWC24DLStep {
    DL24STEP_NULL = 0,
    DL24STEP_FIRST,
    DL24STEP_FIRST_WAIT,
    DL24STEP_INIT,
    DL24STEP_OPEN,
    DL24STEP_CHECK,
    DL24STEP_UPDATE_CHECK,
    DL24STEP_UPDATE_TASK,
    DL24STEP_MAKE_TASK,
    DL24STEP_DUMP,
    DL24STEP_DOWNLOAD_CHECK,
    DL24STEP_FILE_OPEN,
    DL24STEP_FILE_CREATE,
    DL24STEP_WAIT,
    DL24STEP_ERROR,
    DL24STEP_CLOSE,
    DL24STEP_END,
} NWC24DLStep;

typedef enum {
    NWC24_DLTYPE_MULTIPART_V1,
    NWC24_DLTYPE_OCTETSTREAM_V1,
    NWC24_DLTYPE_MULTIPART_V2,
    NWC24_DLTYPE_OCTETSTREAM_V2
} NWC24DLType;

typedef enum {
    NWC24_DL_STTYPE_NONE,
    NWC24_DL_STTYPE_INCREMENT,
    NWC24_DL_STTYPE_TIME_HOUR,
    NWC24_DL_STTYPE_TIME_DAYOFWEEK,
    NWC24_DL_STTYPE_TIME_DAY
} NWC24DLSubTaskType;

typedef enum  {
    NWC24_DL_STFLAG_TRAILING_FILENAME = (1 << 0),
    NWC24_DL_STFLAG_TRAILING_URL = (1 << 1),
    NWC24_DL_STFLAG_INTELLIGENT_UPDATE = (1 << 8),
    NWC24_DL_STFLAG_RETICENT_UPDATE = (1 << 9)
} NWC24DLSubTaskFlags;

typedef struct NWC24DlTask {
    u8  data[512];  // 0x00
} NWC24DlTask;

typedef struct NWC24DlIterateWork {
    int unk_0x00;
    int unk_0x04;
    int unk_0x08;
    int unk_0x0C;
    int unk_0x10;
    int unk_0x14;
} NWC24DlIterateWork;

NWC24Err    NWC24InitDlTask(NWC24DlTask* dlTask, NWC24DLType dlType);

NWC24Err    NWC24SetDlId(NWC24DlTask* dlTask, NWC24DlId dlId);
NWC24Err    NWC24SetDlPriority(NWC24DlTask* dlTask, u8 dlPrio);
NWC24Err    NWC24SetDlInterval(NWC24DlTask* dlTask, u16 dlInterval);
NWC24Err    NWC24SetDlUrl(NWC24DlTask* dlTask, const char* dlUrl);
NWC24Err    NWC24SetDlFlags(NWC24DlTask* dlTask, u32 dlFlags);

NWC24Err    NWC24GetDlAppId(const NWC24DlTask* dlTask, u32* dlAppId);

NWC24Err    NWC24DumpDlTask(NWC24DlTask* dlTask);

NWC24Err    NWC24IterateDlTask(NWC24DlId* dlIterateId, BOOL begin);
NWC24Err    NWC24IterateDlTaskEx(NWC24DlIterateWork* dlIterateWork, NWC24DlId* dlIterateId);

NWC24Err    NWC24UpdateDlTask(NWC24DlTask* dlTask);

NWC24Err    NWC24DeleteDlTask(NWC24DlTask* dlTask);
NWC24Err    NWC24AddDlTask(NWC24DlTask* dlTask);

NWC24Err    NWC24GetDlTask(NWC24DlTask* dlTask, NWC24DlId dlId);

NWC24Err    NWC24PurgeOldestDlTask();
NWC24Err    NWC24ManageDlTaskListForMenu();

NWC24Err    NWC24ExtendDlTaskList(u32 num);

NWC24Err    NWC24GetDlOptOutFlags(NWC24DlTask* dlTask, u8* dlOptOutFlags);

#ifdef __cplusplus
}
#endif

#endif  // NWC24_DL_H
