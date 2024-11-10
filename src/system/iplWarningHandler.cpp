#include "system/iplWarningHandler.h"

#include "system/iplSystem.h"
#include "system/iplHomeButton.h"
#include "system/iplMessage.h"

namespace ipl {
    /**
     * @note Address: 0x81356D4C (4.3U)
     * @note Size: 0x64
     */
    WarningHandler::WarningHandler(EGG::Heap* pHeap) :
    mType(NONE),
    mMessageID(0) {
        
        mpDialog = new(pHeap, CLASS_HEAP) DialogWindow(pHeap);
    }

    /**
     * @note Address: 0x81356DB0 (4.3U)
     * @note Size: 0x7C
     */
    void WarningHandler::set(Type type, u32 msgId) {
        mType = type;
        mMessageID = msgId;

        System::getHomeButtonMenu()->disable();

        if (mType != NONE) {
            mpDialog->callBtn1(msgId, MESG_WARN_ACCEPT); // Show dialog with one button
            System::warning_run();
        }

        System::getHomeButtonMenu()->enable();
    }

    /**
     * @note Address: 0x81356E2C (4.3U)
     * @note Size: 0x8
     */
    void WarningHandler::calc() {
        mpDialog->calc();
    }

    /**
     * @note Address: 0x81356E34 (4.3U)
     * @note Size: 0x8
     */
    void WarningHandler::draw() {
        mpDialog->draw();
    }

    /**
     * @note Address: 0x81356E34 (4.3U)
     * @note Size: 0x8
     */
    BOOL WarningHandler::check() {
        return mpDialog->isActive();
    }
}


