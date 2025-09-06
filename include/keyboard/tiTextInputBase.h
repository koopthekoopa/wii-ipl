#ifndef TEXTINPUT_BASE_H
#define TEXTINPUT_BASE_H

#include <revolution/types.h>

#include <revolution/mem/allocator.h>

#include <nw4r/ut/list.h>

namespace textinput {
    typedef enum Language {
        JP = 0,
        USA,
        UK,
        FR,
        DE,
        IT,
        SP,
        NL,
        CN,
        KR,

        LanguageEnd
    } Language;

    typedef enum Destination {
        DST_JP = 0,
        DST_US,
        DST_EU,
        DST_CN,
        DST_KR,

        DST_Last
    } Destination;

    typedef struct Scroll {
        bool absY;  // 0x00
        f32  x;     // 0x04
        f32  y;     // 0x08
    } Scroll;

    class Base {
        public :
            virtual ~Base() {}

            virtual void    create(MEMAllocator* allocator);
            virtual void    init();
    };

    class CommandSender;
    class CommandReceiver : public Base {
        public:
            typedef enum INPUT_COMMAND {
                INPUT_COMMAND_0 = 0,
                INPUT_COMMAND_37 = 37,
            } INPUT_COMMAND;

            virtual void    clearSender();
            virtual void    onCommand(INPUT_COMMAND command, void* data);

        private:
            virtual void    addSender(CommandSender* cmdSend);

            nw4r::ut::List  mSenderList;    // 0x04
    };

    class CommandSender : public Base {
        public:
            virtual void    setCommandReceiver(CommandReceiver* cmdRecv);
            virtual void    sendCommand(u32, void*);
            virtual void    updateFromReceiver(u32, void*);

            nw4r::ut::Link      mLink;              // 0x00
            CommandReceiver*    mpCommandReceiver;  // 0x08
    };
}

#endif // TEXTINPUT_BASE_H
