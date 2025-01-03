#include "system/iplNandWrapper.h"

namespace ipl {
    namespace nand {
        namespace wrapper {
            BOOL _condition(int result, int tries);
            
            #define MAX_TRIES   10

            #define WrapperFunction(r) \
                int tries = 0; \
                s32 result; \
                do { result = r; } while(_condition(result, ++tries)); \
                if (tries == MAX_TRIES) { result = NAND_RESULT_FATAL_ERROR; } \
                return result;

            #define WrapperFunctionSafe(r) \
                s32 result = r; \
                if (result != NAND_RESULT_OK) { result = NAND_RESULT_FATAL_ERROR; } \
                return result;


            s32 Create(const char* path, u8 perm, u8 attr)                                              { WrapperFunction(NANDCreate(path, perm, attr)); }
            s32 Open(const char* path, NANDFileInfo* pInfo, u8 attr)                                    { WrapperFunction(NANDOpen(path, pInfo, attr)); }
            s32 Close(NANDFileInfo* pInfo)                                                              { WrapperFunction(NANDClose(pInfo)); }
            s32 Read(NANDFileInfo* pInfo, void* pBuf, u32 len)                                          { WrapperFunction(NANDRead(pInfo, pBuf, len)); }
            s32 Write(NANDFileInfo* pInfo, const void* pBuf, u32 len)                                   { WrapperFunction(NANDWrite(pInfo, pBuf, len)); }
            s32 Seek(NANDFileInfo* pInfo, s32 offset, s32 whence)                                       { WrapperFunction(NANDSeek(pInfo, offset, whence)); }
            s32 GetLength(NANDFileInfo* pInfo, u32* len)                                                { WrapperFunction(NANDGetLength(pInfo, len)); }
            s32 SafeClose(NANDFileInfo* pInfo)                                                          { WrapperFunctionSafe(NANDSafeClose(pInfo)); }
            s32 ReadDir(const char* path, char* fsList, u32* fsCount)                                   { WrapperFunction(NANDReadDir(path, fsList, fsCount)); }
            s32 CreateDir(const char* path, u8 perm, u8 attr)                                           { WrapperFunction(NANDCreateDir(path, perm, attr)); }
            s32 ChangeDir(const char* path)                                                             { WrapperFunction(NANDChangeDir(path)); }
            s32 Delete(const char* path)                                                                { WrapperFunction(NANDDelete(path)); }
            s32 GetStatus(const char* path, NANDStatus* status)                                         { WrapperFunction(NANDGetStatus(path, status)); }
            s32 GetType(const char* path, u8* type)                                                     { WrapperFunction(NANDGetType(path, type)); }

            s32 PrivateCreate(const char* path, u8 perm, u8 attr)                                       { WrapperFunction(NANDPrivateCreate(path, perm, attr)); }
            s32 PrivateOpen(const char* path, NANDFileInfo* pInfo, u8 attr)                             { WrapperFunction(NANDPrivateOpen(path, pInfo, attr)); }
            s32 PrivateSafeOpen(const char* path, NANDFileInfo* pInfo, u8 attr, void* pBuf, u32 len)    { WrapperFunctionSafe(NANDPrivateSafeOpen(path, pInfo, attr, pBuf, len)); }
            s32 PrivateReadDir(const char* path, char* fsList, u32* fsCount)                            { WrapperFunction(NANDPrivateReadDir(path, fsList, fsCount)); }
            s32 PrivateCreateDir(const char* path, u8 perm, u8 attr)                                    { WrapperFunction(NANDPrivateCreateDir(path, perm, attr)); }
            s32 PrivateDelete(const char* path)                                                         { WrapperFunction(NANDPrivateDelete(path)); }
            s32 PrivateMove(const char* path, const char* newPath)                                      { WrapperFunction(NANDPrivateMove(path, newPath)); }
            s32 PrivateGetType(const char* path, u8* type)                                              { WrapperFunction(NANDPrivateGetType(path, type)); }

            s32 SecretGetUsage(const char* path, u32* fsBlocks, u32* iNode)                             { WrapperFunction(NANDSecretGetUsage(path, fsBlocks, iNode)); }
            s32 SecretGetUserUsage(u32* fsBlocks, u32* iNode)                                           { WrapperFunction(NANDSecretGetUserUsage(fsBlocks, iNode)); }
            s32 SecretGetSystemAvailableArea(const NANDFileSystemStatus *pStatus, u32 usedFsBlocks, u32 usedINode, u32 *freeFsBlocks, u32 *freeINode) {
                WrapperFunction(NANDSecretGetSystemAvailableArea(pStatus, usedFsBlocks, usedINode, freeFsBlocks, freeINode));
            }
            s32 SecretGetFileSystemStatus(NANDFileSystemStatus *pStatus)                                { WrapperFunction(NANDSecretGetFileSystemStatus(pStatus)); }

            BOOL _condition(int result, int tries) {
                BOOL TryAgain = FALSE;

                if ((result == (s32)NAND_RESULT_BUSY || result == (s32)NAND_RESULT_ALLOC_FAILED)
                && tries < MAX_TRIES) {
                    TryAgain = TRUE;
                }
                if (TryAgain) {
                    OSSleepMilliseconds(50);
                }

                return TryAgain;
            }


            #undef WrapperFunction
            #undef WrapperFunctionSafe
        }
    }
}
