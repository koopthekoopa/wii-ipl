#include "scene/iplSceneBase.h"

namespace ipl {
    namespace scene {
        Base::Base(EGG::Heap* pHeap) :
        mpHeap(pHeap),
        unk_0x28(0), 
        unk_0x2C(0), 
        mNandToken(0), 
        unk_0x34(0) {

            mCommand.clear();
        }

        Base::~Base() {}

        void Base::do_prepare() {
            prepare();
            System::getNandManager()->sendToken(mNandToken);
        }

        void Base::do_create() {
            create();
            unk_0x2C |= 1;
        }

        void Base::do_calc() {
            if ((getNext() == NULL || (unk_0x28 & 1)) && !(unk_0x2C & 2)) {
                calc();
            }
        }

        void Base::do_draw() {
            if ((getNext() == NULL || (unk_0x28 & 2)) && !(unk_0x2C & 2)) {
                draw();
            }
        }

        void Base::do_destroy() {
            destroy();
            if (mCommand.unk_0x00 != 0) {
                System::getSceneManager()->pushCommand(mCommand);
                mCommand.clear();
            }
        }

        void Base::createChildScene(int arg0, Base* pArg1, Base* pArg2, void* pArg3) {
            Command command;

            command.clear();
            command.unk_0x00 = 1;
            command.unk_0x04 = arg0;
            command.unk_0x10 = pArg1;
            command.unk_0x14 = pArg2;
            command.unk_0x18 = pArg3;

            System::getSceneManager()->pushCommand(command);
        }

        void Base::reserveSceneChange(int arg0, void* pArg1) {
            Command command;

            command.clear();
            command.unk_0x00 = 2;
            command.unk_0x04 = arg0;
            command.unk_0x08 = mNandToken;
            command.unk_0x10 = (Base*)getPrev();
            command.unk_0x14 = (Base*)getChild();
            command.unk_0x18 = pArg1;

            System::getSceneManager()->pushCommand(command);
        }

        void Base::reserveAllSceneDestruction(int arg0, void* pArg1) {
            mCommand.unk_0x00 = 3;
            mCommand.unk_0x04 = 1;
            mCommand.unk_0x0C = arg0;
            mCommand.unk_0x18 = pArg1;

            System::getSceneManager()->setDestructSync();
        }
    }
}


