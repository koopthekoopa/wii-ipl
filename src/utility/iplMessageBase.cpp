#include "utility/iplMessageBase.h"

namespace ipl {
    namespace utility {
        BOOL ut_message_base::SendMessage(OSMessage msg, s32 flags) {
            return OSSendMessage(&mpMsgQueue, msg, flags) != FALSE;
        }

        BOOL ut_message_base::JamMessage(OSMessage msg, s32 flags) {
            return OSJamMessage(&mpMsgQueue, msg, flags) != FALSE;
        }

        BOOL ut_message_base::ReceiveMessage(OSMessage* pMsg, s32 flags) {
            return OSReceiveMessage(&mpMsgQueue, pMsg, flags) != FALSE;
        }

        void ut_message_base::InitMessageQueue(OSMessage* pMsg, s32 msgCount) {
            OSInitMessageQueue(&mpMsgQueue, pMsg, msgCount);
        }
    }
}


