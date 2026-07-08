#include "iplUtility.h"
#include "iplSystem.h"
#include "sound/iplSound.h"
#include "system/iplController.h"
#include "system/iplPointer.h"
#include "utility/iplTPLValidity.h"
#include <private/nwc24/NWC24Time.h>
#include <private/os.h>
#include <revolution/enc.h>

// Scroll sound effect names
char lbl_81641230[] = "WIPL_SE_B_SCROLL";
char lbl_81641241[] = "WIPL_SE_MESSAGE_SCROLL";

// Wii id format string
wchar_t lbl_81641258[] = L"%016llu";

// Scroller
const float lbl_81694600 = 0.0f;
const float lbl_81694604 = -1.0f;
const float lbl_81694608 = 1.0f;
const float lbl_8169460C = 128.0f;
const float lbl_81694620 = 0.6f;
const float lbl_81694624 = 1.5f;
const float lbl_81694628 = 20.0f;

// Texture LOD bias range
const float lbl_81694650 = -100.f;
const float lbl_81694654 = 100.f;

// mLangPath
char lbl_81696250[] = "jpn";
char lbl_81696254[] = "eng";
char lbl_81696258[] = "ger";
char lbl_8169625C[] = "fra";
char lbl_81696260[] = "spa";
char lbl_81696264[] = "ita";
char lbl_81696268[] = "ned";
char lbl_8169626C[] = "chn";
char lbl_81696270[] = "kor";

// Scroller
float lbl_81696274 = 1.0f;
float lbl_81696278 = 1.0f;
float lbl_8169627C = 1.0f;
float lbl_81696280 = 1.0f;
float lbl_81696284 = 0.0f;
float lbl_81696288 = 1.0f;
float lbl_8169628C = 0.0f;
float lbl_81696290 = -300.0f;
float lbl_81696294 = 0.0f;
float lbl_81696298 = 300.0f;

namespace ipl {
    namespace utility {
        BScroller::BScroller() { init(); }

        void BScroller::init() {
            mState = -1;
            unk_0x08 = 0.0f;
            unk_0x0C = 0.0f;
            unk_0x10 = 0.0f;
            unk_0x14 = 0.0f;
            mSpeed = 0.0f;
            mSoundFreq = 0.0f;
        }

        BOOL BScroller::isYoungController(int channel) { return TRUE; }

        bool BScroller::isActive() const { return (u32)(mState + 1) > 0; }

        bool BScroller::isUp() const { return mSpeed < 0.0f; }

        bool BScroller::isDown() const { return mSpeed > 0.0f; }

        f32 BScroller::_get() {
            f32 diff = unk_0x0C - unk_0x14;
            f32 result = 0.f;
            if (diff < -0.01f)
                result = -10.0f * (diff * diff);
            else if (diff > 0.01f)
                result = 10.0f * (diff * diff);
            return result;
        }

        BOOL YoungBScroller::isYoungController(int channel) {
            controller::Interface* pController = System::getYoungController();
            if (pController != NULL && pController->getChannel() == channel) {
                return TRUE;
            }
            return FALSE;
        }


        void BScroller::set_arw_param() {
            int direction = mSpeed >= 0.0f ? 1 : 0;
            Pointer* ptr = System::getPointer();
            ptr->mPointDirection = direction;

            nw4r::ut::Rect rect;
            System::getProjectionRect(&rect);

            f32 diff = unk_0x14 - unk_0x0C;
            f32 height = rect.bottom - rect.top;
            f32 arrowLen = math::abs<float>(diff) * height;
            ptr->setArrowLength(arrowLen);

            ptr->mbScrolling = math::abs<float>(mSpeed) > 0.0f;
        }

        void BScroller::reset() {
            if (mState >= 0) {
                System::smArg.mpPointer->setState(mState, 0);
                System::smArg.mpPointer->mIsScrolling = -1;
            }
            init();
        }

