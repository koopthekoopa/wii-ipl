#include <revolution/nand.h>
#include <private/nand.h>

#include <private/fs.h>

#include <private/ipc.h>

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define LINE_MAX_EACH   256
#define LINE_MAX        64
#define TOTAL_STR_SIZE  (LINE_MAX * LINE_MAX_EACH)
#define TOTAL_SIZE      (TOTAL_STR_SIZE * (int)sizeof(char))

static IOSFd    s_fd = -255;

static int      s_stage;
static char     s_message[LINE_MAX_EACH] ATTRIBUTE_ALIGN(LINE_MAX);

static NANDLoggingCallback s_callback = NULL;

#define CALLBACK_FUNC(b) if (s_callback) s_callback(b)

static void asyncRoutine(ISFSError result, void* arg);
static void PrepareLine(char* line, int type, const char* msg) {
    int             result;
    char            titleID[64];
    OSCalendarTime  time;

    // Setup line
    memset(line, ' ', LINE_MAX_EACH-2);

    // Get time
    OSTicksToCalendarTime(OSGetTime(), &time);

    // Grab the title ID
    strncpy(titleID, nandGetHomeDir() + 7, 16+1);
    titleID[8] = '-';
    titleID[16+1] = '\0';

    // Create entry
    result = snprintf(line, LINE_MAX_EACH, "%d %04d/%02d/%02d %02d:%02d:%02d %s %s", type % 63+1, time.year, time.mon+1, time.mday, time.hour, time.min, time.sec, titleID, msg);

    // Did
    if (result < LINE_MAX_EACH) {
        line[result] = ' ';
    }

    // Add new line (in CRLF)
    line[LINE_MAX_EACH-2] = '\r';
    line[LINE_MAX_EACH-1] = '\n';
}

BOOL NANDLoggingPrepareFile(u8* workBuf) {
    ISFSError   ret;
    IOSFd       fd;
    u32         leftOut = 0;

    int i;

    // Check to see if it's not a directory
    ret = ISFS_ReadDir("/shared2/test2/nanderr.log", NULL, &leftOut);
    if (ret == ISFS_ERROR_OK || ret == ISFS_ERROR_ACCESS) {
        OSReport("Caution!  Path of logfile is a directory!");
        return FALSE;
    }
    else if (ret == ISFS_ERROR_INVALID) {
        return TRUE;
    }
    else if (ret != ISFS_ERROR_NOEXISTS) {
        OSReport("Caution!  ISFS_ReadDir() failed.\n");
        return FALSE;
    }

    // Create the NAND log
    ret = ISFS_CreateFile("/tmp/nanderr.log", 0, ISFS_ACCESS_RW, ISFS_ACCESS_RW, ISFS_ACCESS_RW);
    if (ret != ISFS_ERROR_OK) {
        return FALSE;
    }

    // Open it
    fd = ISFS_Open("/tmp/nanderr.log", ISFS_ACCESS_WRITE);
    if (fd < ISFS_ERROR_OK) {
        return FALSE;
    }

    // Fill it all in with spaces
    memset(workBuf, ' ', TOTAL_SIZE);
    PrepareLine((char*)workBuf, 0, "Created log file.");
    for (i = 0; i < LINE_MAX; i++){
        workBuf[(i+1) * LINE_MAX_EACH-2] = '\r';
        workBuf[(i+1) * LINE_MAX_EACH-1] = '\n';
    }
    ret = ISFS_Write(fd, (char*)workBuf, TOTAL_SIZE);
    if (ret != TOTAL_SIZE) {
        OSReport("ISFS_Write() failed.\n");
        ISFS_Close(fd);
        ISFS_Delete("/tmp/nanderr.log");
        return FALSE;
    }

    // Close it...
    ret = ISFS_Close(fd);
    if (ret != ISFS_ERROR_OK) {
        OSReport("ISFS_Close() failed.\n");
        return FALSE;
    }

    // Move the filename to where it is supposed to be
    ret = ISFS_Rename("/tmp/nanderr.log", "/shared2/test2/nanderr.log");
    if (ret != ISFS_ERROR_OK) {
        OSReport("ISFS_Rename() failed.\n");
        return FALSE;
    }

    // Done!!!
    return TRUE;
}

BOOL reserveFileDescriptor() {
    BOOL enabled = FALSE;
    BOOL busy_flag = FALSE;

    enabled = OSDisableInterrupts();

    if (s_fd == -255) {
        s_fd = -254;
        busy_flag = FALSE;
    }
    else if (s_fd == -254) {
        busy_flag = TRUE;
    }
    else if (s_fd >= 0) {
        busy_flag = TRUE;
    }
    else {
        busy_flag = TRUE;
    }

    OSRestoreInterrupts(enabled);

    return busy_flag ? FALSE : TRUE;
}

