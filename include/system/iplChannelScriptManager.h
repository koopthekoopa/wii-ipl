#ifndef IPL_CHANNEL_SCRIPT_MANAGER_H
#define IPL_CHANNEL_SCRIPT_MANAGER_H

#include <revolution.h>

#include <decomp.h>

#include <egg/core.h>

#include "system/iplChannelRsoThread.h"
#include "system/iplNand.h"

#include "channelScript/CHANSVm.h"

namespace ipl {
    namespace channel {
        class ChannelScriptManager {
            public:
                class CSData {
                    private:
                        undefined4  unk_0x00;
                        undefined4  unk_0x04;
                        undefined4  unk_0x08;
                        undefined4  unk_0x0C;
                        undefined4  unk_0x10;
                        undefined4  unk_0x14;
                        undefined   unk_0x18;
                        undefined   unk_0x19;
                        undefined   unk_0x1A;
                        undefined   unk_0x1B;
                        undefined4  unk_0x1C;
                };

                ChannelScriptManager();

                void        create(EGG::ExpHeap* heap);
                BOOL        init(nand::File* file, RsoThread* thread);

                void        calc();

                void        finish();
                void        destroy();

                void        setData(const CSData& data);

                static void calcCSThread();
            
            private:
                enum {
                    CHANS_VM_STATE_CREATE = 0,
                    CHANS_VM_STATE_UNK1 = 1,
                    CHANS_VM_STATE_UNK2 = 1,
                    CHANS_VM_STATE_UNK3 = 1,
                    CHANS_VM_STATE_UNK4 = 1,
                };

                u8*                 mpChansWork;    // 0x00
                EGG::ExpHeap*       mpHeap;

                CSData              mCSData;        // 0x08
                u32                 unk_0x28[2];
                OSMessage           unk_0x30;
                OSMessage           unk_0x34;

                static int          smCSState;
                static RsoThread*   smpThread;
                static CHANSVm      smCSVm;
        };
    }
}

#endif // IPL_CHANNEL_SCRIPT_MANAGER_H


