#ifndef IPL_NAND_H
#define IPL_NAND_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/arc.h>

#include <egg/core.h>


#define NANDTitleIdLo(t)   (unsigned int)(((unsigned long long)(t)) & 0xFFFFFFFF)
#define NANDTitleIdHi(t)   (unsigned int)((((unsigned long long)(t)) >> 32) & 0xFFFFFFFF)

namespace ipl {
    namespace nand {
        class Base {
            public:
                Base();
                virtual ~Base();                                    // 0x08
                
                virtual void    read()          {}                  // 0x0C
                virtual void    write();                            // 0x10
                
                virtual bool    isFinished()    { return false; }   // 0x14
                virtual bool    checkData()     { return false; }   // 0x18
                virtual bool    isFatalError()  { return false; }   // 0x1C
        };
        
        class File : Base {
            public:
                File(EGG::Heap* pHeap, const char* fileName, ARCHandle* arc, const char* unk2, int offset, u32 length, bool isInNand);
                File(EGG::Heap* pHeap, const char* fileName, u8* buffer, u32 length, u8 perms);
                virtual ~File();                                                        // 0x08 (0x02)

                virtual void    read();                                                 // 0x0C (0x03)
                virtual void    write();                                                // 0x10 (0x04)

                virtual bool    isFinished();                                           // 0x14 (0x05)
                virtual bool    checkData();                                            // 0x18 (0x06)
                virtual bool    isFatalError();                                         // 0x1C (0x07)

                u8*             getBuffer() { return mpBuffer; }

            protected:
                virtual BOOL    open_(u8 attr);                                         // 0x20 (0x08)
                virtual BOOL    close_();                                               // 0x24 (0x09)

                virtual void    readBlock_(void* buffer, int length, int offset = 0);   // 0x28 (0x0A)
                
                virtual u32     getRawSize_();                                          // 0x2C (0x0B)
                virtual u32     getDecodeSize_(const u8* buffer);                       // 0x30 (0x0C)
                virtual u8*     getBuffer_(u32 length);                                 // 0x34 (0x0D)

                virtual void    uncompressLz7(const u8* src, u8* dest);                 // 0x38 (0x0E)

                virtual BOOL    isCompressed(const u8* buffer);                         // 0x3C (0x0F)
                virtual BOOL    isSliCompressed(const u8* buffer);                      // 0x40 (0x10)
                virtual BOOL    isAsrCompressed(const u8* buffer);                      // 0x44 (0x11)
                virtual BOOL    isAshCompressed(const u8* buffer);                      // 0x48 (0x12)
                virtual BOOL    isLz7Compressed(const u8* buffer);                      // 0x4C (0x13)

                virtual void    callback_();                                            // 0x50 (0x14)

            protected:
                int             calcMD5_(const u8* sum, const u8* buffer, u32 length) const;

                BOOL            nand_error_handling(int errcode);

                EGG::Heap*      mpHeap;                             // 0x04

                char            msFileName[NAND_MAX_PATH + 1];      // 0x08

                ARCHandle*      mpArc;                              // 0x4C
                char            msUnkFileName[NAND_MAX_PATH + 1];   // 0x50 (this seems to be unused)

                int             mFileOffset;                        // 0x94
                u32             mpLength;                           // 0x98
                bool            mInit;                              // 0x9C
                u8              mFilePerms;

                u8*             mpBuffer;                           // 0xA0
                u8*             mpCmpBuffer;                        // 0xA4

                int             mResult;                            // 0xA8
                volatile BOOL   mDoneTask;                          // 0xAC
                
                ARCFileInfo     mArcFile;                           // 0xB0

                u8              unk_0xBC[0x3C];                     // unused?

                NANDFileInfo    mNandFile;                          // 0xF8
                int             mLastError;                         // 0x184
                bool            mFatalError;                        // 0x188
                bool            mIsNandFull;                        // 0x189
                BOOL            mIsInNand;                          // 0x18C
        };

        class LangFile : Base {
            public:
                LangFile(EGG::Heap* pHeap, const char* dirName, const char* fileName, ARCHandle* arc, bool isInNand);
                virtual ~LangFile();    // 0x08

                virtual void    read();                             // 0x0C
                
                virtual bool    isFinished();                       // 0x14
                virtual bool    checkData();                        // 0x18
                virtual bool    isFatalError();                     // 0x1C
            
            private:
                File*   cmnFile;        // 0x04
                File*   langFile;       // 0x08
        };

        class LayoutFile : LangFile {
            public:
                LayoutFile(EGG::Heap* pHeap, const char* dirName, const char* fileName, ARCHandle* arc, bool isNandFile);
                virtual ~LayoutFile();
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
                
                int         getDescriptor() { return mDescriptor; }
                ARCHandle*  getArc()        { return &mUnkArc; }
            
            private:
                u8          unk_0x00[0x268];
                int         mDescriptor;        // 0x268
                u8          unk_0x26C;
                ARCHandle   mUnkArc;            // 0x270
        };
    }
}

#endif // IPL_NAND_H

