#ifndef IPL_WWW_JS_H
#define IPL_WWW_JS_H

#include <decomp.h>

#include <revolution/types.h>

typedef union {
    int jsInt;
    double jsFloat;
    double jsDouble;
    void* jsObj;
    const char* jsStr;
} WWWJSPluginValueData;

typedef struct WWWJSPluginObj {
} WWWJSPluginObj;
typedef struct WWWJSPluginValue {
    s32 ty;
    u8 unk_0x04[4];
    WWWJSPluginValueData data;
} WWWJSPluginValue;

typedef int (*JSConstructorFn)(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*);
typedef int (*JSGetterSetter)(WWWJSPluginObj*, const char*, WWWJSPluginValue*);
typedef bool (*JSAllowAccess)(const char*, const char*, int);

typedef int (*JSGlobalGetCallback)(WWWJSPluginObj*, int, int, JSConstructorFn, JSConstructorFn, const char*, int, WWWJSPluginValueData*);
typedef int (*JSConstructCallback)(WWWJSPluginObj*, JSGetterSetter, JSGetterSetter, int, WWWJSPluginValueData*);

typedef struct JSCallbackSet {
    JSGlobalGetCallback globalGet;
    JSConstructCallback construct;
} JSCallbackSet;

typedef struct WWWJSCap {
    const char** name;
    int unk_0x04;
    JSGetterSetter getter;
    void* unk_0x0c;
    void* unk_0x10;
    void* unk_0x14;
    void* unk_0x18;
    JSAllowAccess allowAccess;
} WWWJSCap;

typedef struct WWWProtocolData {
    const char* filePath;
    const char* protocolName;
    void* wwwInternal;
} WWWProtocolData;

typedef struct WWWRect {
    int x;
    int y;
    int w;
    int h;
} WWWRect;

// typedef struct WWWWindow {
// } WWWWindow;

typedef struct WWWHandleEventData {
    u32 data[6];
} WWWHandleEventData;

typedef struct WWWIMEData {
    u32 imeID;
    const char* text;
    u32 unk_0x08;
    u32 unk_0x0c;
    u32 unk_0x10;
    u32 unk_0x14;
    u32 unk_0x18;
    u32 maxLength;
} WWWIMEData;

enum WWWEvent {
    WWW_EVT_CURSOR_CHANGE = 0x00,
    WWW_EVT_WINDOW_CLOSE = 0x01,
    WWW_EVT_WINDOW_NEW = 0x02,
    WWW_EVT_WINDOW_REQUEST = 0x03,
    WWW_EVT_AUTHENTICATION = 0x04,
    WWW_EVT_URL_CHANGE = 0x05,
    WWW_EVT_LOADING_START = 0x06,
    WWW_EVT_LOADING_FINISHED = 0x07,
    WWW_EVT_LOADING_PROGRESS = 0x08,
    WWW_EVT_UPLOADING_START = 0x09,
    WWW_EVT_UPLOADING_FINISHED = 0x0a,

    WWW_EVT_DOCUMENT_TITLE = 0x0b,
    WWW_EVT_DOCUMENT_SIZE = 0x0c,
    WWW_EVT_DOCUMENT_ICON = 0x0d,

    WWW_EVT_LINK_CLICKED = 0x0e,
    WWW_EVT_SECURITY_MODE = 0x0f,
    WWW_EVT_LINK_NAVIGATED = 0x10,
    WWW_EVT_LINK_HOVER = 0x11,

    WWW_EVT_UNK_0x13 = 0x13,

    WWW_EVT_UNKNOWN_PROTOCOL = 0x16,

    WWW_EVT_DOWNLOAD = 0x18,

    WWW_EVT_ERROR = 0x1d,
    WWW_EVT_IMECREATE = 0x1e,
    WWW_EVT_IMEMOVE = 0x1f,
    WWW_EVT_IMECANCEL = 0x20,
    WWW_EVT_ASYNC_DIALOG = 0x21,
    WWW_EVT_BLOCKING_DIALOG = 0x22,
    WWW_EVT_OUT_OF_MEMORY = 0x23,
    WWW_EVT_SOFT_OUT_OF_MEMORY = 0x24,

    WWW_EVT_PROTOCOL_LOADING_START = 0x2c,
    WWW_EVT_EXISTS_HISTORY = 0x2d,
    WWW_EVT_EXTERNAL_ACTION = 0x2e,

    WWW_EVT_SCREEN_INVALID = 0x34,
    WWW_EVT_FILTERED_URL = 0x35,
};

// case ipl::controller::BTN_NEXT_LEFT:
//     return (WWWKeySym)0xe001;
// case ipl::controller::BTN_NEXT_RIGHT:
//     return (WWWKeySym)0xe02b;

// case ipl::controller::BTN_RIGHT:
//     return (WWWKeySym)0xe03c;
// case ipl::controller::BTN_LEFT:
//     return (WWWKeySym)0xe03d;
// case ipl::controller::BTN_UP:
//     return (WWWKeySym)0xe03e;
// case ipl::controller::BTN_DOWN:
//     return (WWWKeySym)0xe03f;
// case ipl::controller::REVO_BTN_1:
//     return (WWWKeySym)0xe044;
// case ipl::controller::REVO_BTN_2:
//     return (WWWKeySym)0xe045;
enum WWWKeySym {
    KEY_SYM_BLANK = 0,
    KEY_SYM_SOMETHING = 0xe001,

    KEY_SYM_NEXT_RIGHT = 0xe02b,
    KEY_SYM_NEXT_LEFT = 0xe02c,

    KEY_SYM_RIGHT = 0xe03c,
    KEY_SYM_LEFT = 0xe03d,
    KEY_SYM_UP = 0xe03e,
    KEY_SYM_DOWN = 0xe03f,

    KEY_SYM_BTN1 = 0xe044,
    KEY_SYM_BTN2 = 0xe045,
};

enum WWWKeyBtnCmd {
    KEY_CMD_TRIGGER = 0,
    KEY_CMD_RELEASE = 1,
};
enum WWWMouseCmd {
    MOUSE_CMD_MOVE = 0,
    MOUSE_CMD_TRIGGER = 1,
    MOUSE_CMD_RELEASE = 2,
};
enum WWWMouseAttrib {
    MOUSE_ATTRIB_BUTTON = 1,
    MOUSE_ATTRIB_POSITION = 4,
};

typedef struct WWWHandle {
} WWWHandle;
typedef struct WWWHandlewindow {
} WWWHandlewindow;

#endif  // IPL_WWW_JS_H
