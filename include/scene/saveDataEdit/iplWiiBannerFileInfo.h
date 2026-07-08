#ifndef IPL_SCENE_WII_BANNER_FILE_H
#define IPL_SCENE_WII_BANNER_FILE_H

#include <revolution/gx.h>
#include <revolution/types.h>

#include "system/iplSaveBanner.h"
#include "system/iplSystem.h"

#include <cstring>
#include <cwchar>

namespace ipl {
    namespace scene {
        class WiiBannerFileInfo {
        public:
            WiiBannerFileInfo()
                : mFrameCount(0), mFrameSpeed(0), mFlags(0), mAnim_Incrementer(0), mAnim_AltFlag(0), mAnim_AltForward(0), mAnim_AltBackward(0),
                  mBlockCount(0), mPerms(0), mIsCorrupt(false) {
                wmemset(mSaveName, 0, WII_SAVE_BANNER_LENGTH + 1);
                wmemset(mSaveSubName, 0, WII_SAVE_BANNER_LENGTH + 1);

                mpBannerData = System::getMem2App()->alloc(WII_SAVE_BANNER_BNR_TEXSIZE, DEFAULT_ALIGN);
                memset(mpBannerData, 0, WII_SAVE_BANNER_BNR_TEXSIZE);

                for (int i = 0; i < WII_SAVE_BANNER_ICON_COUNT; i++) {
                    mpIconData[i] = System::getMem2App()->alloc(WII_SAVE_BANNER_ICON_TEXSIZE, DEFAULT_ALIGN);
                    memset(mpIconData[i], 0, WII_SAVE_BANNER_ICON_TEXSIZE);
                }

                memset(&mData, 0, sizeof(mData));
            }

            ~WiiBannerFileInfo() {
                for (int i = 0; i < WII_SAVE_BANNER_ICON_COUNT; i++) {
                    System::getMem2App()->free(mpIconData[i]);
                }

                System::getMem2App()->free(mpBannerData);
            }

            void init();
            void create();
            void update();

            GXTexObj* loadIconTexture();
            GXTexObj* loadBannerTexture();

            inline ESTitleId getWiiTitleId() const { return mWiiTitleId; }
            inline void setWiiTitleId(ESTitleId newTitleId) { mWiiTitleId = newTitleId; }

            inline u32 getSDTitleId() const { return mSDTitleId; }
            inline void setSDTitleId(u32 newTitleId) { mSDTitleId = newTitleId; }

            inline int getBlockCount() const { return mBlockCount; }
            inline void setBlockCount(u32 newBlockCount) { mBlockCount = newBlockCount; }

            inline const wchar_t* getSaveName() const { return mSaveName; }
            inline const wchar_t* getSaveSubName() const { return mSaveSubName; }

            inline u32 getFilePerms() const { return mPerms; }
            inline void setFilePerms(u32 newPerms) { mPerms = newPerms; }
            inline bool isCorrupt() const { return mIsCorrupt; }
            inline void setCorrupt(bool newValue) { mIsCorrupt = newValue; }

            WIISaveBannerFile* getData() { return &mData; }

        private:
            void resolve_icon();
            int get_iconspeed(int frame) const;

            int get_iconspeed_ticks(int frame) { return get_iconspeed(frame) * WII_SAVE_BANNER_FRAME_TICK; }

            int get_iconspeed_begin_tick(int frame) { return get_iconspeed(frame - 1) * WII_SAVE_BANNER_FRAME_TICK; }

            vu8 mFrameCount;  // 0x00

            vu16 mFrameSpeed;  // 0x02
            vu32 mFlags;       // 0x04

            vs16 mAnim_MaxFrameTicks;  // 0x08
            vs16 mAnim_FrameTick;      // 0x0A

            vs8 mAnim_Incrementer;  // 0x0C

            vu8 mAnim_AltFlag;  // 0x0D

            u8 mAnim_AltForward;   // 0x0E
            u8 mAnim_AltBackward;  // 0x0F

            wchar_t mSaveName[WII_SAVE_BANNER_LENGTH + 1];     // 0x10
            wchar_t mSaveSubName[WII_SAVE_BANNER_LENGTH + 1];  // 0x52

            void* mpBannerData;                            // 0x94
            void* mpIconData[WII_SAVE_BANNER_ICON_COUNT];  // 0x98

            GXTexObj mCurIconTex;    // 0xB8
            GXTexObj mCurBannerTex;  // 0xD8

            ESTitleId mWiiTitleId;
            ESTitleId32 mSDTitleId;
            u32 mBlockCount;

            WIISaveBannerFile mData;  // 0x108

            u32 mPerms;       // 0xf1a8
            bool mIsCorrupt;  // 0xf1ac
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_WII_BANNER_FILE_H
