#ifndef NW4R_UT_LINK_LIST_H
#define NW4R_UT_LINK_LIST_H

#include <revolution/types.h>

#include <nw4r/ut/inlines.h>

#include <cstddef>

namespace nw4r {
    namespace ut {
        namespace detail {
            class LinkListImpl;
        }

        /******************************************************************************
         *
         * Linked list node
         *
         ******************************************************************************/
        class LinkListNode : private NonCopyable {
            friend class detail::LinkListImpl;

        public:
            LinkListNode() : mNext(NULL), mPrev(NULL) {}

            LinkListNode* GetNext() const {
                return mNext;
            }
            LinkListNode* GetPrev() const {
                return mPrev;
            }

        private:
            LinkListNode* mNext; // 0x00
            LinkListNode* mPrev; // 0x04
        };

        namespace detail {

            /******************************************************************************
             *
             * Linked list implementation
             *
             ******************************************************************************/
            class LinkListImpl : private NonCopyable {
            public:
                // Forward declarations
                class ConstIterator;

                /******************************************************************************
                 * Iterator implementation
                 ******************************************************************************/
                class Iterator {
                    friend class LinkListImpl;
                    friend class ConstIterator;

                public:
                    Iterator() : mNode(NULL) {}
                    explicit Iterator(LinkListNode* pNode) : mNode(pNode) {}

                    Iterator& operator++() {
                        mNode = mNode->GetNext();
                        return *this;
                    }

                    Iterator& operator--() {
                        mNode = mNode->GetPrev();
                        return *this;
                    }

                    LinkListNode* operator->() const {
                        return mNode;
                    }

                    friend bool operator==(LinkListImpl::Iterator lhs,
                                           LinkListImpl::Iterator rhs) {
                        return lhs.mNode == rhs.mNode;
                    }

                private:
                    LinkListNode* mNode; // 0x00
                };

                /******************************************************************************
                 * Iterator implementation (const-view)
                 ******************************************************************************/
                class ConstIterator {
                    friend class LinkListImpl;

                public:
                    explicit ConstIterator(Iterator it) : mNode(it.mNode) {}

                    ConstIterator& operator++() {
                        mNode = mNode->GetNext();
                        return *this;
                    }

                    ConstIterator& operator--() {
                        mNode = mNode->GetPrev();
                        return *this;
                    }

                    const LinkListNode* operator->() const {
                        return mNode;
                    }

                    friend bool operator==(LinkListImpl::ConstIterator lhs,
                                           LinkListImpl::ConstIterator rhs) {
                        return lhs.mNode == rhs.mNode;
                    }

                private:
                    LinkListNode* mNode; // 0x00
                };

            protected:
                static Iterator GetIteratorFromPointer(LinkListNode* pNode) {
                    return Iterator(pNode);
                }

                LinkListImpl() {
                    Initialize_();
                }
                ~LinkListImpl();

                Iterator GetBeginIter() {
                    return Iterator(mNode.GetNext());
                }
                Iterator GetEndIter() {
                    return Iterator(&mNode);
                }

                Iterator Insert(Iterator it, LinkListNode* pNode);

                Iterator Erase(Iterator it);
                Iterator Erase(LinkListNode* pNode);
                Iterator Erase(Iterator begin, Iterator end);

            public:
                u32 GetSize() const {
                    return mSize;
                }
                bool IsEmpty() const {
                    return mSize == 0;
                }

                void PopFront() {
                    Erase(GetBeginIter());
                }
                void PopBack() {
                    Erase(--GetEndIter());
                }

                void Clear();

            private:
                void Initialize_() {
                    mSize = 0;
                    mNode.mNext = &mNode;
                    mNode.mPrev = &mNode;
                }

            private:
                u32 mSize;          // 0x00
                LinkListNode mNode; // 0x04
            };

            /******************************************************************************
             *
             * Reverse iterator
             *
             ******************************************************************************/
            template<typename TIter> class ReverseIterator {
            public:
                explicit ReverseIterator(TIter it) : mCurrent(it) {}

                TIter GetBase() const {
                    return mCurrent;
                }

                ReverseIterator& operator++() {
                    --mCurrent;
                    return *this;
                }

                const typename TIter::TElem* operator->() const {
                    return &this->operator*();
                }

                typename TIter::TElem& operator*() const {
                    TIter it = mCurrent;
                    return *--it;
                }

                friend bool operator==(const ReverseIterator& rLhs,
                                       const ReverseIterator& rRhs) {
                    return rLhs.mCurrent == rRhs.mCurrent;
                }

                friend bool operator!=(const ReverseIterator& rLhs,
                                       const ReverseIterator& rRhs) {
                    return !(rLhs.mCurrent == rRhs.mCurrent);
                }

            private:
                TIter mCurrent; // 0x00
            };

        }

