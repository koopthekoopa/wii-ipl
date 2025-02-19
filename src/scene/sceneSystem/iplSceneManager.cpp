#include "scene/iplSceneManager.h"

#include "scene/iplRootScene.h"

#include <cstring>

namespace ipl {
    namespace scene {
        void Command::clear() {
            memset(this, 0, sizeof(Command));
            type = 0;
            newRootID = 0;
            prevSceneID = 0;
            newSceneID = 0;
        }

        Manager::Manager(EGG::Heap* heap) :
        mpRootScene(NULL),
        mCommands(),
        mpReservedScene(NULL),
        mReservedCommand(),
        mbCreatedReserved(false),
        mbDestroySyncTask(false) {
            // Setup ze heaps.
            mpBigSceneHeap = EGG::UnitHeap::create(EGG::UnitHeap::calcHeapSize(SCENE_BIG_SIZE,    3, 4), SCENE_BIG_SIZE,    heap, 4, 2);
            mpMdmSceneHeap = EGG::UnitHeap::create(EGG::UnitHeap::calcHeapSize(SCENE_MEDIUM_SIZE, 4, 4), SCENE_MEDIUM_SIZE, heap, 4, 2);
            mpSmlSceneHeap = EGG::UnitHeap::create(EGG::UnitHeap::calcHeapSize(SCENE_SMALL_SIZE,  6, 4), SCENE_SMALL_SIZE,  heap, 4, 2);
        }

        void Manager::init() {
            int initialScene = 0;
            int initialSubScene = 0;
            RootScene::proc_boot_scene(&initialScene, &initialSubScene);

            mPrevRootSceneID = 0;
            mRootSceneID = initialScene;
            createRootScene(initialScene, (void*)initialSubScene);
        }

        void Manager::createRootScene(int sceneId, void* args) {
            mpRootScene = (RootScene*)createScene(SCENE_ROOT, (void*)sceneId);
            static_cast<RootScene*>(mpRootScene)->mInitialArgs = args;

            System::setCurrentHeap(mpRootScene->mpHeap);
            mpRootScene->do_create();
            
            System::getMem1Root()->becomeCurrentHeap();
        }

        void Manager::calc() {
            calc(mpRootScene);
            
            if (mpReservedScene) {
                if (mbCreatedReserved) {
                    attachReservedScene();
                }
            }
            else {
                if (mCommands.get_current_index() != 0) {
                    const Command& popped = mCommands.get_popped_item();
                    switch (popped.type) {
                        case COMMAND_CREATE_CHILD: {
                            createScene(popped);
                            mbCreatedReserved = true;
                            mCommands.pop();
                            break;
                        }
                        case COMMAND_RESERVE_CHANGE: {
                            createScene(popped);
                            mCommands.pop();
                            break;
                        }
                        case COMMAND_RESERVE_ALL_DESTRUCT: {
                            if (mbDestroySyncTask) {
                                mPrevRootSceneID = mRootSceneID;
                                mRootSceneID = popped.newRootID;

                                destroyScene(mpRootScene);

                                System::reinit();

                                createRootScene(popped.newRootID, popped.args);
                                mCommands.pop();

                                mbDestroySyncTask = false;
                            }
                            break;
                        }
                    }
                }
            }
            detach(mpRootScene);
        }

        void Manager::calc(SceneObj* scene) {
            for (SceneObj::iterator it = SceneObj::iterator(scene); it.getPtr(); ++it) {
                it->do_calc();
            }
        }

        void Manager::draw() {
            mDrawMode = DRAW_LAYER_1;
            while (mDrawMode < DRAW_LAYER_MAX) {
                draw(mpRootScene);
                mDrawMode++;
            }
        }

        void Manager::draw(SceneObj* scene) {
            for (SceneObj::iterator it = SceneObj::iterator(scene); it.getPtr() != NULL; ++it) {
                it->do_draw();
            }
        }

        BOOL Manager::isResetAcceptable() {
            if (!mpRootScene) {
                return TRUE;
            }
            else {
                for (SceneObj::iterator it = SceneObj::iterator(mpRootScene); it.getPtr() != NULL; ++it) {
                    if (it->isResetAcceptable() == FALSE) {
                        return FALSE;
                    }
                }
            }
            return TRUE;
        }

        void Manager::startResetting() {
            if (mpRootScene) {
                for (SceneObj::iterator it = SceneObj::iterator(mpRootScene); it.getPtr() != NULL; ++it) {
                    it->startResetting();
                }
            }
        }

