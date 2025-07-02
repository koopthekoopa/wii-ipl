#include <nw4r/snd/McsSoundArchive.h>

namespace nw4r {
    namespace snd {
        class McsSoundArchive::McsFileStream : public ut::FileStream {
            NW4R_UT_RUNTIME_TYPEINFO;
            
            public:
                McsFileStream();
        };

        /**
         * Sorry, nothing.
         * This file is needed for those left over weak functions.
         */
        McsSoundArchive::McsSoundArchive() {}
        McsSoundArchive::McsFileStream::McsFileStream() {}
    }
}
