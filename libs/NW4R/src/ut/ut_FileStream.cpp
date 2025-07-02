#include <nw4r/ut/FileStream.h>

#include <nw4r/ut/inlines.h>

namespace nw4r {
    namespace ut {
        NW4R_UT_GET_DERIVED_RUNTIME_TYPEINFO(FileStream, IOStream);

        void FileStream::Cancel() {}
        
        bool FileStream::CancelAsync(IOStreamCallback callback, void* callbackArg) {
            return true;
        }
        
        u32 FileStream::FilePosition::Skip(s32 offset) {
            if (offset != 0) {
                s64 newOffset = mPosition + offset;
                mPosition = Clamp<s64>(newOffset, 0, mFileSize);
            }
        
            return mPosition;
        }
        
        u32 FileStream::FilePosition::Append(s32 offset) {
            s64 newOffset = mPosition + offset;
        
            if (newOffset < 0) {
                mPosition = 0;
            }
            else {
                mPosition = newOffset;
                mFileSize = Max(mPosition, mFileSize);
            }
        
            return mPosition;
        }
        
        void FileStream::FilePosition::Seek(s32 offset, u32 origin) {
            switch (origin) {
            case SEEK_BEG: {
                mPosition = 0;
                break;
            }
        
            case SEEK_END: {
                mPosition = mFileSize;
                break;
            }
        
            case SEEK_CUR:
            default: {
                break;
            }
            }
        
            Skip(offset);
        }
    }
}
