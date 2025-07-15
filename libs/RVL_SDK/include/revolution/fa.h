#ifndef REVOLUTION_FA_H
#define REVOLUTION_FA_H

#include <revolution/fa/types.h>

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

FAError FAInit(int flag);
FAError FARegistCB(u8 device, FAInsertCallback insertCallback, FAEjectCallback ejectCallback);

FAError FABuffering(char drive, s32 mode);

FAError FASetThreadPriority(s32 priority);

FAError FAAttach(u8 device, char* fsPathNAND, u32 fsSizeNAND, FADrvTbl* driveTable);
FAError FADetach(char drive);

FAError FAMount(char drive);
FAError FAUnmount(char drive, u32 unk);

FAError FAFormat(char drive, u32 unk);

FAError FAErrnum();

FAFILE* FACreate(const char* fileName, int unk);

FAFILE* FAFopen(const char* fileName, const char* mode);
size_t  FAFread(void* buffer, size_t size, size_t count, FAFILE* stream);
size_t  FAFwrite(void* buffer, size_t size, size_t count, FAFILE* stream);
FAError FAFseek(FAFILE* stream, s32 offset, int origin);
FAError FAFinfo(FAFILE* stream, FAFileInfo* info);

FAError FAFsfirst(const char* dirName, u8 attr, FADta* dta);
FAError FAFsnext(FADta* dta);

FAError FAFstat(const char* fileName, FAFileStat* stat);

FAError FAFclose(FAFILE* stream);

FAError FARemove(const char* fileName);

FAError FACreatedir(const char* dirName, s32 unk, FADta* dta);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_FA_H