BOOL NANDLoggingAddMessageAsync(NANDLoggingCallback callback, const char* fmt, ...) {
    va_list ap;
    ISFSError ret;

    if (!reserveFileDescriptor()) {
        return FALSE;
    }   

    // Add message
    va_start(ap, fmt);
    vsnprintf(s_message, LINE_MAX_EACH, fmt, ap);
    va_end(ap);

    // Open the file then write the new line. (with the asyncRoutine callback)
    s_callback = callback;
    s_stage = 1;
    ret = ISFS_OpenAsync("/shared2/test2/nanderr.log", ISFS_ACCESS_RW, asyncRoutine, NULL);

    if (ret == ISFS_ERROR_OK) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

static void asyncRoutine(ISFSError result, void* arg) {
    ISFSError   ret;
    static char s_rBuf[LINE_MAX_EACH] ATTRIBUTE_ALIGN(LINE_MAX);
    static char s_wBuf[LINE_MAX_EACH] ATTRIBUTE_ALIGN(LINE_MAX);

    s_stage++;

    if (s_stage == 2) {
        if (result >= ISFS_ERROR_OK) {
            s_fd = result;
            ret = ISFS_SeekAsync(s_fd, 0, ISFS_SEEK_BEG, asyncRoutine, NULL);

            if (ret != ISFS_ERROR_OK) {
                CALLBACK_FUNC(FALSE);
            }
        }
        else {
            CALLBACK_FUNC(FALSE);
        }
    }
    else if (s_stage == 3) {
        if (result == ISFS_ERROR_OK) {
            ret = ISFS_ReadAsync(s_fd, (u8*)s_rBuf, LINE_MAX_EACH, asyncRoutine, NULL);

            if (ret != ISFS_ERROR_OK) {
                CALLBACK_FUNC(FALSE);
            }
        }
        else {
            CALLBACK_FUNC(FALSE);
        }
    }
    else if (s_stage == 4) {
        if (result == LINE_MAX_EACH) {
            ret = ISFS_SeekAsync(s_fd, 0, ISFS_SEEK_BEG, asyncRoutine, NULL);

            if (ret != ISFS_ERROR_OK) {
                CALLBACK_FUNC(FALSE);
            }
        }
        else {
            CALLBACK_FUNC(FALSE);
        }
    }
    else if (s_stage == 5) {
        if (result == ISFS_ERROR_OK) {
            int type = 0;
            s_rBuf[255] = '\0';
    
            type = atoi(s_rBuf);

            PrepareLine(s_wBuf, type, s_message);

            ret = ISFS_WriteAsync(s_fd, s_wBuf, LINE_MAX_EACH, asyncRoutine, NULL);
            if (ret != ISFS_ERROR_OK) {
                CALLBACK_FUNC(FALSE);
            }
        }
        else {
            CALLBACK_FUNC(FALSE);
        }
    }
    else if (s_stage == 6) {
        if (result == LINE_MAX_EACH) {
            int type = atoi(s_rBuf);
            ret = ISFS_SeekAsync(s_fd, type * LINE_MAX_EACH, ISFS_SEEK_BEG, asyncRoutine, NULL);

            if (ret != ISFS_ERROR_OK) {
                CALLBACK_FUNC(FALSE);
            }
        }
        else {
            CALLBACK_FUNC(FALSE);
        }
    }
    else if (s_stage == 7) {
        int type = atoi(s_rBuf);
        if (result == type * LINE_MAX_EACH) {
            ret = ISFS_WriteAsync(s_fd, s_wBuf, LINE_MAX_EACH, asyncRoutine, NULL);
            if (ret != ISFS_ERROR_OK) {
                CALLBACK_FUNC(FALSE);
            }
        }
        else {
            CALLBACK_FUNC(FALSE);
        }
    }
    else if (s_stage == 8) {
        if (result == LINE_MAX_EACH) {
            ret = ISFS_CloseAsync(s_fd, asyncRoutine, NULL);
            if (ret != ISFS_ERROR_OK) {
                CALLBACK_FUNC(FALSE);
            }
        }
        else {
            CALLBACK_FUNC(FALSE);
        }
    }
    else if (s_stage == 9) {
        if (result == ISFS_ERROR_OK) {
            s_fd = -0xFF;
            CALLBACK_FUNC(TRUE);
        }
        else {
            CALLBACK_FUNC(FALSE);
        }
    }
}
