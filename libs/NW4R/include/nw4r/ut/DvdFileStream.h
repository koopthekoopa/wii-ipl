#ifndef NW4R_UT_DVD_FILE_STREAM_H
#define NW4R_UT_DVD_FILE_STREAM_H

#include <nw4r/ut/FileStream.h>

#include <revolution/dvd.h>

namespace nw4r {
    namespace ut {
        class DvdFileStream : public FileStream {
            public:
                NW4R_UT_RUNTIME_TYPEINFO;

                explicit DvdFileStream(s32 entrynum);
                DvdFileStream(const DVDFileInfo* info, bool close);
                virtual ~DvdFileStream();                                                                           // 0x0C

                bool            Open(s32 entrynum);
                bool            Open(const DVDFileInfo* info, bool close);
            
                void            SetPriority(s32 priority) { mPriority = priority; }
            
                virtual void    Close();                                                                            // 0x10
            
                virtual s32     Read(void* pDst, u32 size);                                                         // 0x14
                virtual bool    ReadAsync(void* pDst, u32 size, IOStreamCallback pCallback, void* pCallbackArg);    // 0x18
            
                virtual s32     Peek(void* pDst, u32 size);                                                         // 0x5C
                virtual bool    PeekAsync(void* pDst, u32 size, IOStreamCallback pCallback, void* pCallbackArg);    // 0x60
            
                virtual void    Seek(s32 offset, u32 origin);                                                       // 0x44
            
                virtual void    Cancel();                                                                           // 0x48
                virtual bool    CancelAsync(IOStreamCallback pCallback, void* pCallbackArg);                        // 0x4C
            
                virtual bool    IsBusy() const          { return mIsBusy; }                                         // 0x24
            
                virtual u32     Tell() const            { return mFilePosition.Tell(); }                            // 0x58
                virtual u32     GetSize() const         { return mFilePosition.GetFileSize(); }                     // 0x40
            
                virtual bool    CanAsync() const        { return true; }                                            // 0x28
                virtual bool    CanSeek() const         { return true; }                                            // 0x50
                virtual bool    CanRead() const         { return true; }                                            // 0x2C
                virtual bool    CanWrite() const        { return false; }                                           // 0x30
                virtual bool    CanCancel() const       { return true; }                                            // 0x54
            
                virtual u32     GetOffsetAlign() const  { return 4; }                                               // 0x34
                virtual u32     GetSizeAlign() const    { return DEFAULT_ALIGN; }                                   // 0x38
                virtual u32     GetBufferAlign() const  { return DEFAULT_ALIGN; }                                   // 0x3C
            
            private:
                typedef struct DvdFileStreamInfo {
                    DVDFileInfo     dvdInfo;    // 0x00
                    DvdFileStream*  stream;     // 0x3C
                } DvdFileStreamInfo;
            
            private:
                static void     DvdAsyncCallback_(s32 result, DVDFileInfo* info);
                static void     DvdCBAsyncCallback_(s32 result, DVDCommandBlock* pBlock);
            
                void            Initialize_();
                u32             AdjustReadLength_(u32 len);
            
            private:
                FilePosition        mFilePosition;      // 0x14

                IOStreamCallback    mCancelCallback;    // 0x1C
                void*               mCancelArg;         // 0x20
                volatile bool       mIsCanceling;       // 0x24

                DvdFileStreamInfo   mFileInfo;          // 0x28

                s32                 mPriority;          // 0x68

                volatile bool       mIsBusy;            // 0x6C

                bool                mCloseOnDestroyFlg; // 0x6D
                bool                mCloseEnableFlg;    // 0x6E
        };
    }
}

#endif // NW4R_UT_DVD_FILE_STREAM_H
