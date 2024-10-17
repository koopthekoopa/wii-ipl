#ifndef NW4R_UTILITY_LINK_LIST_H
#define NW4R_UTILITY_LINK_LIST_H

#include <decomp.h>

#include <revolution/types.h>

#include <nw4r/math/types.h>
#include <nw4r/ut/list.h>
#include <nw4r/ut/NonCopyable.h>

namespace nw4r {
    namespace ut {
        namespace detail { class LinkListImpl; }

        class LinkListNode : private NonCopyable {
            public:
                LinkListNode() : mNext(NULL), mPrev(NULL) {}

                LinkListNode* GetNext() const { return mNext; }
                LinkListNode* GetPrev() const { return mPrev; }

            private:
                LinkListNode* mNext;    // 0x00
                LinkListNode* mPrev;    // 0x04
            
            friend class detail::LinkListImpl;
        };
        
        namespace detail {
            class LinkListImpl : private NonCopyable {
                public:
                    class ConstIterator;
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

                            LinkListNode* operator->() const { return mNode; }

                            friend bool operator==(LinkListImpl::Iterator lhs, LinkListImpl::Iterator rhs)
                            { return lhs.mNode == rhs.mNode; }

                        private:
                            LinkListNode* mNode;    // 0x00
                    };

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

                            const LinkListNode* operator->() const { return mNode; }

                            friend bool operator==(LinkListImpl::ConstIterator lhs, LinkListImpl::ConstIterator rhs)
                            { return lhs.mNode == rhs.mNode; }

                        private:
                            LinkListNode* mNode; // 0x00
                    };

                protected:
                    static Iterator GetIteratorFromPointer(LinkListNode* pNode) { return Iterator(pNode); }

                    LinkListImpl()          { Initialize_(); }
                    ~LinkListImpl();

                    Iterator GetBeginIter() { return Iterator(mNode.GetNext()); }
                    Iterator GetEndIter()   { return Iterator(&mNode); }

                    Iterator Insert(Iterator it, LinkListNode* pNode);

                    Iterator Erase(Iterator it);
                    Iterator Erase(LinkListNode* pNode);
                    Iterator Erase(Iterator begin, Iterator end);

                public:
                    u32 GetSize() const     { return mSize; }
                    bool IsEmpty() const    { return mSize == 0; }
                    
                    void PopFront()         { Erase(GetBeginIter()); }
                    void PopBack()          { Erase(--GetEndIter()); }

                    void Clear();

                private:
                    void Initialize_() { mSize = 0; mNode.mNext = &mNode; mNode.mPrev = &mNode; }

                private:
                    u32 mSize;          // 0x00
                    LinkListNode mNode; // 0x04
            };
        }
        
        
    }
}

#endif // NW4R_UTILITY_LINK_LIST_H


