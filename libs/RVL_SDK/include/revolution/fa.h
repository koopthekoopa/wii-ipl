#ifndef REVOLUTION_FA_H
#define REVOLUTION_FA_H

#include <revolution/fa/types.h>

#include <size_t.h>

#ifdef __cplusplus
extern "C" {
#endif

s32     FAInit(int unk);

FAFILE  FACreate(const char* fileName, int unk);
FAFILE  FAOpen(const char* fileName, const char* mode);

size_t  FAFRead(void* buffer, size_t size, size_t count, FAFILE stream);
size_t  FAFWrite(void* buffer, size_t size, size_t count, FAFILE stream);

s32     FAFclose(FAFILE stream);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_FA_H