        BOOL Manager::isResetProcessDone() {
            if (!mpRootScene) {
                return TRUE;
            } else {
                for (SceneObj::iterator it = SceneObj::iterator(mpRootScene); it.getPtr() != NULL; ++it) {
                    if (it->isResetProcessDone() == FALSE) {
                        return FALSE;
                    }
                }
            }
            return TRUE;
        }

        void Manager::detach(SceneObj* scene) {
            SceneObj::reverse_iterator stack10 = SceneObj::reverse_iterator(scene);
            SceneObj::reverse_iterator stack18 = SceneObj::reverse_iterator(scene);
            while (stack10.getPtr()) {
                if (stack18->getPrev()) {
                    stack18.setPtr(stack18->getPrev());
                    stack18.reverse();
                }
                else {
                    stack18.setPtr(stack18->getParent());
                }
                if ((stack10->unk_0x2C & 2) != 0) {
                    if (mReservedCommand.prevSceneID == stack10->mSceneID) {
                        mbCreatedReserved = true;
                    }
                    destroyScene(&*stack10);
                }
                stack10.setPtr(&*stack18);
            }
        }

        void Manager::createScene(const Command& command) {
            mpReservedScene = createScene(command.newSceneID, command.prevSceneID, command.args);
            mReservedCommand = command;
            mbCreatedReserved = false;
            mpReservedScene->do_prepare();
            
            System::getMem1Root()->becomeCurrentHeap();
        }

        SceneObj* Manager::createScene(int sceneId, int prevSceneId, void* args) {
            EGG::Heap*  heap = NULL;
            int         size = Creator::size(sceneId);

            SceneObj*   scene = NULL;

            switch (size) {
                case SCENE_BIG_SIZE: {
                    heap = mpBigSceneHeap;
                    break;
                }
                case SCENE_MEDIUM_SIZE: {
                    heap = mpMdmSceneHeap;
                    break;
                }
                case SCENE_SMALL_SIZE: {
                    heap = mpSmlSceneHeap;
                    break;
                }
            }

            heap = EGG::FrmHeap::create(size, heap, 2);
            System::setCurrentHeap(heap);

            scene = Creator::create(sceneId, heap, args);
            scene->mSceneID = sceneId;
            scene->mPrevSceneID = prevSceneId;

            return scene;
        }

        void destruct_sync_task_(void* work) {
            static_cast<Manager*>(work)->doDestructSync();
        }

        void Manager::setDestructSync() {
            mbDestroySyncTask = false;
            System::getTask()->request(destruct_sync_task_, this, NULL);
        }

        void Manager::destroyScene(SceneObj* scene) {
            while (scene->getChild()) {
                destroyScene(scene->getChild());
            }

            scene->do_destroy();
            scene->detach();
            scene->mpHeap->destroy();
        }

        void Manager::attachReservedScene() {
            if (isReady(mReservedCommand.newSceneID) || mpReservedScene && mpReservedScene->isReady()) {
                SceneObj* scene = mReservedCommand.parent;
                if (!scene) {
                    scene = mpRootScene;
                }

                if (mReservedCommand.child) {
                    scene->insert(mpReservedScene, mReservedCommand.child);
                }
                else {
                    scene->attach(mpReservedScene);
                }

                System::setCurrentHeap(mpReservedScene->mpHeap);
                mpReservedScene->do_create();

                System::getMem1Root()->becomeCurrentHeap();

                mpReservedScene = NULL;
                mReservedCommand.clear();
                mbCreatedReserved = false;
            }
        }

        BOOL Manager::pushCommand(const Command& command) {
            return mCommands.push(command);
        }

        BOOL Manager::isReady(int sceneId) {
            BOOL result = FALSE;
            int  gotID = 0;
            if (System::getNandManager()->receiveToken(&gotID) && sceneId == gotID) {
                result = TRUE;
            }
            return result;
        }

        SceneObj* Manager::getScene(int sceneId) {
            return getScene(sceneId, mpRootScene);
        }

        SceneObj* Manager::getScene(int sceneId, SceneObj* obj) {
            SceneObj::iterator it = SceneObj::iterator(obj);
            SceneObj* found = NULL;
            while (it.getPtr() != NULL) {
                if (sceneId == it.getPtr()->mSceneID) {
                    found = it.getPtr();
                    break;
                }
                ++it;
            }
            return found;
        }
    }
}
