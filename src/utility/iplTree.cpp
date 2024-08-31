#include "utility/iplTree.h"

namespace ipl {
    namespace utility {
        /**
         * @note Address: 0x813626EC
         * @note Size: 0x20
         */
        BOOL RangeCheckGELTS32(s32 value, s32 min, s32 max) {
            BOOL result = FALSE;
            if (value >= min && value < max) {
                result = TRUE;
            }
            return result;
        }

        /**
         * @note Address: 0x8136270C
         * @note Size: 0x24
         */
        Tree::Tree() :
        mpParent(NULL),
        mpChild(NULL),
        mpNext(NULL),
        mpPrev(NULL) {}

        /**
         * @note Address: 0x81362730
         * @note Size: 0x3C
         */
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

        /**
         * @note Address: 0x8136276C
         * @note Size: 0x38
         */
        void Tree::insert(Tree* pTree, Tree* pNewTree) {
            pTree->mpParent = this;
            pTree->mpPrev = pNewTree->mpPrev;
            pTree->mpNext = pNewTree;
            if (pNewTree->mpPrev != NULL) {
                pNewTree->mpPrev->mpNext = pTree;
            }
            
            pNewTree->mpPrev = pTree;
            if (mpChild == pNewTree) {
                mpChild = pTree;
            }
        }

        /**
         * @note Address: 0x813627A4
         * @note Size: 0x4C
         */
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

        /**
         * @note Address: 0x813627F0
         * @note Size: 0x8
         */
        Tree* Tree::getPrev() {
            return mpPrev;
        }

        /**
         * @note Address: 0x813627F8
         * @note Size: 0x8
         */
        Tree* Tree::getNext() {
            return mpNext;
        }

        /**
         * @note Address: 0x81362800
         * @note Size: 0x8
         */
        Tree* Tree::getChild() {
            return mpChild;
        }

        /**
         * @note Address: 0x81362808
         * @note Size: 0x8
         */
        Tree* Tree::getParent() {
            return mpParent;
        }

        /**
         * @note Address: 0x81362810
         * @note Size: 0x40
         */
        Tree::~Tree() {}
    }
}