        BOOL BScroller::calc() {
            BOOL result = FALSE;

            if (mState < 0) {
                for (int channel = 0; channel < 4; channel++) {
                    controller::Interface* ctrl = System::getController(channel);
                    if (ctrl == NULL)
                        continue;
                    if (!ctrl->down(controller::REVO_BTN_B))
                        continue;
                    if (!ctrl->isValidDpd())
                        continue;
                    if (!isYoungController(channel))
                        continue;

                    mState = channel;

                    unk_0x08 = math::abs_clamp<float>(ctrl->getDpdPos().x, lbl_81696274);
                    unk_0x0C = math::abs_clamp<float>(ctrl->getDpdPos().y, lbl_81696278);

                    *(math::VEC2*)&unk_0x10 = *(math::VEC2*)&unk_0x08;

                    System::smArg.mpPointer->setState(mState, 1);
                    System::smArg.mpPointer->mIsScrolling = mState;
                    System::smArg.mpPointer->mOriginPos = get_cursor_pos(ctrl->getDpdProjectionPos());

                    mSpeed = _get();
                    set_arw_param();
                    result = TRUE;
                    goto after_loop;
                }
            } else {
                controller::Interface* ctrl = System::getController(mState);
                if (ctrl == NULL)
                    goto reset_state;
                if (!ctrl->down(controller::REVO_BTN_B))
                    goto reset_state;
                if (isYoungController(mState))
                    goto young_controller;

                reset_state:
                System::smArg.mpPointer->setState(mState, 0);
                System::smArg.mpPointer->mIsScrolling = -1;
                init();
                goto after_loop;

                young_controller:
                if (ctrl->isValidDpd()) {
                    unk_0x08 = math::abs_clamp<float>(ctrl->getDpdPos().x, lbl_8169627C);
                    unk_0x0C = math::abs_clamp<float>(ctrl->getDpdPos().y, lbl_81696280);

                    mSpeed = _get();
                    set_arw_param();
                } else {
                    if (math::abs<float>(unk_0x08) < math::abs<float>(unk_0x0C)) {
                        f32 newVal;
                        if (unk_0x0C < 0.0f) {
                            newVal = lbl_81694604;
                        } else {
                            newVal = lbl_81694608;
                        }
                        unk_0x0C = newVal;
                        mSpeed = _get();
                        set_arw_param();
                    }
                }
            }

            after_loop:
            if (math::abs<float>(mSoundFreq) > lbl_8169460C) {
                snd::sSystem.startSE(lbl_81641230);
                f32 newFreq;
                if (mSoundFreq > lbl_81694600) {
                    newFreq = mSoundFreq - lbl_8169460C;
                } else {
                    newFreq = mSoundFreq + lbl_8169460C;
                }
                mSoundFreq = newFreq;
            }

            return result;
        }

        Scroller::Scroller() {
            mState = 0;
            mDownLimit = 0.0f;
            mUpLimit = 0.0f;
            unk_0x3C = 0.0f;
            mScroll = 0.0f;
            unk_0x44 = 0.0f;
            unk_0x48 = lbl_81694620;
            unk_0x4C = lbl_81694624;

            anim.init(lbl_81696284, lbl_81696288, lbl_81694608, lbl_81694600, lbl_81694600, 0, lbl_81694608);
        }

