#include <decomp/ide.h>
#include <math/iplMathTypes.h>
#include <nw4r/ut/Rect.h>
#include <revolution/kpad.h>
#include <revolution/mtx/GeoTypes.h>
#include <revolution/os.h>
#include <revolution/os/OSTime.h>
#include <revolution/sc.h>
#include <revolution/wpad.h>

#include "system/iplController.h"
#include "system/iplSystem.h"

const f32 lbl_8160D2C0[] = {0.2, 0.3, 0, 0};

namespace ipl {
    namespace controller {

        void Base::read() {
            if (isValidBtn()) {
                if (downTrg(BTN_INTERACT)) {
                    mButton = 1;
                }
                if (pinch()) {
                    mButton = 0;
                }
                if (mButton != 0) {
                    if (down(BTN_INTERACT)) {
                        unk_0x08++;
                    } else {
                        unk_0x08 = 0;
                        mButton = 0;
                    }
                } else {
                    unk_0x08 = 0;
                }
            } else {
                mButton = 0;
                unk_0x08 = 0;
            }

            switch (mRumbleType) {
                case 0:
                case 1: {
                    u32 time = OSTicksToMilliseconds(OSGetTick() - mLastRumbleTime);
                    f32 f1 = (f32)time / 1000.0f;
                    if (f1 < 7.0f / 120.0f) {
                        WPADControlMotor(mChan, 1);
                    } else if (f1 < lbl_8160D2C0[mRumbleType]) {
                        WPADControlMotor(mChan, 0);
                    } else if (getKPADStatus() == NULL || getKPADStatus()->wpad_err == 0) {
                        mLastRumbleTime = 0;
                        mRumbleType = -1;
                        WPADControlMotor(mChan, 0);
                    }
                    if (downTrg(BTN_INTERACT) != 0 || decide() != 0) {
                        WPADControlMotor(mChan, 0);
                        mRumbleType = 2;
                    }
                    break;
                }
                case 2: {
                    u32 time = OSTicksToMilliseconds(OSGetTick() - mLastRumbleTime);
                    f32 f1 = (f32)time / 1000.0f;
                    if (f1 < lbl_8160D2C0[1]) {
                        WPADControlMotor(mChan, 0);
                    } else if (getKPADStatus() == NULL || getKPADStatus()->wpad_err == 0) {
                        mLastRumbleTime = 0;
                        mRumbleType = -1;
                        WPADControlMotor(mChan, 0);
                    }
                    break;
                }
            }
        }

        bool Interface::isValidBtn() const {
            return false;
        }

        int Interface::downTrg(u32 mButton) const {
            return 0;
        }

        int Interface::pinch() const {
            return 0;
        }

        int Interface::down(u32 mButton) const {
            return 0;
        }

        KPADStatus* Interface::getKPADStatus() const {
            return NULL;
        }

        int Base::decide() const {
            return (unk_0x08 - 5) == 0;
        }

        int Base::rumble(int type) {
            int ret = FALSE;
            if (WPADIsMotorEnabled() && mRumbleType == -1) {
                mLastRumbleTime = OSGetTick();
                ret = TRUE;
                mRumbleType = type;
            }

            return ret;
        }

        void Base::cancelRumbling() {
            if (mRumbleType != -1) {
                WPADControlMotor(mChan, 0);
            }
            mLastRumbleTime = 0;
            mRumbleType = -1;
        }

        void Revolution::read() {
            if (!isValidDpd()) {
                unk_0x20->pos.y = 1.0f / 0.0f;
                unk_0x20->pos.x = 1.0f / 0.0f;
                unk_0x20->speed = 0.0f;
                unk_0x20->vec.y = 0.0f;
                unk_0x20->vec.x = 0.0f;
            }
            unk_0x1E = unk_0x1D;

            if (isValidBtn()) {
                if (unk_0x1E == 0) {
                    if (down(REVO_BTN_A) && down(REVO_BTN_B)) {
                        unk_0x1D = 1;
                    }
                } else if (!down(REVO_BTN_A) || !down(REVO_BTN_B)) {
                    unk_0x1D = 0;
                }
            } else {
                unk_0x1D = 0;
            }

            Interface::read();
        }

        bool Revolution::isValidDpd() const {
            if (unk_0x1C != 0) {
                return false;
            }

            return (unk_0x20->wpad_err == 0 || unk_0x20->wpad_err == -7) && unk_0x20->dpd_valid_fg != 0;
        }

