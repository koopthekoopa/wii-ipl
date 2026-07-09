#include <egg/prim.h>

#include <revolution/os.h>

#include <cstdio>
#include <cstring>

void system_print(bool visible, char* pFile, char* pMsg, ...) {
    if (!visible) {
        return;
    }

    char fileName[256];

    for (int i = 0; i < strlen(pFile); i++) {
        if (i >= 256) {
            return;
        }

        fileName[i] = pFile[i];

        if (pFile[i] == '.') {
            fileName[i] = '\0';
            break;
        }
    }

    OSReport("%s:", fileName);

    char msgBuf[2048];

    va_list list;
    va_start(list, pMsg);
    vsnprintf(msgBuf, sizeof(msgBuf), pMsg, list);
    va_end(list);

    OSReport("%s", msgBuf);
}

void system_halt(char* pFile, int line, char* pMsg, ...) {
    OSReport("---------- HALT -------------\n");

    char fileName[256];
    for (int i = 0; i < strlen(pFile); i++) {
        fileName[i] = pFile[i];

        if (pFile[i] == '.') {
            fileName[i] = '\0';
            break;
        }
    }

    OSReport("%s(%d):", fileName, line);

    char msg_buf[2048];

    va_list list;
    va_start(list, pMsg);
    vsnprintf(msg_buf, sizeof(msg_buf), pMsg, list);
    va_end(list);

    OSReport("%s\n", msg_buf);

    OSHalt("Program Halt", 190);
}
