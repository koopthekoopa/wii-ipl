#include "system/iplWarningHandler.h"

#include "system/iplSystem.h"
#include "system/iplHomeButton.h"
#include "system/iplMessage.h"

namespace ipl {
    WarningHandler::WarningHandler(EGG::Heap* pHeap) :
    mType(NONE),
    mMessageID(0) {
        
        mpDialog = new(pHeap, CLASS_HEAP) DialogWindow(pHeap);
    }

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

    void WarningHandler::calc() {
        mpDialog->calc();
    }

    void WarningHandler::draw() {
        mpDialog->draw();
    }

    BOOL WarningHandler::check() {
        return mpDialog->isActive();
    }
}


