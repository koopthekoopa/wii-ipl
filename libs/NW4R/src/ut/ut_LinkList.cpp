#include <nw4r/ut.h>

namespace nw4r {
    namespace ut {
        namespace detail {
            LinkListImpl::~LinkListImpl() { Clear(); }
 
            LinkListImpl::Iterator LinkListImpl::Erase(LinkListImpl::Iterator it) {
                Iterator clone = it;
                return Erase(it, ++clone);
            }

            LinkListImpl::Iterator LinkListImpl::Erase(Iterator itFirst, Iterator itLast) {
                Node* pIt = itFirst.mPointer;
                Node* pItLast = itLast.mPointer;

                Node* pNext;

                for (; pIt != pItLast; pIt = pNext) {
                    pNext = pIt->mNext;
                    Erase(pIt);
                }

                return Iterator(pItLast);
            }

            void LinkListImpl::Clear() {
                Erase(GetBeginIter(), GetEndIter());
            }

            LinkListImpl::Iterator LinkListImpl::Insert(Iterator it, pointer p) {
                Node* pNext = it.mPointer;
                Node* pPrev = pNext->mPrev;

                // pPrev <- p -> pNext
                p->mNext = pNext;
                p->mPrev = pPrev;

                // pPrev <-> p <-> pNext
                pNext->mPrev = p;
                pPrev->mNext = p;

                mSize++;

                return (Iterator)p;
            }

            LinkListImpl::Iterator LinkListImpl::Erase(pointer p) {
                Node* pNext = p->mNext;
                Node* pPrev = p->mPrev;

                // Remove connections to node
                pNext->mPrev = pPrev;
                pPrev->mNext = pNext;

                mSize--;

                // Isolate node
                p->mNext = NULL;
                p->mPrev = NULL;

                return (Iterator)pNext;
            }
        }
    }
}