        void Scroller::calc() {
            f32 oldScroll = mScroll;

            switch (mState) {
                case STATE_SCROLL_CON_UP:
                    unk_0x3C = unk_0x3C * unk_0x48 - unk_0x4C;
                    if (unk_0x3C > 0.0f) unk_0x3C = 0.0f;
                    mScroll += unk_0x3C;
                mState = STATE_NORMAL;
                break;
                case STATE_SCROLL_CON_DOWN:
                    unk_0x3C = unk_0x3C * unk_0x48 + unk_0x4C;
                    if (unk_0x3C < 0.0f) unk_0x3C = 0.0f;
                    mScroll += unk_0x3C;
                mState = STATE_NORMAL;
                break;
                case STATE_SCROLL_BTN_UP:
                    unk_0x44 = oldScroll;
                    anim.init(lbl_8169628C, lbl_81696290, lbl_81694628, lbl_81694600, lbl_81694600, 0, lbl_81694608);
                    anim.initFrame();
                    anim.restart();
                    mState = 5;
                    break;
                case STATE_SCROLL_BTN_DOWN:
                    unk_0x44 = oldScroll;
                    anim.init(lbl_81696294, lbl_81696298, lbl_81694628, lbl_81694600, lbl_81694600, 0, lbl_81694608);
                    anim.initFrame();
                    anim.restart();
                    mState = 5;
                    break;
                case 5: {
                    anim.calc();

                    mScroll = unk_0x44 + anim.get();

                    if (!anim.isPlaying()) {
                        unk_0x3C = lbl_81694600;
                        anim.initFrame();
                        anim.calc();
                        mState = STATE_NORMAL;
                    }
                    break;
                }
            }

            f32 scroll = mScroll;

            if (!(scroll > mDownLimit)) goto checkUpL;
            mScroll = mDownLimit;
            goto soundCheckL;
            checkUpL:
            if (!(scroll < mUpLimit)) goto soundCheckL;
            mScroll = mUpLimit;
            soundCheckL:

            {
                f32 diff = oldScroll - mScroll;
                if (ipl::math::abs<float>(diff) > lbl_81694608) {
                    ipl::snd::sSystem.holdSE(lbl_81641241);
                }
            }
        }

        f32 Scroller::get() const { return mScroll; }

        f32 Scroller::movable_pos(f32 speed) const {
            f32 newPos;
            f32 curScroll = mScroll;
            newPos = curScroll + speed;
            if (newPos > mDownLimit) {
                return mDownLimit - curScroll;
            }
            if (newPos < mUpLimit) {
                return mUpLimit - curScroll;
            }
            return speed;
        }

        void CharacterCode::shiftJISToUTF16(wchar_t* dest, const u8* src, s32 length) {
            s32 size = length;
            ENCConvertStringSjisToUnicode((u16*)dest, &size, src, (s32*)NULL);
        }

        void CharacterCode::ANSIToUTF16(wchar_t* dest, const u8* src, s32 length) {
            s32 size = length;
            ENCConvertStringLatin1ToUnicode((u16*)dest, &size, src, (s32*)NULL);
        }

        void CharacterCode::UTF16ToANSI(u8* dest, const wchar_t* src, s32 length) {
            s32 size = length;
            s32 result = ENCConvertStringUnicodeToLatin1(dest, &size, (u16*)src, NULL);
            while (result != 0) {
                if (result == -1) break;
                dest += size;
                src += size + 1;
                length -= size;
                if (length > 0) {
                    *dest++ = ' ';
                    length--;
                }
                size = length;
                result = ENCConvertStringUnicodeToLatin1(dest, &size, (u16*)src, NULL);
            }
        }

        void CharacterCode::UTF8ToUTF16(wchar_t* dest, const char* src, s32 length) {
            s32 size = length;
            ENCConvertStringUtf8ToUtf16((u16*)dest, &size, (u8*)src, (s32*)NULL);
        }

        void CharacterCode::UTF16ToUTF8(char* dest, const wchar_t* src, s32 length) {
            s32 size = length;
            ENCConvertStringUtf16ToUtf8((u8*)dest, &size, (u16*)src, (s32*)NULL);
        }

        void CharacterCode::ANSIToUTF8(char* dest, const u8* src) {
            char* d = dest;
            const u8* s = src;

            while (*s != 0) {
                wchar_t utf16[1];
                s32 sz[3];
                sz[2] = 1;
                sz[1] = 1;
                sz[0] = 3;
                ENCConvertStringLatin1ToUnicode((u16*)utf16, &sz[2], s, &sz[1]);
                ENCConvertStringUtf16ToUtf8((u8*)d, &sz[0], (u16*)utf16, &sz[2]);
                s++;
                d += sz[0];
            }
        }

