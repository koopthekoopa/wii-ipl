#ifndef IPL_UTILITY_H
#define IPL_UTILITY_H

#include <revolution/os.h>

namespace ipl {
    namespace utility {
        class timer {
        public:
            bool operator()();
            void set_msec(int ms);

        private:
            OSTime tick;
        };
    }  // namespace utility
}  // namespace ipl

#endif  // IPL_UTILITY_H
