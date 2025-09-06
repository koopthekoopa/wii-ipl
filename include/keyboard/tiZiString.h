#ifndef TEXTINPUT_ZI_STRING_H
#define TEXTINPUT_ZI_STRING_H

namespace textinput {
    namespace tistring {
        class WithZi {
            public:
                virtual ~WithZi();

                void    openDictionary(void* ziDict, void* ziOemDict);
        };
    }
}

#endif // TEXTINPUT_ZI_STRING_H
