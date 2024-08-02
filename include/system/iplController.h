#ifndef IPL_CONTROLLER_H
#define IPL_CONTROLLER_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/wpad.h>

#include <egg/core.h>

#include "utility/iplMath.h"

namespace ipl {
    namespace controller {
        class Interface {
            public:
                Interface();

                virtual int         unk_0x08();
                virtual int         unk_0x0C();
                virtual int         unk_0x10();
                virtual int         unk_0x14();
                virtual int         unk_0x18();
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
                virtual math::VEC2  getIRPos() const;
                virtual math::VEC2  getHorizon() const;
                virtual int         unk_0x60();
                virtual int         unk_0x64();
                virtual int         unk_0x68();
                virtual int         unk_0x6C();
                virtual bool        Active() const;
        };
    }
}

#endif // IPL_CONTROLLER_H


