#include "scene/iplSceneBase.h"

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        Base::Base(EGG::Heap* heap) : mpHeap(heap), mParentFlags(0), mScnState(0), mSceneID(0), mPrevSceneID(0), mCommand() {
        }

        Base::~Base() {
        }

        void Base::do_prepare() {
            prepare();
            System::getNandManager()->sendToken(mSceneID);
        }

        void Base::do_create() {
            create();
            mScnState |= SCN_STATE_CREATED;
        }

        void Base::do_calc() {
            if ((getChild() == NULL || (mParentFlags & SCN_PARENTFLAG_CALC)) && !(mScnState & SCN_STATE_DESTROY_REQ)) {
                calc();
            }
        }

        void Base::do_draw() {
            if ((getChild() == NULL || (mParentFlags & SCN_PARENTFLAG_DRAW)) && !(mScnState & SCN_STATE_DESTROY_REQ)) {
                draw();
            }
        }

        void Base::do_destroy() {
            destroy();
            if (mCommand.data.type != COMMAND_NONE) {
                System::getSceneManager()->pushCommand(mCommand);
                mCommand.clear();
            }
        }

        void Base::createChildScene(int sceneId, Base* parent, Base* child, void* args) {
            Command command;

            command.data.type = COMMAND_CREATE_CHILD;
            command.data.newSceneID = sceneId;
            command.data.parent = parent;
            command.data.child = child;
            command.data.args = args;

            System::getSceneManager()->pushCommand(command);
        }

        void Base::reserveSceneChange(int sceneId, void* args) {
            Command command;

            command.data.type = COMMAND_RESERVE_CHANGE;
            command.data.newSceneID = sceneId;
            command.data.prevSceneID = mSceneID;
            command.data.parent = getParent();
            command.data.child = getNext();
            command.data.args = args;

            System::getSceneManager()->pushCommand(command);
        }

        void Base::reserveAllSceneDestruction(int sceneId, void* args) {
            mCommand.data.type = COMMAND_RESERVE_ALL_DESTRUCT;
            mCommand.data.newSceneID = SCENE_ROOT;
            mCommand.data.newRootID = sceneId;
            mCommand.data.args = args;

            System::getSceneManager()->setDestructSync();
        }
    }  // namespace scene
}  // namespace ipl
