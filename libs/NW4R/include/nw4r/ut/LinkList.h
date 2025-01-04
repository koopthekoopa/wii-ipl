#ifndef NW4R_UT_LINK_LIST_H
#define NW4R_UT_LINK_LIST_H

#include <decomp.h>

#include <revolution/types.h>

#include <nw4r/ut/inlines.h>
#include <nw4r/misc.h>

#include <stddef.h>

#define NW4R_LINKLIST(x)        nw4r::ut::LinkList<x, offsetof(x, mLink)>

namespace nw4r {
    namespace ut {
        namespace detail {
            class LinkListImpl;

            template<typename T, typename Difference = PtrDiff, typename Pointer = T*, typename Reference = T&> class Iterator {
                public:
                    typedef T value_type;
                    typedef Difference difference_type;
                    typedef Pointer pointer;
                    typedef Reference reference;
                };
        }

        class LinkListNode : private NonCopyable {
            public:
                typedef LinkListNode Self;

                explicit LinkListNode() : mNext(NULL), mPrev(NULL) {}

                Self* GetNext() const { return mNext; }
                Self* GetPrev() const { return mPrev; }

            private:
                Self* mNext;            // 0x00
                Self* mPrev;            // 0x04

                friend class detail::LinkListImpl;
        };

        namespace detail {
            class LinkListImpl : private NonCopyable {
                public:
                    typedef LinkListImpl Self;
                    typedef unsigned long size_type;
                    typedef PtrDiff difference_type;
                    
                    typedef LinkListNode Node;
                    typedef Node value_type;
                    typedef value_type* pointer;
                    typedef const value_type* const_pointer;
                    typedef value_type& reference;
                    typedef const value_type& const_reference;

                    class Iterator;
                    class Iterator : public detail::Iterator<value_type> {
                        public:
                            typedef Iterator TIt;
                            typedef detail::Iterator<value_type> TBaseIt;

                            reference operator*() const { return *mPointer; }
                            pointer operator->() const  { return mPointer; }

                            TIt &operator++() {
                                mPointer = mPointer->GetNext();
                                return *this;
                            }
                            TIt operator++(int) {
                                const TIt it((*this)++);
                                return it;
                            }
                            TIt &operator--() {
                                mPointer = mPointer->GetPrev();
                                return *this;
                            }
                            TIt operator--(int) {
                                const TIt it((*this)--);
                                return it;
                            }

                            friend bool operator==(TIt it1, TIt it2) { return (it1.mPointer == it2.mPointer); }

                            friend bool operator!=(TIt it1, TIt it2) { return !(it1 == it2); }
                            
                            explicit Iterator(pointer p) : mPointer(p) {}

                            friend class LinkListImpl;

                            pointer mPointer;
                };

                Iterator GetBeginIter() { return Iterator(mNode.GetNext()); }
                Iterator GetEndIter()   { return Iterator(&mNode); }

                ~LinkListImpl();

                Iterator Insert(Iterator it, pointer p);
                Iterator Erase(pointer p);
                Iterator Erase(Iterator it);
                Iterator Erase(Iterator itFirst, Iterator itLast);
                void Clear();

                size_type mSize;        // 0x00
                Node mNode;             // 0x04
            };
        }

        template<typename T, PtrDiff TNOffset> class LinkList : private detail::LinkListImpl {
            public:
                explicit LinkList() {}

                typedef detail::LinkListImpl Base;
                typedef LinkList Self;
                using Base::Node;
                using Base::size_type;
                using Base::difference_type;

                typedef Base::Iterator TIt_base_;

                typedef T value_type;
                typedef value_type* pointer;
                typedef const value_type* const_pointer;
                typedef value_type& reference;
                typedef const value_type& const_reference;

                class Iterator;

                class Iterator : public detail::Iterator<value_type> {
                    public:
                        typedef Iterator TIt;
                        typedef detail::Iterator<value_type> TBaseIt;

                        explicit Iterator() {}

                        explicit Iterator(TIt_base_ it) : it_(it) {}

                        reference operator*() const { pointer p = operator->(); return *p; }
                        pointer operator->() const  { return GetPointerFromNode(it_.operator->()); }

                        TIt &operator++() {
                            ++it_;
                            return *this;
                        }
                        TIt operator++(int) {
                            const TIt it(*this);
                            ++*this;
                            return it;
                        }
                        TIt &operator--() {
                            --it_;
                            return *this;
                        }
                        TIt operator--(int) {
                            const TIt it(*this);
                            --*this;
                            return it;
                        }

                        friend bool operator==(TIt it1, TIt it2) { return it1.it_ == it2.it_; }
                        friend bool operator!=(TIt it1, TIt it2) { return !(it1 == it2); }

                        TIt_base_ it_;

                        friend class LinkList;
                };

                Iterator GetBeginIter() { return Iterator(Base::GetBeginIter()); }
                Iterator GetEndIter()   { return Iterator(Base::GetEndIter()); }

                void PushFront(pointer p) { Insert(GetBeginIter(), p); }
                void PushBack(pointer p) { Insert(GetEndIter(), p); }

                Iterator Insert(Iterator it, pointer p)             { return Iterator(Base::Insert(it.it_, GetNodeFromPointer(p))); }

                Iterator Erase(Iterator it)                         { return Iterator(Base::Erase(it.it_)); }
                Iterator Erase(Iterator itFirst, Iterator itLast)   { return Iterator(Base::Erase(itFirst.it_, itLast.it_)); }
                Iterator Erase(pointer p)                           { return Iterator(Base::Erase(GetNodeFromPointer(p))); }

                static Node* GetNodeFromPointer(pointer p)          { return reinterpret_cast<Node*>(reinterpret_cast<IntPtr>(p) + TNOffset); }
                static pointer GetPointerFromNode(const Node *p)    { return reinterpret_cast<pointer>(reinterpret_cast<IntPtr>(p) - TNOffset); }
        };
    }
}

#endif // NW4R_UT_LINK_LIST_H
