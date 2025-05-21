#include "system/iplWarningHandler.h"

#include "iplSystem.h"

namespace ipl {
    WarningHandler::WarningHandler(EGG::Heap* heap) :
    mType(NONE),
    mMessageID(0) {
        mpDialog = new(heap, CLASS_HEAP) DialogWindow(heap);
    }

    void WarningHandler::set(Type type, u32 msgId) {
        mType = type;
        mMessageID = msgId;

        System::getHomeButtonMenu()->disable();

        if (mType != NONE) {
            mpDialog->callBtn1(msgId, MESG_WARN_ACCEPT);
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
        return mpDialog->getLastResult() /* == DialogWindow::RESULT_WAIT */;
    }
}
