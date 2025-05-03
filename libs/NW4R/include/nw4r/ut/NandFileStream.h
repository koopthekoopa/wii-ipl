#ifndef NW4R_UT_NAND_FILE_STREAM_H
#define NW4R_UT_NAND_FILE_STREAM_H

#include <nw4r/ut/FileStream.h>

#include <revolution/nand.h>

namespace nw4r {
    namespace ut {
        class NandFileStream : public FileStream {
            public:
                NW4R_UT_RUNTIME_TYPEINFO;

                NandFileStream(const char* pPath, u32 mode);
                NandFileStream(const NANDFileInfo* pInfo, u32 mode, bool enableClose);
                virtual ~NandFileStream();                                                                              // 0x0C

                bool            Open(const char* pPath, u32 mode);
                bool            Open(const NANDFileInfo* pInfo, u32 mode, bool enableClose) NO_INLINE;

                virtual void    Close();                                                                                // 0x10

                virtual s32     Read(void* pDst, u32 size);                                                             // 0x14
                virtual bool    ReadAsync(void* pDst, u32 size, IOStreamCallback pCallback, void* pCallbackArg);        // 0x18

                virtual void    Write(const void* pSrc, u32 size);                                                      // 0x1C
                virtual bool    WriteAsync(const void* pSrc, u32 size, IOStreamCallback pCallback, void* pCallbackArg); // 0x20

                virtual void    Seek(s32 offset, u32 origin);                                                           // 0x44

                virtual bool    IsBusy() const          { return mIsBusy; }                                             // 0x24

                virtual u32     Tell() const            { return mFilePosition.Tell(); }                                // 0x58
                virtual u32     GetSize() const         { return mFilePosition.GetFileSize(); }                         // 0x40

                virtual bool    CanAsync() const        { return true; }                                                // 0x28
                virtual bool    CanSeek() const         { return true; }                                                // 0x50
                virtual bool    CanRead() const         { return mCanRead; }                                            // 0x2C
                virtual bool    CanWrite() const        { return mCanWrite; }                                           // 0x30
                virtual bool    CanCancel() const       { return false; }                                               // 0x54

                virtual u32     GetOffsetAlign() const  { return 1; }                                                   // 0x34
                virtual u32     GetSizeAlign() const    { return 32; }                                                  // 0x38
                virtual u32     GetBufferAlign() const  { return 32; }                                                  // 0x3C

            private:
                typedef struct NandFileStreamInfo {
                    NANDCommandBlock    nandBlock;  // 0x00
                    NANDFileInfo        nandInfo;   // 0xB8
                    NandFileStream*     stream;     // 0x144
                } NandFileStreamInfo;

                static void NandAsyncCallback_(s32 result, NANDCommandBlock* pBlock);

                void Initialize_();

                FilePosition        mFilePosition;      // 0x14
                NandFileStreamInfo  mFileInfo;          // 0x1C

                bool                mCanRead;           // 0x164
                bool                mCanWrite;          // 0x165

                volatile bool       mIsBusy;            // 0x166

                bool                mCloseOnDestroyFlg; // 0x167
                bool                mCloseEnableFlg;    // 0x168
        };
    }
}

#endif // NW4R_UT_NAND_FILE_STREAM_H
