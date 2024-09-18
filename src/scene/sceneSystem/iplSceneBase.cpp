#include "scene/iplSceneBase.h"

#include "system/iplSystem.h"

namespace ipl {
    namespace scene {
        /**
         * @note Address: 0x81409BEC
         * @note Size: 0x78
         */
        Base::Base(EGG::Heap* pHeap) :
        mpHeap(pHeap),
        unk_0x28(0), 
        unk_0x2C(0), 
        mNandToken(0), 
        unk_0x34(0) {

            mCommand.clear();
        }

        /**
         * @note Address: 0x81409C64
         * @note Size: 0x5C
         */
        Base::~Base() {}

        /**
         * @note Address: 0x81409CC0
         * @note Size: 0x4C
         */
        void Base::do_prepare() {
            prepare();
            System::getNand()->sendToken(mNandToken);
        }

        /**
         * @note Address: 0x81409D0C
         * @note Size: 0x44
         */
        void Base::do_create() {
            create();
            unk_0x2C |= 1;
        }

        /**
         * @note Address: 0x81409D50
         * @note Size: 0x6C
         */
        void Base::do_calc() {
            if ((getNext() == NULL || (unk_0x28 & 1)) && !(unk_0x2C & 2)) {
                calc();
            }
        }

        /**
         * @note Address: 0x81409DBC
         * @note Size: 0x6C
         */
        void Base::do_draw() {
            if ((getNext() == NULL || (unk_0x28 & 2)) && !(unk_0x2C & 2)) {
                draw();
            }
        }

        /**
         * @note Address: 0x81409E28
         * @note Size: 0x60
         */
        void Base::do_destroy() {
            destroy();
            if (mCommand.unk_0x00 != 0) {
                System::getSceneMgr()->pushCommand(&mCommand);
                mCommand.clear();
            }
        }

        /**
         * @note Address: 0x81409E88
         * @note Size: 0x70
         */
        void Base::createChildScene(int arg0, Base* pArg1, Base* pArg2, void* pArg3) {
            Command command;

            command.clear();
            command.unk_0x00 = 1;
            command.unk_0x04 = arg0;
            command.unk_0x10 = pArg1;
            command.unk_0x14 = pArg2;
            command.unk_0x18 = pArg3;

            System::getSceneMgr()->pushCommand(&command);
        }

        /**
         * @note Address: 0x81409EF8
         * @note Size: 0x9C
         */
        void Base::reserveSceneChange(int arg0, void* pArg1) {
            Command command;

            command.clear();
            command.unk_0x00 = 2;
            command.unk_0x04 = arg0;
            command.unk_0x08 = mNandToken;
            command.unk_0x10 = (Base*)getPrev();
            command.unk_0x14 = (Base*)getChild();
            command.unk_0x18 = pArg1;

            System::getSceneMgr()->pushCommand(&command);
        }

        /**
         * @note Address: 0x81409F94
         * @note Size: 0x28
         */
        void Base::reserveAllSceneDestruction(int arg0, void* pArg1) {
            mCommand.unk_0x00 = 3;
            mCommand.unk_0x04 = 1;
            mCommand.unk_0x0C = arg0;
            mCommand.unk_0x18 = pArg1;

            System::getSceneMgr()->setDestructSync();
        }
    }
}

