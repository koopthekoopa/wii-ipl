#ifndef NW4R_UTILITY_NON_COPYABLE_H
#define NW4R_UTILITY_NON_COPYABLE_H

namespace nw4r {
    namespace ut {
        namespace {
            class NonCopyable {
                protected:
                    NonCopyable() {}
                    ~NonCopyable() {}
                private:
                    NonCopyable(const NonCopyable&);
                    const NonCopyable& operator=(const NonCopyable&);
            };
        }
    }
}

#endif // NW4R_UTILITY_NON_COPYABLE_H


