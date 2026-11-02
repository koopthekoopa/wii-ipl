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

    // TODO: Location?
    typedef enum HVKCode {
        HVK_NONE = 0x00,

        HVK_UNK_0x01,  // Escape

        // Main typing keypad keys
        HVK_UNK_0x02,  // (Backtick/tilde)
        HVK_UNK_0x03,  // Tab
        HVK_UNK_0x04,  // Caps Lock
        HVK_UNK_0x05,  // Shift
        HVK_UNK_0x06,  // Ctrl
        HVK_UNK_0x07,  // Alt
        HVK_UNK_0x08,  // Gui + Space
        HVK_UNK_0x09,  // Enter
        HVK_UNK_0x0A,  // Backspace
        HVK_UNK_0x0B,  // Gui
        HVK_UNK_0x0C,  // Application

        // Idk what this is
        HVK_UNK_0x0D,

        // Language change keys
        HVK_UNK_0x0E,  // International 5
        HVK_UNK_0x0F,  // International 4
        HVK_UNK_0x10,  // International 2
        HVK_UNK_0x11,  // Lang 1
        HVK_UNK_0x12,  // Lang 2

        // Navigation keys (and num lock I guess)
        HVK_UNK_0x13,  // Insert
        HVK_UNK_0x14,  // Delete
        HVK_UNK_0x15,  // Home
        HVK_UNK_0x16,  // End
        HVK_UNK_0x17,  // Page Up
        HVK_UNK_0x18,  // Page Down
        HVK_UNK_0x19,  // Print Screen
        HVK_UNK_0x1A,  // Scroll Lock
        HVK_UNK_0x1B,  // Pause
        HVK_UNK_0x1C,  // Num Lock

        // Arrow keys
        HVK_UNK_0x1D,  // Up arrow
        HVK_UNK_0x1E,  // Down arrow
        HVK_UNK_0x1F,  // Left arrow
        HVK_UNK_0x20,  // Right arrow

        // Function keys
        HVK_UNK_0x21,  // F1
        HVK_UNK_0x22,  // F2
        HVK_UNK_0x23,  // F3
        HVK_UNK_0x24,  // F4
        HVK_UNK_0x25,  // F5
        HVK_UNK_0x26,  // F6
        HVK_UNK_0x27,  // F7
        HVK_UNK_0x28,  // F8
        HVK_UNK_0x29,  // F9
        HVK_UNK_0x2A,  // F10
        HVK_UNK_0x2B,  // F11
        HVK_UNK_0x2C,  // F12
    } HVKCode;

    class Base {
    public:
        virtual ~Base() {}

        virtual void create(MEMAllocator* allocator) {}
        virtual void init() {}
    };

    class CommandSender;
    class CommandReceiver : public Base {
    public:
        typedef enum INPUT_COMMAND {
            INPUT_COMMAND_0 = 0,             // 0
            INPUT_COMMAND_1,                 // 1 backspace
            INPUT_COMMAND_2,                 // 2 delete forward
            INPUT_COMMAND_3,                 // 3
            INPUT_COMMAND_4,                 // 4 (might not exist)
            INPUT_COMMAND_5,                 // 5
            INPUT_COMMAND_6,                 // 6
            INPUT_COMMAND_7,                 // 7
            INPUT_COMMAND_8,                 // 8
            INPUT_COMMAND_9,                 // 9
            INPUT_COMMAND_10,                // 10
            INPUT_COMMAND_11,                // 11
            INPUT_COMMAND_12,                // 12 (might not exist)
            INPUT_COMMAND_13,                // 13
            INPUT_COMMAND_POINT_TRIG,        // 14
            INPUT_COMMAND_POINT_RELEASE,     // 15
            INPUT_COMMAND_POINT_HOLD,        // 16
            INPUT_COMMAND_17,                // 17
            INPUT_COMMAND_18,                // 18
            INPUT_COMMAND_19,                // 19
            INPUT_COMMAND_20,                // 20
            INPUT_COMMAND_21,                // 21
            INPUT_COMMAND_22,                // 22
            INPUT_COMMAND_23,                // 23
            INPUT_COMMAND_24,                // 24
            INPUT_COMMAND_25,                // 25
            INPUT_COMMAND_26,                // 26
            INPUT_COMMAND_27,                // 27
            INPUT_COMMAND_28,                // 28
            INPUT_COMMAND_SET_PREDICT_MODE,  // 29
            INPUT_COMMAND_30,                // 30
            INPUT_COMMAND_GET_PREDICT_MODE,  // 31
            INPUT_COMMAND_32,                // 32
            INPUT_COMMAND_33,                // 33
            INPUT_COMMAND_34,                // 34
            INPUT_COMMAND_35,                // 35
            INPUT_COMMAND_36,                // 36
            INPUT_COMMAND_37,                // 37
            INPUT_COMMAND_38,                // 38 Process HW Keyboard Code
            INPUT_COMMAND_39,                // 39
            INPUT_COMMAND_40,                // 40
            INPUT_COMMAND_41,                // 41
            INPUT_COMMAND_42,                // 42
            INPUT_COMMAND_43,                // 43
            INPUT_COMMAND_44,                // 44
            INPUT_COMMAND_45,                // 45
            INPUT_COMMAND_46,                // 46 Shift Tapped(?)
            INPUT_COMMAND_47,                // 47
        } INPUT_COMMAND;
        struct ChangePredictMode {
            int ePredictMode;    // 0x0
            u8 bPredictEnabled;  // 0x4
        };
        typedef struct Scroll {
            bool absY;  // 0x00
            f32 x;      // 0x04
            f32 y;      // 0x08
        } Scroll;
        struct Command3Or5Data {
            wchar_t ch;                      // 0x0
            u16 inputMode;                   // 0x2
            bool unk_0x4;                    // 0x4
            bool unk_0x5;                    // 0x5
            bool unk_0x6;                    // 0x6
            bool unk_0x7;                    // 0x7
            const void* paneNameToCharCode;  // 0x8
        };

        struct Command0Data {
            wchar_t ch;               // 0x0
            u32 inputFlags;           // 0x4
            u8 bCopyTranslateModes;   // 0x8
            u8 bUseCombiningAccents;  // 0x9
            u32 unk_0xC;              // 0xC, not sure if this exists???
        };

        struct Command38Data {  // HWKB Ctrl Code
            HVKCode ctrlCode;   // 0x0
            u32 flags;          // 0x4
        };

        CommandReceiver() { clearSender(); }

        virtual void clearSender();
        virtual void onCommand(INPUT_COMMAND command, void* data);
        virtual void addSender(CommandSender* cmdSend) { nw4r::ut::List_Append(&mSenderList, cmdSend); }

    private:
        nw4r::ut::List mSenderList;  // 0x04
    };

    class CommandSender : public Base {
    public:
        CommandSender() : mpCommandReceiver(NULL) {}

        virtual void setCommandReceiver(CommandReceiver* cmdRecv);
        virtual void sendCommand(u32 command, void* data);
        virtual void updateFromReceiver(u32 command, void* data) {}

        nw4r::ut::Link mLink;  // 0x04

    private:
        CommandReceiver* mpCommandReceiver;  // 0x0C
    };
}  // namespace textinput

#endif  // TEXTINPUT_BASE_H