        void CharacterCode::ANSIToUTF8(char* dest, const u8* src, int count) {
            char* d = dest;
            const u8* s = src;

            for (int i = 0; i < count; i++) {
                wchar_t utf16[1];
                s32 sz[3];
                sz[2] = 1;
                sz[1] = 1;
                sz[0] = 3;
                ENCConvertStringLatin1ToUnicode((u16*)utf16, &sz[2], s, &sz[1]);
                ENCConvertStringUtf16ToUtf8((u8*)d, &sz[0], (u16*)utf16, &sz[2]);
                s += sz[1];
                d += sz[0];
            }
        }

        void CharacterCode::UTF8ToANSI(u8* dest, const char* src) {
            u8* d = dest;
            const char* s = src;

            while ((u8)*s != 0) {
                wchar_t utf16[1];
                s32 sz[3];
                sz[2] = 1;
                sz[1] = 1;
                sz[0] = 3;
                ENCConvertStringUtf8ToUtf16((u16*)utf16, &sz[2], (u8*)s, &sz[0]);
                ENCConvertStringUnicodeToLatin1(d, &sz[1], (u16*)utf16, &sz[2]);
                s += sz[0];
                d += sz[1];
            }
        }

        void CharacterCode::UTF16ToU32(u32* dest, const wchar_t* src) {
            u32 result = 0;
            int len = 0;

            const wchar_t* p = src;
            while (*p != 0) {
                len++;
                p++;
            }

            int off = 0;
            for (int i = 0; i < len; i++) {
                double exp = pow(10.0, len - i - 1);
                wchar_t in = src[i];
                result += (in - L'0') * exp;
                off += 2;
            }
            *dest = result;
        }

        void CharacterCode::WiiIdToUTF16(wchar_t* dest, u64 wiiId) {
            swprintf(dest, 17, lbl_81641258, wiiId);
        }

        void CharacterCode::changeEndian(wchar_t* dest, int count) {
            char* bytes = (char*)dest;
            for (int i = 0; i < count; i++) {
                int off = i * 2;
                char t0 = bytes[off];
                char t1 = bytes[off + 1];
                bytes[off] = t1;
                bytes[off + 1] = t0;
            }
        }

        namespace wpad {
            u32 getWpadConnectedMask() {
                u32 mask = 0;
                u32 info[1];
                for (int i = 0; i < 4; i++) {
                    if (WPADProbe(i, info) == 0 && info[0] != 0xFD) {
                        mask |= 1 << i;
                    }
                }
                return mask;
            }

            BOOL isIncreaseConnectedWpad(u32 prevMask, u32 nextMask) {
                for (u32 i = 4; i > 0; i--) {
                    if (!(prevMask & 1)) {
                        if ((nextMask & 1) == 1) {
                            return TRUE;
                        }
                    }
                    prevMask >>= 1;
                    nextMask >>= 1;
                }
                return FALSE;
            }
        }  // namespace wpad

        void timer::set_msec(int ms) { tick = OSGetTime() + OSMillisecondsToTicks((s64)ms); }

        bool timer::operator()() { return OSGetTime() > tick; }

        int memcpy_s(void* dest, u32 destSize, const void* src, u32 srcSize) {
            return (int)memcpy(dest, src, destSize < srcSize ? destSize : srcSize);
        }

        namespace layout {
            void set_string(nw4r::lyt::Pane* pane, const wchar_t* str) {
                nw4r::lyt::Pane* pPane = pane;
                const wchar_t* pStr = str;
                const nw4r::ut::detail::RuntimeTypeInfo* textBoxType = &nw4r::lyt::TextBox::typeInfo;

                const nw4r::ut::detail::RuntimeTypeInfo* info = pPane->GetRuntimeTypeInfo();
                bool found;
                goto entry;

                body:
                if (info == textBoxType) {
                    found = true;
                    goto check;
                }
                info = info->mParentTypeInfo;

                entry:
                if (info != NULL) goto body;
                found = false;

                check:
                pPane = found ? pPane : NULL;
                ((nw4r::lyt::TextBox*)pPane)->AllocStringBuffer(wcslen(pStr));
                ((nw4r::lyt::TextBox*)pPane)->SetString(pStr, 0);
            }

            void set_texture(nw4r::lyt::Material* dest, const GXTexObj& texObj) {
                dest->SetTexture(GX_TEXMAP0, texObj);
            }

