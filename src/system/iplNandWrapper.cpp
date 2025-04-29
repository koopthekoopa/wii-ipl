#include "system/iplNandWrapper.h"

namespace ipl {
    namespace nand {
        namespace wrapper {
            BOOL _condition(int result, int tries);
            
            #define MAX_TRIES   10

            #define NAND_WRAPPER(r)                                         \
                int tries = 0;                                               \
                s32 result;                                                   \
                do { result = r; } while (_condition(result, ++tries));        \
                if (tries == MAX_TRIES) { result = NAND_RESULT_FATAL_ERROR; }   \
                return result;

            #define NAND_SAFE_WRAPPER(r)                                        \
                s32 result = r;                                                    \
                if (result != NAND_RESULT_OK) { result = NAND_RESULT_FATAL_ERROR; } \
                return result;


            s32 Create(const char* path, u8 perm, u8 attr)                                                  { NAND_WRAPPER(NANDCreate(path, perm, attr)); }
            s32 Open(const char* path, NANDFileInfo* info, u8 accType)                                      { NAND_WRAPPER(NANDOpen(path, info, accType)); }
            s32 Close(NANDFileInfo* info)                                                                   { NAND_WRAPPER(NANDClose(info)); }
            s32 Read(NANDFileInfo* info, void* buffer, u32 length)                                          { NAND_WRAPPER(NANDRead(info, buffer, length)); }
            s32 Write(NANDFileInfo* info, const void* buffer, u32 length)                                   { NAND_WRAPPER(NANDWrite(info, buffer, length)); }
            s32 Seek(NANDFileInfo* info, s32 offset, s32 whence)                                            { NAND_WRAPPER(NANDSeek(info, offset, whence)); }
            s32 GetLength(NANDFileInfo* info, u32* length)                                                  { NAND_WRAPPER(NANDGetLength(info, length)); }
            s32 SafeClose(NANDFileInfo* info)                                                               { NAND_SAFE_WRAPPER(NANDSafeClose(info)); }
            s32 ReadDir(const char* path, char* nameList, u32* num)                                         { NAND_WRAPPER(NANDReadDir(path, nameList, num)); }
            s32 CreateDir(const char* path, u8 perm, u8 attr)                                               { NAND_WRAPPER(NANDCreateDir(path, perm, attr)); }
            s32 ChangeDir(const char* path)                                                                 { NAND_WRAPPER(NANDChangeDir(path)); }
            s32 Delete(const char* path)                                                                    { NAND_WRAPPER(NANDDelete(path)); }
            s32 GetStatus(const char* path, NANDStatus* status)                                             { NAND_WRAPPER(NANDGetStatus(path, status)); }
            s32 GetType(const char* path, u8* type)                                                         { NAND_WRAPPER(NANDGetType(path, type)); }

            s32 PrivateCreate(const char* path, u8 perm, u8 attr)                                           { NAND_WRAPPER(NANDPrivateCreate(path, perm, attr)); }
            s32 PrivateOpen(const char* path, NANDFileInfo* info, u8 accType)                               { NAND_WRAPPER(NANDPrivateOpen(path, info, accType)); }
            s32 PrivateSafeOpen(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length) { NAND_SAFE_WRAPPER(NANDPrivateSafeOpen(path, info, accType, buffer, length)); }
            s32 PrivateReadDir(const char* path, char* nameList, u32* num)                                  { NAND_WRAPPER(NANDPrivateReadDir(path, nameList, num)); }
            s32 PrivateCreateDir(const char* path, u8 perm, u8 attr)                                        { NAND_WRAPPER(NANDPrivateCreateDir(path, perm, attr)); }
            s32 PrivateDelete(const char* path)                                                             { NAND_WRAPPER(NANDPrivateDelete(path)); }
            s32 PrivateMove(const char* path, const char* destDir)                                          { NAND_WRAPPER(NANDPrivateMove(path, destDir)); }
            s32 PrivateGetType(const char* path, u8* type)                                                  { NAND_WRAPPER(NANDPrivateGetType(path, type)); }

            s32 SecretGetUsage(const char* path, u32* usedBlocks, u32* usedINodes)                          { NAND_WRAPPER(NANDSecretGetUsage(path, usedBlocks, usedINodes)); }
            s32 SecretGetUserUsage(u32* usedUserBlocks, u32* usedUserINodes)                                { NAND_WRAPPER(NANDSecretGetUserUsage(usedUserBlocks, usedUserINodes)); }
            s32 SecretGetSystemAvailableArea(const NANDFileSystemStatus *status, u32 usedSystemBlocks, u32 usedSystemINode, u32 *freeSystemBlocks, u32 *freeSystemINode) {
                NAND_WRAPPER(NANDSecretGetSystemAvailableArea(status, usedSystemBlocks, usedSystemINode, freeSystemBlocks, freeSystemINode));
            }
            s32 SecretGetFileSystemStatus(NANDFileSystemStatus *status)                                     { NAND_WRAPPER(NANDSecretGetFileSystemStatus(status)); }

            BOOL _condition(int result, int tries) {
                BOOL bTryAgain = FALSE;

                // weird recast...
                if (((int)result == NAND_RESULT_BUSY || (int)result == NAND_RESULT_ALLOC_FAILED) && tries < MAX_TRIES) {
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
