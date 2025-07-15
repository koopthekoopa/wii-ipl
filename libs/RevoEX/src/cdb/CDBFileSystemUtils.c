#include <revolution/cdb.h>
#include <private/cdb.h>

#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

void CDBFSConcatenatePath(char* path, const char* concatPath) {
    strcat(path, "/");
    strcat(path, concatPath);
}

BOOL CDBFSIsYearDirName(char* dirName) {
    if (CDBSafeStrLen(dirName, 4+1) == 4) {
        if (isdigit(dirName[0]) && isdigit(dirName[1]) && isdigit(dirName[2]) && isdigit(dirName[3])) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL CDBFSIsMonthDirName(char* dirName) {
    if (CDBSafeStrLen(dirName, 2+1) == 2) {
        if (isdigit(dirName[0]) && isdigit(dirName[1])) {
            int val = atoi(dirName);
            if (val >= 0 && val <= 11) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

BOOL CDBFSIsDayDirName(char* dirName) {
    if (CDBSafeStrLen(dirName, 2+1) == 2) {
        if (isdigit(dirName[0]) && isdigit(dirName[1])) {
            int val = atoi(dirName);
            if (val >= 1 && val <= 31) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

BOOL CDBFSIsHourDirName(char* dirName) {
    if (CDBSafeStrLen(dirName, 2+1) == 2) {
        if (isdigit(dirName[0]) && isdigit(dirName[1])) {
            int val = atoi(dirName);
            if (val >= 0 && val <= 23) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

BOOL CDBFSIsMinuteDirName(char* dirName) {
    if (CDBSafeStrLen(dirName, 2+1) == 2) {
        if (isdigit(dirName[0]) && isdigit(dirName[1])) {
            int val = atoi(dirName);
            if (val >= 0 && val <= 59) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

BOOL CDBFSIsCodeDirName(char* dirName) {
    if (CDBSafeStrLen(dirName, 7+1) == 7) {
        if (dirName[4] == '_') {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL CDBFSIsTypeDirName(char* dirName) {
    int strLen1 = CDBSafeStrLen(dirName, 5+1);
    int strLen2 = CDBSafeStrLen(dirName, 2+1);

    BOOL result;

    if (strLen2 == 1 && dirName[0] == '.') {
        result = TRUE;
    }
    else if (strLen2 == 2 && dirName[0] == '.' && dirName[1] == '.') {
        result = TRUE;
    }
    else {
        result = FALSE;
    }

    if (!result) {
        if (strLen1 < 6) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL CDBFSIsCDBFileOnSD(char* fileName) {
    if (CDBSafeStrLen(fileName, 12+1) == 12) {
        char* ptr = fileName;
        char i, j;
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 2; j++) {
                if (!isxdigit(ptr[j])) {
                    return FALSE;
                }
            }
            ptr += 2;
        }

        if (fileName[8] != '.') {
            return FALSE;
        }

        for (i = 9; i < 12; i++) {
            if (!isxdigit(fileName[i])) {
                return FALSE;
            }
        }
        return TRUE;
    }

    return FALSE;
}

BOOL CDBFSIsMCGCDirNameOnSD(char* dirName) {
    if (CDBSafeStrLen(dirName, 7+1) == 7) {
        if (dirName[4] == '_') {
            return TRUE;
        }
    }

    return FALSE;
}

// Duplicate of CDBFSIsTypeDirNameOn
BOOL CDBFSIsTypeDirNameOnSD(char* dirName) {
    int strLen1 = CDBSafeStrLen(dirName, 5+1);
    int strLen2 = CDBSafeStrLen(dirName, 2+1);

    BOOL result;

    if (strLen2 == 1 && dirName[0] == '.') {
        result = TRUE;
    }
    else if (strLen2 == 2 && dirName[0] == '.' && dirName[1] == '.') {
        result = TRUE;
    }
    else {
        result = FALSE;
    }

    if (!result) {
        if (strLen1 < 6) {
            return TRUE;
        }
    }

    return FALSE;
}
