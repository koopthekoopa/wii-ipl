#include "system/iplWarningHandler.h"

#include "system/iplSystem.h"
#include "system/iplHomeButton.h"

namespace ipl {
    /**
     * @note Address: 0x81356D4C (4.3U)
     * @note Size: 0x64
     */
    WarningHandler::WarningHandler(EGG::Heap* pHeap)
    : mType(NONE), mMessageID(0) {
        mpDialog = new(pHeap, 4) DialogWindow(pHeap);
    }

    /**
     * @note Address: 0x81356DB0 (4.3U)
     * @note Size: 0x7C
     */
    void WarningHandler::set(Type type, u32 msgId) {
        mType = type;
        mMessageID = msgId;

        System::getArg()->getHomeButton()->disable();

        if (mType != NONE) {
            mpDialog->callBtn1(msgId, 46 /* message ID for "OK" */);
            System::warning_run();
        }

        System::getArg()->getHomeButton()->enable();
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


