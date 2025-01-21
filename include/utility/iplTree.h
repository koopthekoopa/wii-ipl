#ifndef IPL_TREE
#define IPL_TREE

#include "nw4r/ut/inlines.h"
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

                class iterator {
                    typedef Tree        value_type;
                    typedef value_type* pointer;
                    typedef value_type& reference;

                    public:
                        explicit inline iterator(pointer ptr) : mPtr(ptr) {}

                        virtual reference   operator*()                             { return *mPtr; }
                        pointer             operator->()                            { return mPtr;  }

                        pointer             getPtr()                                { return (pointer)mPtr; }

                        iterator& operator++()                                      { next(); return *this; }

                        inline void next() {
                            if (mPtr->getChild()) {
                                mPtr = mPtr->getChild();
                            }
                            else {
                                if (mPtr->getNext()) {
                                    mPtr = mPtr->getNext();
                                }
                                else {
                                    while (TRUE) {
                                        if (!mPtr->getNext()) break;
                                        mPtr = mPtr->getNext();
                                    }
                                    mPtr = mPtr->getParent();
                                }
                            }
                        }
                    
                    protected:
                        pointer mPtr;
                };

                class reverse_iterator {
                    typedef Tree        value_type;
                    typedef value_type* pointer;
                    typedef value_type& reference;

                    public:
                        explicit inline reverse_iterator(pointer ptr) : mPtr(ptr) { reverse(); }

                        virtual reference   operator*()                             { return (reference)*mPtr; }
                        pointer             operator->()                            { return (pointer)mPtr;  }

                        pointer             getPtr()                                { return (pointer)mPtr; }

                        inline void reverse() {
                            while (mPtr->getChild()) {
                                mPtr = mPtr->getChild();
                                while (mPtr->getNext()) {
                                    mPtr = mPtr->getNext();
                                }
                            }
                        }
                    
                    protected:
                        pointer mPtr;
                };

            protected:
                Tree*   mpParent;               // 0x04
                Tree*   mpChild;                // 0x08
                Tree*   mpNext;                 // 0x0C
                Tree*   mpPrev;                 // 0x10
        };
    }
}

#endif // IPL_TREE
