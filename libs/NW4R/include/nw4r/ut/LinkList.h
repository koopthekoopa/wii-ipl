#ifndef NW4R_UTILITY_LINK_LIST_H
#define NW4R_UTILITY_LINK_LIST_H

#include <decomp.h>

#include <revolution/types.h>

#include <nw4r/math/types.h>
#include <nw4r/ut/list.h>
#include <nw4r/ut/NonCopyable.h>

namespace nw4r {
    namespace ut {
        class LinkListImpl;

        class LinkListNode : NonCopyable {
            friend class LinkListImpl;
            
            public:
                LinkListNode() : mNext(NULL), mPrev(NULL) {}
                
                LinkListNode*   GetNext() const { return mNext; }
                LinkListNode*   GetPrev() const { return mPrev; }
            
            private:
                LinkListNode*   mNext;  // 0x00
                LinkListNode*   mPrev;  // 0x04
        };
        
        class LinkListImpl : NonCopyable {
            public:
                undefined4  unk_0x00;   // 0x00
        };
        
        template<typename T, s32 offset> class LinkList : LinkListImpl {
            public:
                LinkList();

            undefined4  unk_0x00[2];    // 0x00
        };
    }
}

#endif // NW4R_UTILITY_LINK_LIST_H


