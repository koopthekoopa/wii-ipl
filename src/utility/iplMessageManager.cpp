#include "utility/iplMessageManager.h"

namespace ipl {
    namespace utility {
        BOOL ut_message_base::SendMessage(OSMessage msg, s32 flags) {
            return OSSendMessage(&pMsgQueue, msg, flags) != FALSE;
        }
        
        BOOL ut_message_base::JamMessage(OSMessage msg, s32 flags) {
            return OSJamMessage(&pMsgQueue, msg, flags) != FALSE;
        }
        
        BOOL ut_message_base::ReceiveMessage(OSMessage* pMsg, s32 flags) {
            return OSReceiveMessage(&pMsgQueue, pMsg, flags) != FALSE;
        }
        
        void ut_message_base::InitMessageQueue(OSMessage* pMsg, s32 msgCount) {
            OSInitMessageQueue(&pMsgQueue, pMsg, msgCount);
        }
    }
}


