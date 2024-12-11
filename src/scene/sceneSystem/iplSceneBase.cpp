#include "scene/iplSceneBase.h"

namespace ipl {
    namespace scene {
        Base::Base(EGG::Heap* pHeap) :
        mpHeap(pHeap),
        mFlags(0), 
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
            if ((getNext() == NULL || (mFlags & 1)) && !(unk_0x2C & 2)) {
                calc();
            }
        }

        void Base::do_draw() {
            if ((getNext() == NULL || (mFlags & 2)) && !(unk_0x2C & 2)) {
                draw();
            }
        }

        void Base::do_destroy() {
            destroy();
            if (mCommand.mType != COMMAND_NONE) {
                System::getSceneManager()->pushCommand(mCommand);
                mCommand.clear();
            }
        }

        void Base::createChildScene(int sceneId, Base* parent, Base* child, void* arg) {
            Command command;

            command.clear();
            command.mType = COMMAND_CREATE_CHILD;
            command.mNextScene = sceneId;
            command.mParent = parent;
            command.mChild = child;
            command.mArgs = arg;

            System::getSceneManager()->pushCommand(command);
        }

        void Base::reserveSceneChange(int sceneId, void* arg) {
            Command command;

            command.clear();
            command.mType = COMMAND_RESERVE_CHANGE;
            command.mNextScene = sceneId;
            command.mNandToken = mNandToken;
            command.mParent = (Base*)getPrev();
            command.mChild = (Base*)getChild();
            command.mArgs = arg;

            System::getSceneManager()->pushCommand(command);
        }

        void Base::reserveAllSceneDestruction(int newSceneId, void* arg) {
            mCommand.mType = COMMAND_RESERVE_ALL_DESTRUCT;
            mCommand.mNextScene = SCENE_ROOT;
            mCommand.mNewScene = newSceneId;
            mCommand.mArgs = arg;

            System::getSceneManager()->setDestructSync();
        }
    }
}


