#ifndef IPL_NAND_WRAPPER_H
#define IPL_NAND_WRAPPER_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/nand.h>

namespace ipl {
    namespace nand {
        namespace wrapper {
            BOOL _condition(s32 code, s32 arg1);
            
            void SecretGetFileSystemStatus(NANDFileSystemStatus* pStatus);
            
            BOOL SecretGetUsage(const char* dirPath, u32* usedBlocks, u32* usedINodes);
            void SecretGetUserUsage(u32* usedBlocks, u32* usedINodes);
        }
    }
}

#endif // IPL_NAND_WRAPPER_H

