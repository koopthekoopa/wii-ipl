#include "scene/saveDataEdit/iplWiiBannerFileInfo.h"

#include <revolution/os.h>

namespace ipl {
    namespace scene {
        void WiiBannerFileInfo::init() {
            mFrameCount = 0;
            mFrameSpeed = 0;
            mFlags = 0;

            // Init icon animation
            mAnim_Incrementer = 0;
            mAnim_AltFlag = 0;
            mAnim_AltForward = 0;
            mAnim_AltBackward = 0;

            // Init name
            wmemset(mSaveName, 0, SAVE_NAME_LENGTH+1);
            wmemset(mSaveSubName, 0, SAVE_NAME_LENGTH+1);

            // Init banner
            memset(mpBannerData, 0, SAVE_BANNER_TEX_SIZE);

            // Init icons
            for (int i = 0; i < SAVE_ICON_COUNT; i++) {
                memset(mpIconData[i], 0, SAVE_ICON_TEX_SIZE);
            }

            // Init data
            memset(&mData, 0, sizeof(mData));

            unk_0xFC = 0;
            unk_0xF8 = 0;
            unk_0x100 = 0;
            unk_0x104 = 0;
            unk_0xF1A8 = 0;
            unk_0xF1AC = 0;
        }

        void WiiBannerFileInfo::create() {
            mFrameSpeed = mData.speed;
            mFlags = mData.flags;

            // Setup icon animation
            resolve_icon();

            // Setup name
            memcpy(mSaveName, mData.name, SAVE_NAME_LENGTH * sizeof(wchar_t));
            memcpy(mSaveSubName, mData.subName, SAVE_NAME_LENGTH * sizeof(wchar_t));

            // Setup banner
            memcpy(mpBannerData, mData.bannerData, SAVE_BANNER_TEX_SIZE);
            DCStoreRange(mpBannerData, SAVE_BANNER_TEX_SIZE);

            // Setup icons
            for (int i = 0; i < SAVE_ICON_COUNT; i++) {
                memcpy(mpIconData[i], mData.iconData[i], SAVE_ICON_TEX_SIZE);
                DCStoreRange(mpIconData[i], SAVE_ICON_TEX_SIZE);
            }
        }

        void WiiBannerFileInfo::update() {
            // Increment tick
            mAnim_FrameTick += mAnim_Incrementer;

            // If tick reached to last frame
            if (mAnim_FrameTick >= mAnim_MaxFrameTicks) {
                // For alternate, set the frame tick to the last frame
                if (mAnim_AltFlag == FLAG_ALTERNATE_ANIMATION) {
                    mAnim_FrameTick = (mAnim_MaxFrameTicks - mAnim_AltBackward) - 1;
                    mAnim_Incrementer = -1;
                }
                // For loop, reset to first frame
                else {
                    mAnim_FrameTick = 0;
                    mAnim_Incrementer = 1;
                }
            }

            // If tick reached to first frame
            if (mAnim_FrameTick < 0) {
                // For alternate, set the frame tick to the second frame
                if (mAnim_AltFlag == FLAG_ALTERNATE_ANIMATION) {
                    mAnim_FrameTick = mAnim_AltForward;
                }
                // For loop, reset to first frame.
                else {
                    mAnim_FrameTick = 0;
                }
                mAnim_Incrementer = 1;
            }

            // Get current icon frame
            int speed = 0;
            s16 i = 0;
            do {
                speed += get_iconspeed_ticks(i);
                i++;
                if (mAnim_FrameTick <= speed) {
                    break;
                }
            } while (i < SAVE_ICON_COUNT);

            // Init current icon frame texture
            GXInitTexObj(&mCurIconTex, mpIconData[i-1],
                        SAVE_ICON_TEX_WIDTH, SAVE_ICON_TEX_HEIGHT,
                        GX_TF_RGB5A3, GX_CLAMP, GX_CLAMP, GX_FALSE);
        }

        GXTexObj* WiiBannerFileInfo::loadIconTexture() {
            // Get current icon frame
            int speed = 0;
            s16 i = 0;
            do {
                speed += get_iconspeed_ticks(i);
                i++;
                if (mAnim_FrameTick <= speed) {
                    break;
                }
            } while (i < SAVE_ICON_COUNT);

            // Load current icon frame texture
            GXInitTexObj(&mCurIconTex, mpIconData[i-1],
                        SAVE_ICON_TEX_WIDTH, SAVE_ICON_TEX_HEIGHT,
                        GX_TF_RGB5A3, GX_CLAMP, GX_CLAMP, GX_FALSE);
            GXLoadTexObj(&mCurIconTex, GX_TEXMAP0);

            return &mCurIconTex;
        }

        GXTexObj* WiiBannerFileInfo::loadBannerTexture() {
            // Load current banner texture
            GXInitTexObj(&mCurBannerTex, mpBannerData,
                        SAVE_BANNER_TEX_WIDTH, SAVE_BANNER_TEX_HEIGHT,
                        GX_TF_RGB5A3, GX_CLAMP, GX_CLAMP, GX_FALSE);
            GXLoadTexObj(&mCurBannerTex, GX_TEXMAP0);

            return &mCurBannerTex;
        }

        void WiiBannerFileInfo::resolve_icon() {
            mFrameCount = 0;
            mAnim_MaxFrameTicks = 0;
            mAnim_FrameTick = 0;

            // Set alternative forward frame (second frame)
            mAnim_AltForward = get_iconspeed_begin_tick(1);

            // Set max frame ticks
            int i = 0;
            for (i = 0; i < SAVE_ICON_COUNT; i++) {
                if (get_iconspeed(i) == 0) break; // A frame with the value 0 indicates the end of the frames.
                mAnim_MaxFrameTicks += (get_iconspeed_ticks(i));
            }

            // Set alternate backward frame (second last frame)
            mAnim_AltBackward = (get_iconspeed_begin_tick(i));

            // The rest of the settings are set if it can animate.
            if (get_iconspeed(0) != 0) {
                // Get frame count
                int i = 0;
                do {
                    if (get_iconspeed(i) != 0) {
                        mFrameCount++;
                    }
                    i++;
                } while (i < SAVE_ICON_COUNT);

                mAnim_AltFlag = (mFlags & FLAG_ALTERNATE_ANIMATION);
                mAnim_Incrementer = 1;
            }
        }

        int WiiBannerFileInfo::get_iconspeed(int frame) const {
            /*
                Speed format
                ------------
                Example: 0x557F
                (01010101 01111111)
                3, 3, 3, 1, 1, 1, 1, 1
            */
            if (frame < 0 || frame > SAVE_ICON_COUNT) {
                return 0;
            }
            return (mFrameSpeed >> (frame * 2)) & 0b00000011;
        }
    }
}
