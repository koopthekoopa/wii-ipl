#include "scene/channelEdit/iplThumbnail.h"

#include "scene/channelSelect/iplChannelObj.h"

namespace ipl {
    namespace scene {
        void Thumbnail::create(u8* buf) {
            if (buf != NULL)
                memcpy(pLytHeapBuf, buf, 0x19000);

            pLytObj = layout::Object::create(System::getMem2App(), 0x19000, pLytHeapBuf, "arc", "icon.brlyt");
            ChannelObj::setLangPane(pLytObj);
            if (pLytObj->searchFile("icon.brlan")) {
                pPaneAnimator = pLytObj->bind("icon.brlan");
                pPaneAnimator->play();
            } else if (pLytObj->searchFile("icon_Whole.brlan")) {
                pPaneAnimator = pLytObj->bind("icon_Whole.brlan");
                pPaneAnimator->play();
            } else {
                pPaneAnimator = NULL;
            }
        }

        void Thumbnail::calc() {
            if (pLytObj == NULL)
                return;

            pLytObj->calc();
        }

        void Thumbnail::draw() {
            if (pLytObj == NULL)
                return;

            pLytObj->draw();
        }

        void Thumbnail::init() {
            mWiiTitleId = 0;
            mSDTitleId = 0;
            mBlockCount = 0;
            if (pLytObj != NULL) {
                pLytObj->destroyHeap();
                pLytObj = NULL;
            }
            pPaneAnimator = NULL;
            memset(pLytHeapBuf, 0, 0x19000);
            memset(&mChanMeta, 0, 0x600);
            mIsCorrupt = false;
            mMatchesTmpTitle = false;
        }

        const u32 regionLangArr[SC_PRODUCT_AREA_MAX][0x10] = {
            {SC_LANG_JAPANESE, -1},                                                                                  // SC_PRODUCT_AREA_JPN
            {SC_LANG_ENGLISH, SC_LANG_FRENCH, SC_LANG_SPANISH, -1},                                                  // SC_PRODUCT_AREA_USA
            {SC_LANG_ENGLISH, SC_LANG_FRENCH, SC_LANG_GERMAN, SC_LANG_SPANISH, SC_LANG_ITALIAN, SC_LANG_DUTCH, -1},  // SC_PRODUCT_AREA_EUR
            {-1},                                                                                                    // SC_PRODUCT_AREA_AUS
            {-1},                                                                                                    // SC_PRODUCT_AREA_BRA
            {-1},                                                                                                    // SC_PRODUCT_AREA_TWN
            {SC_LANG_KOREAN, -1},                                                                                    // SC_PRODUCT_AREA_KOR
            {-1},                                                                                                    // SC_PRODUCT_AREA_HKG
            {-1},                                                                                                    // SC_PRODUCT_AREA_ASI
            {-1},                                                                                                    // SC_PRODUCT_AREA_LTN
            {-1},                                                                                                    // SC_PRODUCT_AREA_SAF
            {SC_LANG_SIMP_CHINESE, -1},                                                                              // SC_PRODUCT_AREA_CHN
        };

        const wchar_t* Thumbnail::getTitle(int value) {
            if (mChanMeta.names[System::getLanguage()][value][0] != L'\0') {
                return (const wchar_t*)mChanMeta.names[System::getLanguage()][value];
            } else {
                const u32* regionIdxLookup = regionLangArr[System::getRegion()];
                for (int j = 0; j < 0x10; j++) {
                    if (mChanMeta.names[regionIdxLookup[j]][value][0] != L'\0') {
                        return (const wchar_t*)mChanMeta.names[regionIdxLookup[j]][value];
                    }
                    if (regionIdxLookup[j] == -1)
                        break;
                }
                return (const wchar_t*)mChanMeta.names[regionIdxLookup[0]][value];
            }
        }
    }  // namespace scene
}  // namespace ipl
