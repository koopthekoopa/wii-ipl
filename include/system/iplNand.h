#ifndef IPL_NAND_H
#define IPL_NAND_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/nand.h>
#include <revolution/arc.h>
#include <private/es.h>

#include <revolution/net/NETDigest.h>

#include <egg/core.h>

#include "system/iplNandWrapper.h"

#define NAND_CHECK_MAGIC3(x,a,b,c)      ((x)[0] == (a) && (x)[1] == (b) && (x)[2] == (c))
#define NAND_CHECK_MAGIC4(x,a,b,c,d)    ((x)[0] == (a) && (x)[1] == (b) && (x)[2] == (c) && (x)[3] == (d))

namespace ipl {
    namespace nand {
        enum {
            IPL_NAND_RESULT_NONE = 0,
            IPL_NAND_RESULT_SUCCESS,
            IPL_NAND_RESULT_VERIFY_ERROR,
            IPL_NAND_RESULT_OPEN_ERROR,
        };

        enum {
            IPL_FILE_MODE_NONE = 0,
            IPL_FILE_MODE_WRITE,
            IPL_FILE_MODE_READ,
        };

        class Base {
            public:
                Base();
                virtual ~Base();                                                        // 0x08
                
                virtual void    read();                                                 // 0x0C
                virtual void    write();                                                // 0x10
                
                virtual bool    isFinished();                                           // 0x14
                virtual bool    checkData();                                            // 0x18
                virtual bool    isFatalError();                                         // 0x1C
        };
        
        class File : public Base {
            public:
                File(EGG::Heap* heap, const char* fileName, ARCHandle* arc, const char* nandFileName, int offset, u32 length, bool bIsInNand);
                
                File(EGG::Heap* heap, const char* fileName, u8* buffer, u32 length, u8 perms);
                
                virtual ~File();                                                        // 0x08

                /**
                 * @brief Reads the file contents.
                 * @note To retrieve the read contents, use `getBuffer()`
                 */
                virtual void    read();                                                 // 0x0C
                /** @brief Writes the file contents. */
                virtual void    write();                                                // 0x10

                virtual bool    isFinished();                                           // 0x14
                virtual bool    checkData();                                            // 0x18
                virtual bool    isFatalError();                                         // 0x1C

                u8*             getBuffer() const       { return mpBuffer; }
                u32             getLength() const       { return mFileLength; }
                
                bool            isFullForTask() const   { return mbIsFullForTask; }
            
            private:
                typedef struct MD5Head {
                    u8          sig[4];         // 0x00 (always `IMD5`; "IPL MD5"?)
                    u32         length;         // 0x04
                    u8          reserved[8];    // 0x08
                    NETMD5Sum   md5;            // 0x10
                } MD5Head;

                typedef s8 MD5Bool; // eh

            protected:
                virtual BOOL    open_(u8 attr);                                         // 0x20
                virtual BOOL    close_();                                               // 0x24

                virtual void    readBlock_(void* buffer, int length, int offset = 0);   // 0x28
                
                virtual u32     getRawSize_();                                          // 0x2C
                virtual u32     getDecodeSize_(const u8* buffer);                       // 0x30
                virtual u8*     getBuffer_(u32 length);                                 // 0x34

                virtual void    uncompressLz7(const u8* src, u8* dest);                 // 0x38

                virtual BOOL    isCompressed(const u8* buffer);                         // 0x3C
                virtual BOOL    isSliCompressed(const u8* buffer);                      // 0x40
                /* @warning Due to an oversight, this checks for ASH compression. */
                virtual BOOL    isAsrCompressed(const u8* buffer);                      // 0x44
                /* @warning Due to an oversight, this checks for ASR compression. */
                virtual BOOL    isAshCompressed(const u8* buffer);                      // 0x48 
                virtual BOOL    isLz7Compressed(const u8* buffer);                      // 0x4C

                virtual void    callback_();                                            // 0x50

                int             calcMD5_(const u8* sum, const u8* buffer, u32 length) const;

                BOOL            nand_error_handling(int result);

                EGG::Heap*      mpHeap;                                                 // 0x04

                char            msFileName[NAND_MAX_PATH+1];                            // 0x08

                ARCHandle*      mpArc;                                                  // 0x4C
                char            msNandFileName[NAND_MAX_PATH+1];                        // 0x50

                int             mFileOffset;                                            // 0x94
                u32             mFileLength;                                            // 0x98
                u8              mFileMode;                                              // 0x9C
                u8              mFilePerms;

                u8*             mpBuffer;                                               // 0xA0
                u8*             mpCmpBuffer;                                            // 0xA4

                int             mResult;                                                // 0xA8
                vBOOL           mbDoneTask;                                             // 0xAC
                
                ARCFileInfo     mArcFile;                                               // 0xB0
                u8              unused_0xBC[0x3C];
                NANDFileInfo    mNandFile;                                              // 0xF8

                volatile int    mLastError;                                             // 0x184
                volatile bool   mbFatalError;                                           // 0x188
                bool            mbIsFullForTask;                                        // 0x189
                BOOL            mbIsNandFile;                                           // 0x18C
        };

        class LangFile : public Base {
            public:
                LangFile(EGG::Heap* heap, const char* dirName, const char* fileName, ARCHandle* arc, bool bIsNandFile);
                virtual ~LangFile();                                                    // 0x08

                virtual void    read();                                                 // 0x0C

                virtual bool    isFinished();                                           // 0x14
                virtual bool    checkData();                                            // 0x18
                virtual bool    isFatalError();                                         // 0x1C

                File*           getCmnFile() const  { return mpCommonFile; }
                File*           getLangFile() const { return mpLangFile; }

            private:
                File*   mpCommonFile;                                                   // 0x04
                File*   mpLangFile;                                                     // 0x08
        };

        class LayoutFile : public LangFile {
            public:
                LayoutFile(EGG::Heap* heap, const char* dirName, const char* fileName, ARCHandle* arc, bool bIsNandFile);
                virtual ~LayoutFile();                                                  // 0x08
        };
    }
}

#endif // IPL_NAND_H
