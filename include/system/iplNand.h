#ifndef IPL_NAND_H
#define IPL_NAND_H

#include <decomp.h>

#include <revolution.h>

#include <egg/core.h>

namespace ipl {
    namespace nand {
        class LayoutFile {
            public:
                LayoutFile();
                virtual ~LayoutFile();

                virtual void    read();
                virtual void    write();
                virtual BOOL    isFinished();
        };
        
        class Manager {
            public:
                Manager();
                
                /**
                 * @brief Reads an ASH compressed Layout File.
                 * @param pHeap The memory heap used for the function.
                 * @param archiveName The file name of the ASH compressed archive.
                 * @param unk Unkown boolean.
                 * @return The Layout File Data as `ipl::nand::LayoutFile`.
                 */
                LayoutFile* readLayout(EGG::Heap* pHeap, const char* archiveName, bool unk);
                LayoutFile* readLayoutAsync(EGG::Heap* pHeap, const char* archiveName, bool unk);

                void        closeContentsAll();
                void        sendToken(int token);
        };
    }
}

#endif // IPL_NAND_H

