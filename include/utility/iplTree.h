#ifndef IPL_TREE
#define IPL_TREE

#include <revolution/types.h>
#include <revolution/os.h>

namespace ipl {
    namespace utility {
        class Tree {
            public:
                Tree();

                virtual         ~Tree();        // 0x08

                virtual Tree*   getPrev();      // 0x0C
                virtual Tree*   getNext();      // 0x10
                virtual Tree*   getChild();     // 0x14
                virtual Tree*   getParent();    // 0x18

                void            attach(Tree* pTree);
                void            insert(Tree* pTree, Tree* pNewTree);
                void            detach();

            private:
                Tree*   mpParent;               // 0x04
                Tree*   mpChild;                // 0x08
                Tree*   mpNext;                 // 0x0C
                Tree*   mpPrev;                 // 0x10
        };
    }
}

#endif // IPL_TREE


