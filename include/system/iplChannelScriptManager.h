#ifndef IPL_CHANNEL_SCRIPT_MANAGER_H
#define IPL_CHANNEL_SCRIPT_MANAGER_H

#include <revolution.h>

#include <decomp.h>

#include <egg/core.h>

#include "system/iplChannelRsoThread.h"
#include "system/iplNand.h"

#include "layout/iplLayout.h"

#include "channelScript/CHANSVm.h"

namespace ipl {
    namespace channel {
        class ChannelScriptManager {
        public:
            typedef struct CSData {
                EGG::ExpHeap* heap;        // 0x00
                layout::Object* layout;    // 0x04
                layout::Animator** anims;  // 0x08
                u64 titleId;               // 0x10
                bool threadTerminated;     // 0x18
                bool unk_0x19;
                bool unk_0x1A;
            } CSData;

            ChannelScriptManager();

            void create(EGG::ExpHeap* heap);
            BOOL init(nand::File* file, RsoThread* thread);

            void calc();

            void finish();
            void destroy();

            void setData(const CSData& data);

            static void calcCSThread();

            CSData& getData() { return mCSData; }
            EGG::Heap* getHeap() { return mpHeap; }

        private:
            enum {
                CHANS_VM_STATE_CREATE = 0,
                CHANS_VM_STATE_UNK1 = 1,
                CHANS_VM_STATE_UNK2 = 2,
                CHANS_VM_STATE_UNK3 = 3,
                CHANS_VM_STATE_UNK4 = 4,
            };

            u8* mpChansWork;  // 0x00
            EGG::ExpHeap* mpHeap;

            CSData mCSData;  // 0x08
            u32 unk_0x28[2];
            OSMessage unk_0x30;
            OSMessage unk_0x34;

            static int smCSState;
            static RsoThread* smpThread;
            static CHANSVm smCSVm;
        };
    }  // namespace channel
}  // namespace ipl

#endif  // IPL_CHANNEL_SCRIPT_MANAGER_H
