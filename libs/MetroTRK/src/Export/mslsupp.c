#include <decomp.h>

#include <trk/MetroTRK.h>

inline DSIOResult __access_file(unsigned int handle, unsigned char* buffer, int* count, void* ref_con, MessageCommandID cmd);
inline DSIOResult __read_file(unsigned int handle, unsigned char* buffer, int* count, void* ref_con);
inline DSIOResult __write_file(unsigned int handle, unsigned char* buffer, int* count, void* ref_con);

inline DSIOResult __read_file(unsigned int handle, unsigned char* buffer, int* count, void* ref_con) {
    return __access_file(handle, buffer, count, ref_con, DSMSG_ReadFile);
}

inline DSIOResult __write_file(unsigned int handle, unsigned char* buffer, int* count, void* ref_con) {
    return __access_file(handle, buffer, count, ref_con, DSMSG_WriteFile);
}

inline DSIOResult __access_file(unsigned int handle, unsigned char* buffer, int* count, void* ref_con, MessageCommandID cmd) {
    int countTemp;
    unsigned int r0;

    if (GetTRKConnected() == DS_NoError) {
        return DS_IOError;
    }

    countTemp = *count;
    r0        = TRKAccessFile(cmd, handle, &countTemp, buffer);
    *count    = countTemp;

    switch ((unsigned char)r0) {
        case DS_IONoError:
            return DS_IONoError;
        case DS_IOEOF:
            return DS_IOEOF;
    }

    return DS_IOError;
}

DSIOResult __read_console(unsigned int handle, unsigned char* buffer, int* count, void* ref_con) {
    if (GetUseSerialIO() == FALSE) {
        return DS_IOError;
    }
    return __read_file(DS_Stdin, buffer, count, ref_con);
}

DSIOResult __TRK_write_console(unsigned int handle, unsigned char* buffer, int* count, void* ref_con) {
    if (GetUseSerialIO() == 0) {
        return DS_IOError;
    }
    return __write_file(DS_Stdout, buffer, count, ref_con);
}
