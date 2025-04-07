#include "utility/iplTree.h"

namespace ipl {
    namespace utility {
        Tree::Tree() :
        mpParent(), mpChild(),
        mpNext(),   mpPrev() {}

        void Tree::attach(Tree* tree) {
            Tree* child = mpChild;

            if (child == empty()) {
                mpChild = tree;
                tree->mpParent = this;
            }
            else {
                while (child->mpNext != empty()) {
                    child = child->mpNext;
                }
                child->mpNext = tree;
                tree->mpPrev = child;
                tree->mpParent = this;
            }
        }

        void Tree::insert(Tree* tree, Tree* childTree) {
            tree->mpParent = this;
            tree->mpPrev = childTree->mpPrev;
            tree->mpNext = childTree;

            if (childTree->mpPrev != empty()) {
                childTree->mpPrev->mpNext = tree;
            }
            childTree->mpPrev = tree;
            if (mpChild == childTree) {
                mpChild = tree;
            }
        }

        void Tree::detach() {
            if (mpParent != empty() && mpParent->mpChild == this) {
                mpParent->mpChild = mpNext;
            }
            if (mpNext != empty()) {
                mpNext->mpPrev = mpPrev;
            }
            if (mpPrev != empty()) {
                mpPrev->mpNext = mpNext;
            }
        }
    }
}
