#include "iplUtility.h"
#include "iplSystem.h"
#include "system/iplController.h"
#include "system/iplPointer.h"
#include "utility/iplTPLValidity.h"
#include <private/nwc24/NWC24Time.h>
#include <private/os.h>
#include <revolution/enc.h>

// Wii ID format string
wchar_t lbl_81641258[] = L"%016llu";

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
            if (diff < -0.01f) {
                return -10.0f * (diff * diff);
            }
            if (diff > 0.01f) {
                return 10.0f * (diff * diff);
            }
            return 0.0f;
        }

        BOOL YoungBScroller::isYoungController(int channel) {
            controller::Interface* pController = System::getYoungController();
            if (pController != NULL && pController->getChannel() == channel) {
                return TRUE;
            }
            return FALSE;
        }

        f32 Scroller::get() const { return mScroll; }

        f32 Scroller::movable_pos(f32 speed) const {
            f32 newPos = mScroll;
            newPos += speed;
            if (newPos > mDownLimit) {
                return mDownLimit - newPos;
            }
            if (newPos < mUpLimit) {
                return mUpLimit - newPos;
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
            const u8* s = src;
            char* d = dest;
            wchar_t utf16[3];
            s32 sz[3];

            while (*s != 0) {
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
            const u8* s = src;
            char* d = dest;
            wchar_t utf16[3];
            s32 sz[3];

            for (int i = 0; i < count; i++) {
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
            const char* s = src;
            u8* d = dest;
            wchar_t utf16[3];
            s32 sz[3];

            while (*s != 0) {
                sz[2] = 3;
                sz[1] = 1;
                sz[0] = 1;
                ENCConvertStringUtf8ToUtf16((u16*)utf16, &sz[2], (u8*)s, &sz[0]);
                sz[1] = 1;
                ENCConvertStringUnicodeToLatin1((u8*)d, &sz[1], (u16*)utf16, &sz[2]);
                s += sz[0];
                d += sz[1];
            }
        }

        void CharacterCode::UTF16ToU32(u32* dest, const wchar_t* src) {
            int len = 0;
            while (src[len] != 0) len++;

            u32 result = 0;
            for (int i = 0; i < len; i++) {
                double exp = pow(10.0, len - 1 - i);
                double dig = (double)(src[i] - L'0');
                double acc = (double)result + dig * exp;
                result = (u32)acc;
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
                u32 info[6];
                for (int i = 0; i < 4; i++) {
                    if (WPADProbe(i, info) == 0 && info[0] != 0xFD) {
                        mask |= 1 << i;
                    }
                }
                return mask;
            }

            BOOL isIncreaseConnectedWpad(u32 prevMask, u32 nextMask) {
                for (int i = 0; i < 4; i++) {
                    if (!(prevMask & 1) && (nextMask & 1)) {
                        return TRUE;
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
            u32 size = destSize;
            if (size < srcSize) {
                srcSize = size;
            }
            return (int)memcpy(dest, src, srcSize);
        }

        namespace layout {
            void set_texture(nw4r::lyt::Material* dest, const GXTexObj& texObj) {
                dest->SetTexture(GX_TEXMAP0, texObj);
            }

            void set_texture(nw4r::lyt::Material* dest, const nw4r::lyt::Material* src, u8 texMap) {
                GXTexObj texObj;
                src->GetTexture(&texObj, texMap);
                dest->SetTexture(GX_TEXMAP0, texObj);
            }
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

        math::VEC2 get_cursor_pos(const math::VEC2& basePos) {
            nw4r::ut::Rect rect16_9;
            System::getProjectionRect(&rect16_9);
            nw4r::ut::Rect rect4_3;
            System::getProjectionRect4x3(&rect4_3);

            f32 ratio = (rect4_3.right - rect4_3.left) / (rect16_9.right - rect16_9.left);
            return math::VEC2(basePos.x * ratio, -basePos.y);
        }

        Scroller::Scroller() {
            mState = 0;
            mDownLimit = 0.0f;
            mUpLimit = 0.0f;
            unk_0x3C = 0.0f;
            mScroll = 0.0f;
            unk_0x44 = 0.0f;
            unk_0x48 = 0.6f;
            unk_0x4C = 1.5f;

            anim.init(0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0, 1.0f);
        }

        tpl_validity::tpl_validity(TPLPalette* pal, u32 palSize) {
            mpPalette = (s32)pal;
            mpTexDesc = 0;
            mpTexHeader = 0;
            mpClutHeader = 0;
            mpTexData = 0;
            mpClutData = 0;

            if (pal == NULL) return;
            if (*(u32*)pal != 0x20AF30) return;

            s32 texOfs = *(s32*)((u8*)pal + 8);
            if (texOfs > 0x7FFFFFFF) {
                mpTexDesc = texOfs;
                if (texOfs == 0) return;
                mpTexHeader = *(s32*)texOfs;
                mpClutHeader = *(s32*)(texOfs + 4);
                if (mpTexHeader != 0) mpTexData = *(s32*)(mpTexHeader + 8);
                if (mpClutHeader == 0) return;
                mpClutData = *(s32*)(mpClutHeader + 8);
                return;
            }
            if (palSize <= (u32)texOfs) return;
            s32 ptr = texOfs + (s32)pal;
            mpTexDesc = ptr;
            if (ptr != 0 && *(s32*)ptr != 0) {
                if ((s32)palSize > *(s32*)ptr) {
                    mpTexHeader = *(s32*)ptr + (s32)pal;
                    if (mpTexHeader != 0 && palSize > *(u32*)(mpTexHeader + 8)) {
                        mpTexData = *(s32*)(mpTexHeader + 8) + (s32)pal;
                    }
                }
            }
            if (mpTexDesc == 0) return;
            s32 palOfs = *(s32*)(mpTexDesc + 4);
            if (palOfs == 0 || (s32)palSize <= palOfs) return;
            mpClutHeader = palOfs + (s32)pal;
            if (mpClutHeader == 0 || (s32)palSize <= *(s32*)(mpClutHeader + 8)) return;
            mpClutData = *(s32*)(mpClutHeader + 8) + (s32)pal;
        }

        BOOL tpl_validity::is_valid_cmn() {
            int pal = mpPalette;

            if (pal == 0 || *(u32*)pal != 0x20AF30) return FALSE;
            if (mpTexDesc == 0 || mpTexHeader == 0) return FALSE;

            if (mpTexData & 0x1f) return FALSE;
            if (mpClutData & 0x1f) return FALSE;

            {
                int end = pal + 0x100000;
                if (mpTexData < pal || mpTexData > end) return FALSE;
            }
            if (mpClutHeader != 0) {
                int end = pal + 0x100000;
                if (mpClutData < pal || mpClutData > end) return FALSE;
            }

            TPLHeader* hdr = (TPLHeader*)mpTexHeader;
            if (hdr->height == 0 || hdr->width == 0) return FALSE;

            if (mpClutHeader == 0) {
                if (hdr->format != 0 && hdr->format != 1 && hdr->format != 2 && hdr->format != 3 &&
                    hdr->format != 4 && hdr->format != 5 && hdr->format != 0xE && hdr->format != 6)
                    return FALSE;
            } else {
                if (hdr->format != 8 && hdr->format != 9) return FALSE;
            }

            if (mpClutHeader != 0) {
                TPLClutHeader* clut = (TPLClutHeader*)mpClutHeader;
                if (clut->format != 0 && clut->format != 1 && clut->format != 2) return FALSE;
                if (clut->numEntries > 0x4000) return FALSE;
            }

            if (hdr->wrapS != 0 && hdr->wrapS != 1 && hdr->wrapS != 2) return FALSE;
            if (hdr->wrapT != 0 && hdr->wrapT != 1 && hdr->wrapT != 2) return FALSE;
            if (hdr->minLOD != 0 || hdr->maxLOD != 0) return FALSE;
            if (hdr->minFilter != 0 && hdr->minFilter != 1 && hdr->minFilter != 2 &&
                hdr->minFilter != 3 && hdr->minFilter != 4 && hdr->minFilter != 5)
                return FALSE;
            if (hdr->magFilter != 0 && hdr->magFilter != 1) return FALSE;
            if (hdr->LODBias < -0.01f || hdr->LODBias > 0.01f) return FALSE;
            if (hdr->edgeLODEnable != 0 && hdr->edgeLODEnable != 1) return FALSE;

            return TRUE;
        }

        BOOL tpl_validity::is_valid() { return is_valid_cmn(); }

        BOOL tpl_validity::is_valid_for_ltx() {
            BOOL r = is_valid_cmn();
            if (r) {
                TPLPalette* pal = (TPLPalette*)mpPalette;
                if (pal->numDescriptors != 1) r = FALSE;
                else {
                    TPLHeader* hdr = (TPLHeader*)mpTexHeader;
                    if (hdr->height > 0x100) r = FALSE;
                    else if (hdr->width > 0x200) r = FALSE;
                    else if (mpClutHeader == 0 && hdr->format == 6) r = FALSE;
                }
            }
            return r;
        }

        void Calendar::setCalendarTime(OSCalendarTime* newCalendar) {
            u32 rtc;
            s32 bias = SCGetCounterBias();
            __OSGetRTC(&rtc);

            u32 busClk = *(u32*)0x800000F8;
            u32 timerClk = busClk / 4;
            u64 ticks = (u64)(rtc + bias);
            ticks *= timerClk;
            __OSSetTime(ticks);

            OSSram* sram = __OSLockSram();
            sram->counterBias = bias;
            sram->flags |= 0x20;
            __OSUnlockSram(TRUE);

            while (!__OSSyncSram()) {}

            rtc = 0;
            __OSGetRTC(&rtc);
            if (rtc != 0 && !(rtc & 1)) {
                __OSSetRTC(rtc);
            }

            ticks = OSCalendarTimeToTicks(newCalendar);
            u64 quotient = ticks / timerClk;
            s32 newBias = (s32)(quotient - rtc);
            SCSetCounterBias(newBias);

            ticks = OSCalendarTimeToTicks(newCalendar);
            __OSSetTime(ticks);
            NWC24iSynchronizeRtcCounter(0);
        }
    }
}  // namespace ipl