        /******************************************************************************
         *
         * Templated linked list
         *
         ******************************************************************************/
        template<typename T, int Ofs> class LinkList : public detail::LinkListImpl {
        public:
            // Forward declarations
            class ConstIterator;

            /******************************************************************************
             * Templated iterator
             ******************************************************************************/
            class Iterator {
                friend class LinkList;
                friend class ConstIterator;

            public:
                // Element type must be visible to ReverseIterator
                typedef T TElem;

            public:
                Iterator() : mIterator(NULL) {}
                explicit Iterator(LinkListImpl::Iterator it) : mIterator(it) {}

                Iterator& operator++() {
                    ++mIterator;
                    return *this;
                }

                Iterator& operator--() {
                    --mIterator;
                    return *this;
                }

                Iterator operator++(int) {
                    Iterator ret = *this;
                    ++*this;
                    return ret;
                }

                T* operator->() const {
                    return GetPointerFromNode(mIterator.operator->());
                }

                T& operator*() const {
                    return *this->operator->();
                }

                friend bool operator==(Iterator lhs, Iterator rhs) {
                    return lhs.mIterator == rhs.mIterator;
                }

                friend bool operator!=(Iterator lhs, Iterator rhs) {
                    return !(lhs == rhs);
                }

            private:
                LinkListImpl::Iterator mIterator; // 0x00
            };

            /******************************************************************************
             * Templated iterator (const-view)
             ******************************************************************************/
            class ConstIterator {
                friend class LinkList;

            public:
                // Element type must be visible to ReverseIterator
                typedef T TElem;

            public:
                explicit ConstIterator(LinkListImpl::Iterator it) : mIterator(it) {}
                explicit ConstIterator(Iterator it) : mIterator(it.mIterator) {}

                ConstIterator& operator++() {
                    ++mIterator;
                    return *this;
                }

                ConstIterator& operator--() {
                    --mIterator;
                    return *this;
                }

                ConstIterator operator++(int) {
                    ConstIterator ret = *this;
                    ++*this;
                    return ret;
                }

                const T* operator->() const {
                    return GetPointerFromNode(mIterator.operator->());
                }

                const T& operator*() const {
                    return *this->operator->();
                }

                friend bool operator==(ConstIterator lhs, ConstIterator rhs) {
                    return lhs.mIterator == rhs.mIterator;
                }

                friend bool operator!=(ConstIterator lhs, ConstIterator rhs) {
                    return !(lhs == rhs);
                }

            private:
                LinkListImpl::ConstIterator mIterator; // 0x00
            };

        public:
            // Shorthand names for reverse iterator types
            typedef detail::ReverseIterator<Iterator> RevIterator;
            typedef detail::ReverseIterator<ConstIterator> ConstRevIterator;

        public:
            LinkList() {}

            Iterator GetBeginIter() {
                return Iterator(LinkListImpl::GetBeginIter());
            }
            ConstIterator GetBeginIter() const {
                return ConstIterator(const_cast<LinkList*>(this)->GetBeginIter());
            }
            RevIterator GetBeginReverseIter() {
                return RevIterator(GetBeginIter());
            }
            ConstRevIterator GetBeginReverseIter() const {
                return ConstRevIterator(GetBeginIter());
            }

            Iterator GetEndIter() {
                return Iterator(LinkListImpl::GetEndIter());
            }
            ConstIterator GetEndIter() const {
                return ConstIterator(const_cast<LinkList*>(this)->GetEndIter());
            }
            RevIterator GetEndReverseIter() {
                return RevIterator(GetEndIter());
            }
            ConstRevIterator GetEndReverseIter() const {
                return ConstRevIterator(GetEndIter());
            }

            Iterator Insert(Iterator it, T* pElem) {
                return Iterator(LinkListImpl::Insert(it.mIterator, GetNodeFromPointer(pElem)));
            }

            Iterator Erase(T* pElem) {
                return Iterator(LinkListImpl::Erase(GetNodeFromPointer(pElem)));
            }
            Iterator Erase(Iterator it) {
                return Iterator(LinkListImpl::Erase(it.mIterator));
            }

            void PushBack(T* pElem) {
                Insert(GetEndIter(), pElem);
            }

            T& GetFront() {
                return *GetBeginIter();
            }
            const T& GetFront() const {
                return *GetBeginIter();
            }

            T& GetBack() {
                return *--GetEndIter();
            }
            const T& GetBack() const {
                return *--GetEndIter();
            }

            static Iterator GetIteratorFromPointer(T* pElem) {
                return GetIteratorFromPointer(GetNodeFromPointer(pElem));
            }

            static Iterator GetIteratorFromPointer(LinkListNode* pNode) {
                return Iterator(LinkListImpl::GetIteratorFromPointer(pNode));
            }

            static LinkListNode* GetNodeFromPointer(T* pElem) {
                return reinterpret_cast<LinkListNode*>(reinterpret_cast<char*>(pElem) + Ofs);
            }

            static T* GetPointerFromNode(LinkListNode* pNode) {
                return reinterpret_cast<T*>(reinterpret_cast<char*>(pNode) - Ofs);
            }

            static const T* GetPointerFromNode(const LinkListNode* pNode) {
                return reinterpret_cast<const T*>(reinterpret_cast<const char*>(pNode) - Ofs);
            }
        };
    }
}


#endif // NW4R_UT_LINK_LIST_H
