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
                virtual int         unk_0x1C();
                virtual int         unk_0x20();
                virtual int         unk_0x24();
                virtual int         unk_0x28();
                virtual int         unk_0x2C();
                virtual int         unk_0x30();
                virtual int         unk_0x34();
                virtual int         unk_0x38();
                virtual int         unk_0x3C();
                virtual int         unk_0x40();
                virtual int         unk_0x44();
                virtual int         unk_0x48();
                virtual int         unk_0x4C();
                virtual int         unk_0x50();
                virtual int         unk_0x54();
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
                virtual int         unk_0x6C();
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


