#ifndef IPL_SCENE_WII_BANNER_FILE_H
#define IPL_SCENE_WII_BANNER_FILE_H

#include <revolution/gx.h>
#include <revolution/types.h>

#include "system/iplSystem.h"

#include <cstring>
#include <cwchar>

#define SAVE_NAME_LENGTH 32

#define SAVE_ICON_COUNT 8

#define SAVE_ICON_TEX_SIZE 0x1200
#define SAVE_ICON_TEX_WIDTH 48
#define SAVE_ICON_TEX_HEIGHT 48

#define SAVE_BANNER_TEX_SIZE 0x6000
#define SAVE_BANNER_TEX_WIDTH 192
#define SAVE_BANNER_TEX_HEIGHT 64

#define SAVE_ANIM_FRAME_TICK 4

typedef struct WIISaveBannerFile {
    u32 magic;  // 0x0000
    u32 flags;  // 0x0004
    u16 speed;  // 0x0008
    u8 padding[22];

    wchar_t name[SAVE_NAME_LENGTH];     // 0x0020
    wchar_t subName[SAVE_NAME_LENGTH];  // 0x0060

    u8 bannerData[SAVE_BANNER_TEX_SIZE];  // 0x00a0

    u8 iconData0[SAVE_ICON_TEX_SIZE];  // 0x60a0
    u8 iconData1[SAVE_ICON_TEX_SIZE];  // 0x72a0
    u8 iconData2[SAVE_ICON_TEX_SIZE];  // 0x84a0
    u8 iconData3[SAVE_ICON_TEX_SIZE];  // 0x96a0
    u8 iconData4[SAVE_ICON_TEX_SIZE];  // 0xa8a0
    u8 iconData5[SAVE_ICON_TEX_SIZE];  // 0xbaa0
    u8 iconData6[SAVE_ICON_TEX_SIZE];  // 0xcca0
    u8 iconData7[SAVE_ICON_TEX_SIZE];  // 0xdea0
} SData;

namespace ipl {
    namespace scene {
        class WiiBannerFileInfo {
        public:
            WiiBannerFileInfo()
                : mFrameCount(0), mFrameSpeed(0), mFlags(0), mAnim_Incrementer(0), mAnim_AltFlag(0), mAnim_AltForward(0), mAnim_AltBackward(0),
                  mBlockCount(0), mPerms(0), mIsCorrupt(false) {
                wmemset(mSaveName, 0, SAVE_NAME_LENGTH + 1);
                wmemset(mSaveSubName, 0, SAVE_NAME_LENGTH + 1);

                mpBannerData = System::getMem2App()->alloc(SAVE_BANNER_TEX_SIZE, DEFAULT_ALIGN);
                memset(mpBannerData, 0, SAVE_BANNER_TEX_SIZE);

                for (int i = 0; i < SAVE_ICON_COUNT; i++) {
                    mpIconData[i] = System::getMem2App()->alloc(SAVE_ICON_TEX_SIZE, DEFAULT_ALIGN);
                    memset(mpIconData[i], 0, SAVE_ICON_TEX_SIZE);
                }

                memset(&mData, 0, sizeof(mData));
            }

            ~WiiBannerFileInfo() {
                for (int i = 0; i < SAVE_ICON_COUNT; i++) {
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

            inline SData* getDataRef() { return &mData; }

            enum {
                FLAG_LOCAL_SAVE = 0x00000001,
                FLAG_ALTERNATE_ANIMATION = 0x00000010,
            };

        private:
            void resolve_icon();
            int get_iconspeed(int frame) const;

            int get_iconspeed_ticks(int frame) { return get_iconspeed(frame) * SAVE_ANIM_FRAME_TICK; }

            int get_iconspeed_begin_tick(int frame) { return get_iconspeed(frame - 1) * SAVE_ANIM_FRAME_TICK; }

            vu8 mFrameCount;  // 0x00

            vu16 mFrameSpeed;  // 0x02
            vu32 mFlags;       // 0x04

            vs16 mAnim_MaxFrameTicks;  // 0x08
            vs16 mAnim_FrameTick;      // 0x0A

            vs8 mAnim_Incrementer;  // 0x0C

            vu8 mAnim_AltFlag;  // 0x0D

            u8 mAnim_AltForward;   // 0x0E
            u8 mAnim_AltBackward;  // 0x0F

            wchar_t mSaveName[SAVE_NAME_LENGTH + 1];     // 0x10
            wchar_t mSaveSubName[SAVE_NAME_LENGTH + 1];  // 0x52

            void* mpBannerData;                 // 0x94
            void* mpIconData[SAVE_ICON_COUNT];  // 0x98

            GXTexObj mCurIconTex;    // 0xB8
            GXTexObj mCurBannerTex;  // 0xD8

            ESTitleId mWiiTitleId;
            ESTitleId32 mSDTitleId;
            u32 mBlockCount;

            SData mData;  // 0x108

            u32 mPerms;       // 0xf1a8
            bool mIsCorrupt;  // 0xf1ac
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_WII_BANNER_FILE_H
