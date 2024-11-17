#include "utility/iplTree.h"

namespace ipl {
    namespace utility {
        BOOL RangeCheckGELTS32(s32 value, s32 min, s32 max) {
            BOOL result = FALSE;
            if (value >= min && value < max) {
                result = TRUE;
            }
            return result;
        }

        Tree::Tree() :
        mpParent(NULL),
        mpChild(NULL),
        mpNext(NULL),
        mpPrev(NULL) {}

        void Tree::attach(Tree* pTree) {
            Tree* pTarget = mpChild;

            if (pTarget == NULL) {
                mpChild = pTree;
                pTree->mpParent = this;
            }
            else {
                while(pTarget->mpNext != NULL) {
                    pTarget = pTarget->mpNext;
                }

                pTarget->mpNext = pTree;
                pTree->mpPrev = pTarget;
                pTree->mpParent = this;
            }
        }

        void Tree::insert(Tree* pTree, Tree* pTree2) {
            pTree->mpParent = this;
            pTree->mpPrev = pTree2->mpPrev;
            pTree->mpNext = pTree2;
            if (pTree2->mpPrev != NULL) {
                pTree2->mpPrev->mpNext = pTree;
            }
            
            pTree2->mpPrev = pTree;
            if (mpChild == pTree2) {
                mpChild = pTree;
            }
        }

        void Tree::detach() {
            if (mpParent != NULL && mpParent->mpChild == this) {
                mpParent->mpChild = mpNext;
            }

            if (mpNext != NULL) {
                mpNext->mpPrev = mpPrev;
            }

            if (mpPrev != NULL) {
                mpPrev->mpNext = mpNext;
            }
        }
    }
}


