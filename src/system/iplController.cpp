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

const f32 lbl_8160D2C0[] = { 0.2, 0.3, 0, 0 };

namespace ipl {
    namespace controller {

        void Base::read() {
            if (this->isValidBtn()) {
                if (this->downTrg(BTN_INTERACT)) {
                    this->mButton = 1;
                }
                if (this->pinch()) {
                    this->mButton = 0;
                }
                if (this->mButton != 0) {
                    if (this->down(BTN_INTERACT)) {
                        this->mUnk8++;
                    } else {
                        this->mUnk8 = 0;
                        this->mButton = 0;
                    }
                } else {
                    this->mUnk8 = 0;
                }
            } else {
                this->mButton = 0;
                this->mUnk8 = 0;
            }

            switch (this->mRumbleType) {
                case 0:
                case 1: {
                    u32 time = (OSGetTick() - this->mLastRumbleTime) / ((__OSBusClock >> 2) / 1000);
                    float f1 = (float)time / 1000.0f;
                    if (f1 < 7.0f / 120.0f) {
                        WPADControlMotor(this->mChan, 0x1);
                    } else if (f1 < lbl_8160D2C0[this->mRumbleType]) {
                        WPADControlMotor(this->mChan, 0x0);
                    } else if (this->getKPADStatus() == NULL || this->getKPADStatus()->wpad_err == 0) {
                        this->mLastRumbleTime = 0;
                        this->mRumbleType = -1;
                        WPADControlMotor(this->mChan, 0x0);
                    }
                    if (this->downTrg(BTN_INTERACT) != 0 || this->decide() != 0) {
                        WPADControlMotor(this->mChan, 0x0);
                        this->mRumbleType = 2;
                    }
                    break;
                } case 2: {
                    u32 time = (OSGetTick() - this->mLastRumbleTime) / ((__OSBusClock >> 2) / 1000);
                    float f1 = (float)time / 1000.0f;
                    if (f1 < lbl_8160D2C0[1]) {
                        WPADControlMotor(this->mChan, 0x0);
                    } else if (this->getKPADStatus() == NULL || this->getKPADStatus()->wpad_err == 0) {
                        this->mLastRumbleTime = 0;
                        this->mRumbleType = -1;
                        WPADControlMotor(this->mChan, 0x0);
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
            return (unsigned int)__cntlzw(this->mUnk8 - 5) >> 5;
        }

        int Base::rumble(int type) {
            int ret = 0;
            if (WPADIsMotorEnabled() && this->mRumbleType == -1) {
                this->mLastRumbleTime = OSGetTick();
                ret = 1;
                this->mRumbleType = type;
            }

            return ret;
        }

        void Base::cancelRumbling() {
            if (this->mRumbleType != -1) {
                WPADControlMotor(this->mChan, 0x0);
            }
            this->mLastRumbleTime = 0;
            this->mRumbleType = -1;
        }

        void Revolution::read() {
            if (!this->isValidDpd()) {
                this->mUnk20->pos.y = 1.0f / 0.0f;
                this->mUnk20->pos.x = 1.0f / 0.0f;
                this->mUnk20->speed = 0.0f;
                this->mUnk20->vec.y = 0.0f;
                this->mUnk20->vec.x = 0.0f;
            }
            this->mUnk1E = this->mUnk1D;

            if (this->isValidBtn()) {
                if (this->mUnk1E == 0) {
                    if (this->down(REVO_BTN_A) && this->down(REVO_BTN_B)) {
                        this->mUnk1D = 1;
                    }
                } else if (!this->down(REVO_BTN_A) || !this->down(REVO_BTN_B)) {
                    this->mUnk1D = 0;
                }
            } else {
                this->mUnk1D = 0;
            }

            Interface::read();
        }

        bool Revolution::isValidDpd() const {
            if (this->mUnk1C != 0) {
                return false;
            }

            return (this->mUnk20->wpad_err == 0 || this->mUnk20->wpad_err == -7) && this->mUnk20->dpd_valid_fg != 0;
        }

        bool Revolution::isValidBtn() const {
            u8 val = this->mUnk20->wpad_err;

            return (u8)(val + 7) <= 7 && ((1 << (val + 7)) & 0xA1) != 0;
        }

        int Revolution::down(u32 mButton) const {
            bool ret = false;
            if (this->isValidBtn()) {
                if (this->mUnk20->hold & (mButton & 0xFFFF)) {
                    ret = true;
                }
            }

            return ret;
        }

        // non-matching
        math::VEC2 Revolution::getDpdProjectionPos() const {
            math::VEC2 ret;
            Vec2 dest;
            Vec2 src = { this->mUnk20->pos.x, this->mUnk20->pos.y };
            nw4r::ut::Rect nw4r_rect; // constructor shouldn't be inlined
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

            ret.set(dest.x, dest.y); // shouldn't be inlined

            return ret;
        }

        Classic::Classic(int arg0, KPADStatus &arg1) : Revolution(arg0, arg1) {
            this->unk24.y = 0.01f;
            this->unk24.x = 0.01f;
            this->unk2C = 0;
        }

        Base::~Base() {}

        Revolution::~Revolution() {}

        void Classic::read() {
            if (!Revolution::isValidDpd()) {
                math::VEC2 lstick(this->mUnk20->ex_status.cl.lstick.x, this->mUnk20->ex_status.cl.lstick.y);

                if (lstick.x * lstick.x + lstick.y * lstick.y > 0.0036f) {
                    this->unk24.x = math::abs_clamp(this->unk24.x + this->mUnk20->ex_status.cl.lstick.x * 0.05f, 1.8f);
                    this->unk24.y = math::abs_clamp(this->unk24.y - this->mUnk20->ex_status.cl.lstick.y * 0.05f, 1.2f);
                }

                math::VEC2 rstick = math::VEC2(this->mUnk20->ex_status.cl.rstick.x, this->mUnk20->ex_status.cl.rstick.y);
                if (this->getClassicHoldFlag() != 0 || lstick.x * lstick.x + lstick.y * lstick.y > 0.0036f || rstick.x * rstick.x + rstick.y * rstick.y > 0.0036f) {
                    this->unk2C = 180;
                }

                if (--this->unk2C < 0) {
                    this->unk2C = 0;
                }
            } else {
                this->unk24.y = 0.01f;
                this->unk24.x = 0.01f;
                this->unk2C = 0;
            }

            Revolution::read();
        }

        int Classic::getClassicHoldFlag() const {
            return this->mUnk20->ex_status.cl.hold;
        }

        math::VEC2 Classic::getHorizon() const {
            math::VEC2 ret;
            if (Revolution::isValidDpd()) {
                ret.set(this->mUnk20->horizon.x, this->mUnk20->horizon.y);
                return ret;
            } else {
                return math::VEC2(1.0f, -0.2679492f);
            }
        }

        math::VEC2 Classic::getDpdPos() const {
            math::VEC2 ret;
            if (Revolution::isValidDpd()) {
                ret.set(this->mUnk20->pos.x, this->mUnk20->pos.y);
                return ret;
            }

            if (this->unk2C != 0) {
                ret = this->unk24;
                return ret;
            }
            return math::VEC2(1.0f / 0.0f, 1.0f / 0.0f);
        }
    }
}
