#ifndef MSL_INTERNAL_STDIO_API_H
#define MSL_INTERNAL_STDIO_API_H

#include <stddef.h>
#include <wchar.h>

enum __ReadProcActions {
    __GetAChar,
    __UngetAChar,
    __TestForError
};

typedef struct {
    char* spNextChar;      // 0x00
    int nullCharDetected;  // 0x04
} __InStrCtrl;

typedef struct {
    wchar_t* spwCharStr;  // 0x00
    size_t maxCharCount;  // 0x04
    size_t charsWritten;  // 0x08
} __wOutStrCtrl;

typedef struct {
    char* spCharStr;      // 0x00
    size_t maxCharCount;  // 0x04
    size_t charsWritten;  // 0x08
} __OutStrCtrl;

typedef struct {
    wchar_t* spwNextChar;  // 0x00
    int nullCharDetected;  // 0x04
} __wInStrCtrl;

int __StringRead(void* ptr, int ch, int act);
size_t __fwrite(const void* ptr, size_t memb_size, size_t num_memb, FILE* file);
int _fseek(FILE* file, long offset, int whence);

#endif  // MSL_INTERNAL_STDIO_API_H