            void set_texture(nw4r::lyt::Material* dest, const nw4r::lyt::Material* src, u8 texMap) {
                GXTexObj texObj;
                src->GetTexture(&texObj, texMap);
                dest->SetTexture(GX_TEXMAP0, texObj);
            }
        } // namespace layout

        math::VEC2 get_cursor_pos(const math::VEC2& basePos) {
            nw4r::ut::Rect rect16_9;
            System::getProjectionRect(&rect16_9);
            nw4r::ut::Rect rect4_3;
            System::getProjectionRect4x3(&rect4_3);

            f32 width16_9 = rect16_9.right - rect16_9.left;
            f32 width4_3 = rect4_3.right - rect4_3.left;
            // TODO: Non-matching VEC2 ctor call. When moving the math::VEC2(f32,f32) implementation into this TU, it matches 100% for some reason
            return math::VEC2(basePos.x * (width4_3 / width16_9), -basePos.y);
        }

        tpl_validity::tpl_validity(TPLPalette* pal, u32 palSize) {
            mpPalette = pal;
            mpTexDesc = NULL;
            mpTexHeader = NULL;
            mpClutHeader = NULL;
            mpTexData = NULL;
            mpClutData = NULL;

            if (pal == NULL) return;
            if (pal->versionNumber != 0x0020AF30) return;
            if ((u32)pal->descriptorArray >= 0x80000000) goto absolute;
            if ((u32)pal->descriptorArray >= palSize) return;
            mpTexDesc = (TPLDescriptor*)((u32)pal->descriptorArray + (u32)pal);
            if (mpTexDesc) {
                if (mpTexDesc->textureHeader) {
                    if ((u32)mpTexDesc->textureHeader < palSize) {
                        mpTexHeader = (TPLHeader*)((u32)mpTexDesc->textureHeader + (u32)pal);
                        if (mpTexHeader) {
                            u32 dataOfs = (u32)mpTexHeader->data;
                            if (dataOfs < palSize) {
                                mpTexData = (char*)(dataOfs + (u32)pal);
                            }
                        }
                    }
                }
            }

            if (mpTexDesc) {
                if (mpTexDesc->CLUTHeader) {
                    if ((u32)mpTexDesc->CLUTHeader < palSize) {
                        mpClutHeader = (TPLClutHeader*)((u32)mpTexDesc->CLUTHeader + (u32)mpPalette);
                        if (mpClutHeader) {
                            u32 dataOfs = (u32)mpClutHeader->data;
                            if (dataOfs < palSize) {
                                mpClutData = (char*)(dataOfs + (u32)mpPalette);
                            }
                        }
                    }
                }
            }
            return;

            absolute:
            mpTexDesc = pal->descriptorArray;
            if (mpTexDesc == NULL) return;
            mpTexHeader = mpTexDesc->textureHeader;
            mpClutHeader = mpTexDesc->CLUTHeader;
            if (mpTexHeader != NULL) {
                mpTexData = mpTexHeader->data;
            }
            if (mpClutHeader == NULL) return;
            mpClutData = mpClutHeader->data;
        }