        bool Revolution::isValidBtn() const {
            u8 val = unk_0x20->wpad_err;

            return (u8)(val + 7) <= 7 && ((1 << (val + 7)) & 0xA1) != 0;
        }

        int Revolution::down(u32 mButton) const {
            bool ret = false;
            if (isValidBtn()) {
                if (unk_0x20->hold & (mButton & 0xFFFF)) {
                    ret = true;
                }
            }

            return ret;
        }

        // non-matching
        math::VEC2 Revolution::getDpdProjectionPos() const {
            math::VEC2 ret;
            Vec2 dest;
            Vec2 src = {unk_0x20->pos.x, unk_0x20->pos.y};
            nw4r::ut::Rect nw4r_rect;  // constructor shouldn't be inlined
            Rect kpad_rect;

            System::getProjectionRect(&nw4r_rect);

            kpad_rect.left = nw4r_rect.left;
            kpad_rect.top = nw4r_rect.top;
            kpad_rect.right = nw4r_rect.right;
            kpad_rect.bottom = nw4r_rect.bottom;

            KPADGetProjectionPos(&dest, &src, &kpad_rect, 1.10132f);
            if (SCGetAspectRatio() == 1) {
                dest.x *= 1.15f;
                dest.y *= 1.15f;
            }

            // regswap
            if (nw4r_rect.left - 100.0f > dest.x) {
                dest.x = nw4r_rect.left;
            } else if (nw4r_rect.right + 100.0f < dest.x) {
                dest.x = nw4r_rect.right;
            } else if (nw4r_rect.top - 100.0f > dest.y) {
                dest.y = nw4r_rect.top;
            } else if (nw4r_rect.bottom + 100.0f < dest.y) {
                dest.y = nw4r_rect.bottom;
            }
            // //

            ret.set(dest.x, dest.y);  // shouldn't be inlined

            return ret;
        }

        Classic::Classic(int arg0, KPADStatus& arg1) : Revolution(arg0, arg1) {
            unk_0x24.y = 0.01f;
            unk_0x24.x = 0.01f;
            unk_0x2C = 0;
        }

        Base::~Base() {
        }

        Revolution::~Revolution() {
        }

        void Classic::read() {
            if (!Revolution::isValidDpd()) {
                math::VEC2 lstick(unk_0x20->ex_status.cl.lstick.x, unk_0x20->ex_status.cl.lstick.y);

                if (lstick.x * lstick.x + lstick.y * lstick.y > 0.0036f) {
                    unk_0x24.x = math::abs_clamp(unk_0x24.x + unk_0x20->ex_status.cl.lstick.x * 0.05f, 1.8f);
                    unk_0x24.y = math::abs_clamp(unk_0x24.y - unk_0x20->ex_status.cl.lstick.y * 0.05f, 1.2f);
                }

                math::VEC2 rstick = math::VEC2(unk_0x20->ex_status.cl.rstick.x, unk_0x20->ex_status.cl.rstick.y);
                if (getClassicHoldFlag() != 0 || lstick.x * lstick.x + lstick.y * lstick.y > 0.0036f ||
                    rstick.x * rstick.x + rstick.y * rstick.y > 0.0036f) {
                    unk_0x2C = 180;
                }

                if (--unk_0x2C < 0) {
                    unk_0x2C = 0;
                }
            } else {
                unk_0x24.y = 0.01f;
                unk_0x24.x = 0.01f;
                unk_0x2C = 0;
            }

            Revolution::read();
        }

        int Classic::getClassicHoldFlag() const {
            return unk_0x20->ex_status.cl.hold;
        }

        math::VEC2 Classic::getHorizon() const {
            math::VEC2 ret;
            if (Revolution::isValidDpd()) {
                ret.set(unk_0x20->horizon.x, unk_0x20->horizon.y);
                return ret;
            } else {
                return math::VEC2(1.0f, -0.2679492f);
            }
        }

        math::VEC2 Classic::getDpdPos() const {
            math::VEC2 ret;
            if (Revolution::isValidDpd()) {
                ret.set(unk_0x20->pos.x, unk_0x20->pos.y);
                return ret;
            }

            if (unk_0x2C != 0) {
                ret = unk_0x24;
                return ret;
            }
            return math::VEC2(1.0f / 0.0f, 1.0f / 0.0f);
        }
    }  // namespace controller
}  // namespace ipl
