#ifndef NW4R_UT_DVD_LOCKED_FILE_STREAM_H
#define NW4R_UT_DVD_LOCKED_FILE_STREAM_H

#include <nw4r/ut/DvdFileStream.h>

namespace nw4r {
    namespace ut {
        class DvdLockedFileStream : public DvdFileStream {
            public:
                NW4R_UT_RUNTIME_TYPEINFO;

                explicit DvdLockedFileStream(s32 entrynum);
                DvdLockedFileStream(const DVDFileInfo* pInfo, bool close);
                virtual ~DvdLockedFileStream();                                                                                     // 0x0C

                virtual s32     Read(void* pDst, u32 size);                                                                         // 0x14
                virtual bool    ReadAsync(void* pDst, u32 size, IOStreamCallback pCallback, void* pCallbackArg) { return false; }   // 0x18

                virtual s32     Peek(void* pDst, u32 size);                                                                         // 0x5C
                virtual bool    PeekAsync(void* pDst , u32 size, IOStreamCallback pCallback, void* pCallbackArg) { return false; }  // 0x60

                virtual bool    CanAsync() const { return false; }                                                                  // 0x28

            private:
                static void InitMutex_();

            private:
                bool mCancelFlag;   // 0x6F

                static bool sInitialized;
                static OSMutex sMutex;
        };
    }
}

#endif // NW4R_UT_DVD_LOCKED_FILE_STREAM_H