        BOOL tpl_validity::is_valid_cmn() {
            u32 pal = (u32)mpPalette;
            BOOL r = TRUE;

            if(mpPalette == NULL || mpPalette->versionNumber != 0x0020AF30) {
                r = FALSE;
            }
            else {
                u32 end = (u32)mpPalette + 0x100000;
                if (mpTexDesc == NULL || mpTexHeader == NULL)
                    r = FALSE;
                else if ((u32)mpTexData & 0x1F)
                    r = FALSE;
                else if ((u32)mpClutData & 0x1F)
                    r = FALSE;
                else if ((u32)mpTexData < pal || (u32)mpTexData > end)
                    r = FALSE;
                else if (mpClutHeader != NULL && ((u32)mpClutData < pal || (u32)mpClutData > end))
                    r = FALSE;
                else if (mpTexHeader->height == 0 || mpTexHeader->width == 0)
                    r = FALSE;
                else if (mpClutHeader == NULL &&
                        mpTexHeader->format != 0 && mpTexHeader->format != 1 && mpTexHeader->format != 2 && mpTexHeader->format != 3 &&
                        mpTexHeader->format != 4 && mpTexHeader->format != 5 && mpTexHeader->format != 0xE && mpTexHeader->format != 6)
                    r = FALSE;
                else if (mpClutHeader != NULL && mpTexHeader->format != 8 && mpTexHeader->format != 9)
                    r = FALSE;
                else if (mpClutHeader != NULL && mpClutHeader->format != 0 && mpClutHeader->format != 1 && mpClutHeader->format != 2)
                    r = FALSE;
                else if (mpClutHeader != NULL && mpClutHeader->numEntries > 0x4000)
                    r = FALSE;
                else if (mpTexHeader->wrapS != 0 && mpTexHeader->wrapS != 1 && mpTexHeader->wrapS != 2)
                    r = FALSE;
                else if (mpTexHeader->wrapT != 0 && mpTexHeader->wrapT != 1 && mpTexHeader->wrapT != 2)
                    r = FALSE;
                else if (mpTexHeader->minLOD != 0 || mpTexHeader->maxLOD != 0)
                    r = FALSE;
                else if (mpTexHeader->minFilter != 0 && mpTexHeader->minFilter != 1 && mpTexHeader->minFilter != 2 &&
                        mpTexHeader->minFilter != 3 && mpTexHeader->minFilter != 4 && mpTexHeader->minFilter != 5)
                    r = FALSE;
                else if (mpTexHeader->magFilter != 0 && mpTexHeader->magFilter != 1)
                    r = FALSE;
                else if (mpTexHeader->LODBias < lbl_81694650 || mpTexHeader->LODBias > lbl_81694654)
                    r = FALSE;
                else if (mpTexHeader->edgeLODEnable != 0 && mpTexHeader->edgeLODEnable != 1)
                    r = FALSE;
            }
            return r;
        }
        BOOL tpl_validity::is_valid() { return is_valid_cmn(); }

        BOOL tpl_validity::is_valid_for_ltx() {
            BOOL r = is_valid_cmn();
            if (r) {
                if (mpPalette->numDescriptors != 1) r = FALSE;
                else if (mpTexHeader->height > 0x100) r = FALSE;
                else if (mpTexHeader->width > 0x200) r = FALSE;
                else if (mpClutHeader == 0 && mpTexHeader->format == 6) r = FALSE;
            }
            return r;
        }

        void Calendar::setCalendarTime(OSCalendarTime* newCalendar) {
            // TODO: define constant? resolve address?
            u32* busClk = reinterpret_cast<u32*>(0x800000F8);
            u32 bias;
            u32 rtc;

            bias = SCGetCounterBias();
            __OSGetRTC(&rtc);

            s64 ticks = rtc + bias;
            __OSSetTime(*busClk / 4 * ticks);

            OSSram* sram = __OSLockSram();
            sram->counterBias = bias;
            sram->flags |= 0x20;
            __OSUnlockSram(TRUE);

            while (!__OSSyncSram()) {}

            rtc = 0;
            if (__OSGetRTC(&rtc) == 0 || rtc & 0x80000000) {
                __OSSetRTC(rtc);
            }

            s32 newBias = (s32)(OSCalendarTimeToTicks(newCalendar) / (s64)(*busClk / 4)) - (s32)rtc;
            SCSetCounterBias(newBias);

            __OSSetTime(OSCalendarTimeToTicks(newCalendar));
            NWC24iSynchronizeRtcCounter(0);
        }

        char* Language::mLangPath[10] = {
            lbl_81696250, lbl_81696254, lbl_81696258, lbl_8169625C,
            lbl_81696260, lbl_81696264, lbl_81696268, lbl_8169626C,
            lbl_81696254, lbl_81696270,
        };

        char* Language::getPath() {
            return mLangPath[System::getLanguage()];
        }
    }

    namespace math {
        template class HermiteIntp<f32>;
    }
}  // namespace ipl
