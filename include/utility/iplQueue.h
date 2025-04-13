#ifndef IPL_QUEUE_H
#define IPL_QUEUE_H

#include <revolution/types.h>

#include <nw4r/misc.h>

namespace ipl {
    namespace utility {
        template<typename T, int c> class Queue {
            public:
                inline Queue<T, c>() :
                count(c),
                current(0),
                popped(0), pushed(0) {}

                inline BOOL push(const T& item) {
                    if (count == current) { return FALSE; }
                    items[pushed] = item;
                    if (++pushed >= count) { pushed = 0; } current++;
                    return TRUE;
                }

                inline BOOL pop() {
                    BOOL result = TRUE;
                    if (current == 0) { result = FALSE; goto done; }
                    if (++popped >= count) { popped = 0; } current--;
                done:
                    return result;
                }

                inline int  get_current_index() { return current; }
                inline T&   get_current_item()  { return items[get_current_index()]; }

                inline int  get_popped_index()  { return popped; }
                inline T&   get_popped_item()   { return items[get_popped_index()]; }

                inline void next_popped_item()  { popped++; }
                inline void no_popped_item()    { popped = 0; }

                inline int  get_pushed_index()  { return pushed; }
                inline T&   get_pushed_item()   { return items[get_pushed_index()]; }

                T   items[c];       // 0x00
            public:
                int count;          // (sizeof(items) * count) + 0x00
                
                int current;        // (sizeof(items) * count) + 0x04
                int popped, pushed; // (sizeof(items) * count) + 0x08
        };
    }
}

#endif // IPL_QUEUE_H
