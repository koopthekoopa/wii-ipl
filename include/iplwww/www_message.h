#ifndef IPL_WWW_MESSAGE_H
#define IPL_WWW_MESSAGE_H

#include <decomp.h>

#include <revolution.h>

#include <string.h>

namespace ext_ead {
    namespace www {
        // fakematch?
        inline void ut_message_cmd_printerr_() {
            OSReport("ERROR?\n");
        }

        class ut_message_base {
        public:
            virtual ~ut_message_base() {}
            virtual BOOL SendMessage(OSMessage msg, s32 flags);
            virtual BOOL JamMessage(OSMessage msg, s32 flags);
            virtual BOOL ReceiveMessage(OSMessage* pMsg, s32 flags);
            virtual void InitMessageQueue(OSMessage* pMsg, s32 msgCount);

        private:
            OSMessageQueue mpMsgQueue;  // 0x04
        };

        template <typename T, u32 COUNT>
        class ut_message_cmd : public ut_message_base {
        public:
            struct BufferEntry {
                u32 taken;
                T value;
            };

            ut_message_cmd() {
                InitMessageQueue(mMessageArr, COUNT);
                memset(mBuffer, 0, COUNT * sizeof(T));
            }

            inline bool SendTypedMessage(T* data) {
                int i;
                BOOL level;

                bool received;
                BufferEntry* currPtr;

                received = false;
                level = OSDisableInterrupts();
                currPtr = mBuffer;
                for (i = 0; i < 8; i++, currPtr++) {
                    if (currPtr->taken == 0)
                        break;
                }

                if (i != 8) {
                    currPtr->taken = -1;
                    currPtr->value = *data;
                    SendMessage(currPtr, 0);
                    received = true;
                }
                OSRestoreInterrupts(level);

                return received;
            }
            inline bool TryReceiveTypedMessage(T* data) {
                BOOL level;
                OSMessage msg;
                BufferEntry* entry;
                bool received = false;

                level = OSDisableInterrupts();
                if (ReceiveMessage(&msg, 0)) {
                    entry = (BufferEntry*)msg;
                    if (entry->taken != -1) {
                        ut_message_cmd_printerr_();
                    }
                    *data = entry->value;
                    memset(entry, 0, sizeof(BufferEntry));
                    received = true;
                }
                OSRestoreInterrupts(level);
                return received;
            }

        private:
            BufferEntry mBuffer[COUNT];    // 0x24
            OSMessage mMessageArr[COUNT];  // 0x24 + (sizeof(T) + 4) * COUNT
        };
    }  // namespace www
}  // namespace ext_ead

#endif  // IPL_MESSAGE_BASE_H
