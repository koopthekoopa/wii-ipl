#ifndef IPL_QUEUE_H
#define IPL_QUEUE_H

#include <revolution/types.h>

#include <nw4r/misc.h>

namespace ipl {
    namespace utility {
        template<typename T, int count> class Queue {
            public:
                inline Queue<T, count>() :
                mCount(count),
                mCurIdx(0),
                mPopped(0), mPushed(0) {}

                inline BOOL pop() {
                    BOOL result = TRUE;
                    if (!mCurIdx) { result = FALSE; goto done; }
                    if (++mPopped >= mCount) { mPopped = 0; } mCurIdx--;
                done:
                    return result;
                }

                inline BOOL push(const T& item) {
                    if (!mCurIdx) { return FALSE; }
                    mItems[mPushed] = item;
                    if (++mPushed >= mCount) { mPushed = 0; } mCurIdx++;
                    return TRUE;
                }

                inline int  get_current_index() { return mCurIdx; }
                inline T&   get_current_item()  { return mItems[get_current_index()]; }

                inline int  get_popped_index()  { return mPopped; }
                inline T&   get_popped_item()   { return mItems[get_popped_index()]; }

                inline int  get_pushed_index()  { return mPushed; }
                inline T&   get_pushed_item()   { return mItems[get_pushed_index()]; }
            private:
                T   mItems[count];          // 0x00
                int mCount;                 // (sizeof(mItems) * count) + 0x00
                
                int mCurIdx;                // (sizeof(mItems) * count) + 0x04
                int mPopped, mPushed;       // (sizeof(mItems) * count) + 0x08
        };
    }
}

#endif // IPL_QUEUE_H
