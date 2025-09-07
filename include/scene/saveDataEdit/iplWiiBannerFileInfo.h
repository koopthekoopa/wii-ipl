#ifndef IPL_SCENE_WII_BANNER_FILE_H
#define IPL_SCENE_WII_BANNER_FILE_H

#include <revolution/types.h>
#include <revolution/gx.h>

#include "system/iplSystem.h"

#include <cwchar>
#include <cstring>

#define SAVE_NAME_LENGTH        32

#define SAVE_ICON_COUNT         8

#define SAVE_ICON_TEX_SIZE      0x1200
#define SAVE_ICON_TEX_WIDTH     48
#define SAVE_ICON_TEX_HEIGHT    48

#define SAVE_BANNER_TEX_SIZE    0x6000
#define SAVE_BANNER_TEX_WIDTH   192
#define SAVE_BANNER_TEX_HEIGHT  64

#define SAVE_ANIM_FRAME_TICK    4

namespace ipl {
    namespace scene {
        class WiiBannerFileInfo {
            public:
                WiiBannerFileInfo() :
                mFrameCount(0), mFrameSpeed(0), mFlags(0),
                mAnim_Incrementer(0), mAnim_AltFlag(0), mAnim_AltForward(0), mAnim_AltBackward(0),
                unk_0x104(0), unk_0xF1A8(0), unk_0xF1AC(0) {
                    wmemset(mSaveName, 0, SAVE_NAME_LENGTH+1);
                    wmemset(mSaveSubName, 0, SAVE_NAME_LENGTH+1);
        
                    mpBannerData = System::getMem2App()->alloc(SAVE_BANNER_TEX_SIZE, BUFFER_HEAP);
                    memset(mpBannerData, 0, SAVE_BANNER_TEX_SIZE);
        
                    for (int i = 0; i < SAVE_ICON_COUNT; i++) {
                        mpIconData[i] = System::getMem2App()->alloc(SAVE_ICON_TEX_SIZE, BUFFER_HEAP);
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

                void        init();
                void        create();
                void        update();

                GXTexObj*   loadIconTexture();
                GXTexObj*   loadBannerTexture();

            private:
                enum {
                    FLAG_LOCAL_SAVE             = 0x00000001,
                    FLAG_ALTERNATE_ANIMATION    = 0x00000010,
                };
                void    resolve_icon();
                int     get_iconspeed(int frame) const;

                int get_iconspeed_ticks(int frame) {
                    return get_iconspeed(frame) * SAVE_ANIM_FRAME_TICK;
                }

                int get_iconspeed_begin_tick(int frame) {
                    return get_iconspeed(frame-1) * SAVE_ANIM_FRAME_TICK;
                }
                
                typedef struct SData {
                    u32     magic;                                          // 0x00
                    u32     flags;                                          // 0x04
                    u16     speed;                                          // 0x08
                    u8      padding[22];

                    wchar_t name[SAVE_NAME_LENGTH];                         // 0x20
                    wchar_t subName[SAVE_NAME_LENGTH];                      // 0x60

                    u8      bannerData[SAVE_BANNER_TEX_SIZE];               // 0xA0
                    u8      iconData[SAVE_ICON_COUNT][SAVE_ICON_TEX_SIZE];  // 0x60A0
                } SData;

                vu8         mFrameCount;                        // 0x00

                vu16        mFrameSpeed;                        // 0x02
                vu32        mFlags;                             // 0x04

                vs16        mAnim_MaxFrameTicks;                // 0x08
                vs16        mAnim_FrameTick;                    // 0x0A

                vs8         mAnim_Incrementer;                  // 0x0C

                vu8         mAnim_AltFlag;                      // 0x0D

                u8          mAnim_AltForward;                   // 0x0E
                u8          mAnim_AltBackward;                  // 0x0F

                wchar_t     mSaveName[SAVE_NAME_LENGTH+1];      // 0x10
                wchar_t     mSaveSubName[SAVE_NAME_LENGTH+1];   // 0x52

                void*       mpBannerData;                       // 0x94
                void*       mpIconData[SAVE_ICON_COUNT];        // 0x98

                GXTexObj    mCurIconTex;                        // 0xB8
                GXTexObj    mCurBannerTex;                      // 0xD8

                u32         unk_0xF8;
                u32         unk_0xFC;
                u32         unk_0x100;
                u32         unk_0x104;

                SData       mData;                              // 0x108

                u32         unk_0xF1A8;
                u8          unk_0xF1AC;
        };
    }
}

#endif // IPL_SCENE_WII_BANNER_FILE_H
