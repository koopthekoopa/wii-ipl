#ifndef PRIVATE_CDB_UTILS_H
#define PRIVATE_CDB_UTILS_H

#include <revolution/types.h>

#include <ctype.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

int     CDBSafeStrLen(const char* s, int n);

void    CDBCheckMakerCodeStr(char* makerCodeStr);
void    CDBCheckGameCodeStr(char* gameCodeStr);

#define CDBToLower(string, count) {     \
    int i;                              \
    for (i = 0; i < count; i++) {       \
        string[i] = tolower(string[i]); \
    }                                   \
}

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_UTILS_H
