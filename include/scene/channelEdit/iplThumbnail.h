#ifndef IPL_SCENE_THUMBNAIL_H
#define IPL_SCENE_THUMBNAIL_H

#include <revolution/types.h>

#include "layout/iplGuiManager.h"
#include "layout/iplLayout.h"

#include "system/iplSystem.h"

namespace ipl {
    namespace scene {
        class Thumbnail {
        public:
            inline Thumbnail() : pLytObj(NULL), pLytHeapBuf(NULL), mIsCorrupt(false) {
                pLytHeapBuf = new (System::getMem2App(), 0x20) u8[0x19000];  // Aligned to 32 bytes
                init();
            }
            inline ~Thumbnail() {
                delete pLytObj;
                delete pLytHeapBuf;
            }

            void create(u8*);
            void init();

            void calc();
            void draw();

            const wchar_t* getTitle(int);

            inline ESTitleId getWiiTitleId() const { return mWiiTitleId; }
            inline void setWiiTitleId(ESTitleId newWiiTitleId) { mWiiTitleId = newWiiTitleId; }

            inline ESTitleId32 getSDTitleId() const { return mSDTitleId; }
            inline void setSDTitleId(ESTitleId32 newSDTitleId) { mSDTitleId = newSDTitleId; }

            inline u8* getLytHeapBufRef() { return pLytHeapBuf; }
            inline channel::SChanMgrMetaHeader* getChanMetaRef() { return &mChanMeta; }

            inline undefined4 getBlockCount() const { return mBlockCount; }
            inline void setBlockCount(u32 newBlockCount) { mBlockCount = newBlockCount; }

            inline bool getIsCorrupt() const { return mIsCorrupt; }
            inline void setIsCorrupt(bool newValue) { mIsCorrupt = newValue; }

            inline bool getMatchesTmpTitle() const { return mMatchesTmpTitle; }
            inline void setMatchesTmpTitle(bool newValue) { mMatchesTmpTitle = newValue; }

        private:
            layout::Object* pLytObj;                // 0x000
            layout::PaneAnimator* pPaneAnimator;    // 0x004
            u8* pLytHeapBuf;                        // 0x008
            channel::SChanMgrMetaHeader mChanMeta;  // 0x00c
            ESTitleId mWiiTitleId;                  // 0x610
            ESTitleId32 mSDTitleId;                 // 0x618
            u32 mBlockCount;                        // 0x61c
            bool mIsCorrupt;                        // 0x620
            u8 mMatchesTmpTitle;                    // 0x621
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_THUMBNAIL_H
