#ifndef NW4R_UT_LINK_LIST_H
#define NW4R_UT_LINK_LIST_H

#include <decomp.h>

#include <revolution/types.h>

#include <nw4r/ut/inlines.h>

#include <stddef.h>

#define NW4R_LINKLIST(x)        nw4r::ut::LinkList<x, offsetof(x, mLink)>

namespace nw4r {
    namespace ut {
        namespace detail { class LinkListImpl; }

        class LinkListNode : private NonCopyable {
            public:
                LinkListNode(): mNext(NULL), mPrev(NULL) {}

                LinkListNode* GetNext() const   { return mNext; }

            private:
                LinkListNode*    mNext; // 0x00
                LinkListNode*    mPrev; // 0x04

                friend class detail::LinkListImpl;
        };

        namespace detail {
            namespace dummy {
                class Iterator {}; 
            }

            class LinkListImpl : private NonCopyable {
                public:
                    class Iterator : public dummy::Iterator {
                        public:
                            Iterator(LinkListNode* pNode): mPointer(pNode) {}

                            friend bool operator ==(Iterator it1, Iterator it2) {
                                return it1.mPointer == it2.mPointer;
                            }

                            Iterator& operator ++() {
                                mPointer = mPointer->GetNext();
                                return *this;
                            }

                            LinkListNode* operator ->() const { return mPointer; }

                        private:
                            LinkListNode*   mPointer;   // 0x00

                        private:
                            friend class LinkListImpl;
                    };

                public:
                    LinkListImpl(): mNode() { Initialize_(); }
                    ~LinkListImpl();

                    Iterator GetBeginIter() { return mNode.GetNext(); }
                    Iterator GetEndIter()   { return &mNode; }

                    Iterator Insert(Iterator it, LinkListNode* p);

                    Iterator Erase(LinkListNode* p);
                    Iterator Erase(Iterator it);
                    Iterator Erase(Iterator itFirst, Iterator itLast);

                    static Iterator GetIteratorFromPointer(LinkListNode *pNode) {
                        return Iterator(pNode);
                    }

                    void Clear();

                private:
                    void Initialize_() {
                        mSize = 0;
                        mNode.mNext = &mNode;
                        mNode.mPrev = &mNode;
                    }

                private:
                    u32             mSize;  // 0x00
                    LinkListNode    mNode;  // 0x04
            };
        }

        namespace dummy {
            template<typename, int> class Iterator {};
        }

        template<typename T, int I> class LinkList : private detail::LinkListImpl {
            public:
                class Iterator : public dummy::Iterator<T, I> {
                    public:
                        Iterator(detail::LinkListImpl::Iterator it): it_(it) {}

                        friend bool operator ==(Iterator it1, Iterator it2) {
                            return it1.it_ == it2.it_;
                        }

                        friend bool operator !=(Iterator it1, Iterator it2) {
                            return !(it1 == it2);
                        }

                        Iterator& operator++() {
                            ++it_;
                            return *this;
                        }

                        Iterator operator++(int) {
                            Iterator it = *this;
                            ++*this;
                            return it;
                        }

                        T& operator*() const {
                            T* p = this->operator->();
                            return *p;
                        }

                        T* operator->() const {
                            return GetPointerFromNode(it_.operator ->());
                        }

                    private:
                        detail::LinkListImpl::Iterator  it_;    // 0x00

                    private:
                        friend class LinkList<T, I>;
                };

            public:
                LinkList() {}

                Iterator GetBeginIter() { return LinkListImpl::GetBeginIter(); }
                Iterator GetEndIter()   { return LinkListImpl::GetEndIter(); }

                Iterator Insert(Iterator it, T* p) {
                    return LinkListImpl::Insert(it.it_, GetNodeFromPointer(p));
                }

                void PushBack(T* p)     { Insert(GetEndIter(), p); }
                
                Iterator Erase(T* pElem) {
                    return Iterator(LinkListImpl::Erase(GetNodeFromPointer(pElem)));
                }
                Iterator Erase(Iterator it) {
                    return LinkListImpl::Erase(it.it_);
                }

                static Iterator GetIteratorFromPointer(T* ptr) {
                    return GetIteratorFromPointer(GetNodeFromPointer(ptr));
                }
            
                static Iterator GetIteratorFromPointer(LinkListNode* pNode) {
                    return Iterator(LinkListImpl::GetIteratorFromPointer(pNode));
                }

                static LinkListNode* GetNodeFromPointer(T* ptr) {
                    return reinterpret_cast<LinkListNode*>(reinterpret_cast<int>(ptr) + I);
                }

                static T* GetPointerFromNode(LinkListNode* ptr) {
                    return reinterpret_cast<T*>(reinterpret_cast<int>(ptr) - I);
                }
        };
    }
}

#endif // NW4R_UT_LINK_LIST_H
