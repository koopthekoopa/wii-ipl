#ifndef IPL_TREE
#define IPL_TREE

#include <revolution/types.h>
#include <revolution/os.h>

namespace ipl {
    namespace utility {
        class Tree {
            public:
                Tree();

                virtual         ~Tree() {};                         // 0x08

                virtual Tree*   getParent() { return mpParent; }    // 0x0C
                virtual Tree*   getChild()  { return mpChild; }     // 0x10
                virtual Tree*   getNext()   { return mpNext; }      // 0x14
                virtual Tree*   getPrev()   { return mpPrev; }      // 0x18

                void            attach(Tree* pTree);
                void            insert(Tree* pTree, Tree* pTree2);
                void            detach();

            protected:
                Tree*   mpParent;               // 0x04
                Tree*   mpChild;                // 0x08
                Tree*   mpNext;                 // 0x0C
                Tree*   mpPrev;                 // 0x10
        };
    }
}

#endif // IPL_TREE


