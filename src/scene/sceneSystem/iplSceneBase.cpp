#include "scene/iplSceneBase.h"

namespace ipl {
    namespace scene {
        Base::Base(EGG::Heap* heap) :
        mheap(heap),
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
            if ((getChild() == NULL || (mFlags & 1)) && !(unk_0x2C & 2)) {
                calc();
            }
        }

        void Base::do_draw() {
            if ((getChild() == NULL || (mFlags & 2)) && !(unk_0x2C & 2)) {
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
            command.mUnk0Scene = sceneId;
            command.mParent = parent;
            command.mChild = child;
            command.mArgs = arg;

            System::getSceneManager()->pushCommand(command);
        }

        void Base::reserveSceneChange(int sceneId, void* arg) {
            Command command;

            command.clear();
            command.mType = COMMAND_RESERVE_CHANGE;
            command.mUnk0Scene = sceneId;
            command.mNandToken = mNandToken;
            command.mParent = (Base*)getParent();
            command.mChild = (Base*)getNext();
            command.mArgs = arg;

            System::getSceneManager()->pushCommand(command);
        }

        void Base::reserveAllSceneDestruction(int sceneId, void* arg) {
            mCommand.mType = COMMAND_RESERVE_ALL_DESTRUCT;
            mCommand.mUnk0Scene = SCENE_ROOT;
            mCommand.mUnk1Scene = sceneId;
            mCommand.mArgs = arg;

            System::getSceneManager()->setDestructSync();
        }
    }
}


