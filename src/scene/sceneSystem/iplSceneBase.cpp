#include "scene/iplSceneBase.h"

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        Base::Base(EGG::Heap* heap) :
        mpHeap(heap),
        mParentFlags(0), 
        mScnState(0), 
        mSceneID(0), 
        mPrevSceneID(0),
        mCommand() {}

        Base::~Base() {}

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
            if (mCommand.type != COMMAND_NONE) {
                System::getSceneManager()->pushCommand(mCommand);
                mCommand.clear();
            }
        }

        void Base::createChildScene(int sceneId, Base* parent, Base* child, void* args) {
            Command command;

            command.type            = COMMAND_CREATE_CHILD;
            command.newSceneID      = sceneId;
            command.parent          = parent;
            command.child           = child;
            command.args            = args;

            System::getSceneManager()->pushCommand(command);
        }

        void Base::reserveSceneChange(int sceneId, void* args) {
            Command command;

            command.type            = COMMAND_RESERVE_CHANGE;
            command.newSceneID      = sceneId;
            command.prevSceneID     = mSceneID;
            command.parent          = getParent();
            command.child           = getNext();
            command.args            = args;

            System::getSceneManager()->pushCommand(command);
        }

        void Base::reserveAllSceneDestruction(int sceneId, void* args) {
            mCommand.type           = COMMAND_RESERVE_ALL_DESTRUCT;
            mCommand.newSceneID     = SCENE_ROOT;
            mCommand.newRootID      = sceneId;
            mCommand.args           = args;

            System::getSceneManager()->setDestructSync();
        }
    }
}
