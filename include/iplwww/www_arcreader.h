#ifndef IPL_WWW_ARCREADER
#define IPL_WWW_ARCREADER

// #include <revolution/os.h>

#include <revolution/arc.h>
#include <revolution/types.h>

#include "iplwww/www_js.h"

namespace www {
    namespace arcreader {
        class ArcContainer;

        void AddProtocol();
        bool ReadRequest(const WWWProtocolData*, ArcContainer* container);

        class ArcContainer {
        public:
            ArcContainer(void* scratchSpace);

            void RegisterArcFile(const void* data);
            void* find(const char* path, u32* len);

        private:
            ARCHandle mHandles[4];
            bool mFlags[4];
            void* pScratch;
        };

        extern const char* sProtocolName;
    }  // namespace arcreader
}  // namespace www

#endif  // IPL_WWW_ARCREADER
