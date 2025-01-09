#ifndef IPL_CONTROLLER_H
#define IPL_CONTROLLER_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/wpad.h>

#include <egg/core.h>

#include "iplMath.h"

namespace ipl {
    namespace controller {
        class Manager {
            public:
                Manager();
        };
        
        class Interface {
            public:
                Interface();

                virtual             ~Interface();                   // 0x08
                virtual int         getType() const;                // 0x0C
                virtual int         getChannel() const;             // 0x10
                virtual int         down(u32 button) const;         // 0x14
                virtual int         downTrg(u32 button) const;      // 0x18
                virtual int         upTrg(u32 button) const;        // 0x1C
                virtual int         pinch() const;                  // 0x20
                virtual int         pinchTrg(); const               // 0x24
                virtual int         pinchOffTrg() const;            // 0x28
                virtual int         decide() const;                 // 0x2C
                virtual int         repeat(u32 button) const;       // 0x30
                virtual int         rumble(int timer) const;        // 0x34
                virtual void        cancelRumbling();               // 0x38
                virtual int         getHoldFlag() const;            // 0x3C
                virtual int         getTrigFlag() const;            // 0x40
                virtual int         getReleaseFlag() const;         // 0x44
                virtual int         getClassicHoldFlag() const;     // 0x48
                virtual int         getClassicTrigFlag() const;     // 0x4C
                virtual int         getClassicReleaseFlag() const;  // 0x50
                virtual math::VEC2  getDpdPos() const;              // 0x54
                /**
                 * @brief Gets the IR sensor position of the Wii Remote.
                 * @return The IR sensor X and Y as `ipl::math::VEC2`.
                 */
                virtual math::VEC2  getDpdProjectionPos() const;    // 0x58
                /**
                 * @brief Gets the Horizon of the Wii Remote.
                 * @return The Horizon X and Y as `ipl::math::VEC2`.
                 */
                virtual math::VEC2  getHorizon() const;             // 0x5C
                virtual int         unk_0x60();
                virtual int         unk_0x64();
                virtual int         unk_0x68();
                virtual bool        isValidBtn() const;             // 0x6C
                /**
                 * @brief If the Wii Remote is pointing to the IR sensor bar.
                 * @return Whether it is pointing or not.
                 */
                virtual bool        isValidDpd() const;             // 0x70
            
            private:
                u8 dummyData[32];
        };
    }
}

#endif // IPL_CONTROLLER_H


