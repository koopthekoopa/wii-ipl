#include "system/iplNandWrapper.h"

namespace ipl {
    namespace nand {
        namespace wrapper {
            BOOL _condition(int result, int tries);
            
            #define MAX_TRIES   10

            #define NAND_WRAPPER(r)                                      \
                int tries = 0;                                               \
                s32 result;                                                   \
                do { result = r; } while(_condition(result, ++tries));         \
                if (tries == MAX_TRIES) { result = NAND_RESULT_FATAL_ERROR; }   \
                return result;

            #define NAND_SAFE_WRAPPER(r)                                        \
                s32 result = r;                                                    \
                if (result != NAND_RESULT_OK) { result = NAND_RESULT_FATAL_ERROR; } \
                return result;


            s32 Create(const char* path, u8 perm, u8 attr)                                              { NAND_WRAPPER(NANDCreate(path, perm, attr)); }
            s32 Open(const char* path, NANDFileInfo* pInfo, u8 attr)                                    { NAND_WRAPPER(NANDOpen(path, pInfo, attr)); }
            s32 Close(NANDFileInfo* pInfo)                                                              { NAND_WRAPPER(NANDClose(pInfo)); }
            s32 Read(NANDFileInfo* pInfo, void* pBuf, u32 len)                                          { NAND_WRAPPER(NANDRead(pInfo, pBuf, len)); }
            s32 Write(NANDFileInfo* pInfo, const void* pBuf, u32 len)                                   { NAND_WRAPPER(NANDWrite(pInfo, pBuf, len)); }
            s32 Seek(NANDFileInfo* pInfo, s32 offset, s32 whence)                                       { NAND_WRAPPER(NANDSeek(pInfo, offset, whence)); }
            s32 GetLength(NANDFileInfo* pInfo, u32* len)                                                { NAND_WRAPPER(NANDGetLength(pInfo, len)); }
            s32 SafeClose(NANDFileInfo* pInfo)                                                          { NAND_SAFE_WRAPPER(NANDSafeClose(pInfo)); }
            s32 ReadDir(const char* path, char* fsList, u32* fsCount)                                   { NAND_WRAPPER(NANDReadDir(path, fsList, fsCount)); }
            s32 CreateDir(const char* path, u8 perm, u8 attr)                                           { NAND_WRAPPER(NANDCreateDir(path, perm, attr)); }
            s32 ChangeDir(const char* path)                                                             { NAND_WRAPPER(NANDChangeDir(path)); }
            s32 Delete(const char* path)                                                                { NAND_WRAPPER(NANDDelete(path)); }
            s32 GetStatus(const char* path, NANDStatus* status)                                         { NAND_WRAPPER(NANDGetStatus(path, status)); }
            s32 GetType(const char* path, u8* type)                                                     { NAND_WRAPPER(NANDGetType(path, type)); }

            s32 PrivateCreate(const char* path, u8 perm, u8 attr)                                       { NAND_WRAPPER(NANDPrivateCreate(path, perm, attr)); }
            s32 PrivateOpen(const char* path, NANDFileInfo* pInfo, u8 attr)                             { NAND_WRAPPER(NANDPrivateOpen(path, pInfo, attr)); }
            s32 PrivateSafeOpen(const char* path, NANDFileInfo* pInfo, u8 attr, void* pBuf, u32 len)    { NAND_SAFE_WRAPPER(NANDPrivateSafeOpen(path, pInfo, attr, pBuf, len)); }
            s32 PrivateReadDir(const char* path, char* fsList, u32* fsCount)                            { NAND_WRAPPER(NANDPrivateReadDir(path, fsList, fsCount)); }
            s32 PrivateCreateDir(const char* path, u8 perm, u8 attr)                                    { NAND_WRAPPER(NANDPrivateCreateDir(path, perm, attr)); }
            s32 PrivateDelete(const char* path)                                                         { NAND_WRAPPER(NANDPrivateDelete(path)); }
            s32 PrivateMove(const char* path, const char* newPath)                                      { NAND_WRAPPER(NANDPrivateMove(path, newPath)); }
            s32 PrivateGetType(const char* path, u8* type)                                              { NAND_WRAPPER(NANDPrivateGetType(path, type)); }

            s32 SecretGetUsage(const char* path, u32* fsBlocks, u32* iNode)                             { NAND_WRAPPER(NANDSecretGetUsage(path, fsBlocks, iNode)); }
            s32 SecretGetUserUsage(u32* fsBlocks, u32* iNode)                                           { NAND_WRAPPER(NANDSecretGetUserUsage(fsBlocks, iNode)); }
            s32 SecretGetSystemAvailableArea(const NANDFileSystemStatus *pStatus, u32 usedFsBlocks, u32 usedINode, u32 *freeFsBlocks, u32 *freeINode) {
                NAND_WRAPPER(NANDSecretGetSystemAvailableArea(pStatus, usedFsBlocks, usedINode, freeFsBlocks, freeINode));
            }
            s32 SecretGetFileSystemStatus(NANDFileSystemStatus *pStatus)                                { NAND_WRAPPER(NANDSecretGetFileSystemStatus(pStatus)); }

            BOOL _condition(int result, int tries) {
                BOOL bTryAgain = FALSE;

                if ((result == (s32)NAND_RESULT_BUSY || result == (s32)NAND_RESULT_ALLOC_FAILED)
                && tries < MAX_TRIES) {
                    bTryAgain = TRUE;
                }
                if (bTryAgain) {
                    OSSleepMilliseconds(50);
                }

                return bTryAgain;
            }
        }
    }
}
