#ifndef REVOLUTION_WWW_OPERA_TYPES_H
#define REVOLUTION_WWW_OPERA_TYPES_H

#ifdef __cplusplus
extern "C" {
#endif  // __cplusplus

#include <revolution/types.h>

/***  ENUMS  ***/

typedef enum WWWEvent {
    WWW_EVT_CURSOR_CHANGE = 0,
    WWW_EVT_WINDOW_CLOSE,
    WWW_EVT_WINDOW_NEW,
    WWW_EVT_WINDOW_REQUEST,
    WWW_EVT_AUTHENTICATION,
    WWW_EVT_URL_CHANGE,
    WWW_EVT_LOADING_START,
    WWW_EVT_LOADING_FINISHED,
    WWW_EVT_LOADING_PROGRESS,
    WWW_EVT_UPLOADING_START,
    WWW_EVT_UPLOADING_FINISHED,
    WWW_EVT_DOCUMENT_TITLE,
    WWW_EVT_DOCUMENT_SIZE,
    WWW_EVT_DOCUMENT_ICON,
    WWW_EVT_LINK_CLICKED,
    WWW_EVT_SECURITY_MODE,
    WWW_EVT_LINK_NAVIGATED,
    WWW_EVT_LINK_HOVER,
    WWW_EVT_UNKNOWN_18,
    WWW_EVT_UNKNOWN_19,
    WWW_EVT_UNKNOWN_20,
    WWW_EVT_UNKNOWN_21,
    WWW_EVT_UNKNOWN_PROTOCOL,
    WWW_EVT_UNKNOWN_23,
    WWW_EVT_DOWNLOAD,
    WWW_EVT_UNKNOWN_25,
    WWW_EVT_UNKNOWN_26,
    WWW_EVT_UNKNOWN_27,
    WWW_EVT_UNKNOWN_28,
    WWW_EVT_ERROR,
    WWW_EVT_IMECREATE,
    WWW_EVT_IMEMOVE,
    WWW_EVT_IMECANCEL,
    WWW_EVT_ASYNC_DIALOG,
    WWW_EVT_BLOCKING_DIALOG,
    WWW_EVT_OUT_OF_MEMORY,
    WWW_EVT_SOFT_OUT_OF_MEMORY,
    WWW_EVT_UNKNOWN_37,
    WWW_EVT_UNKNOWN_38,
    WWW_EVT_UNKNOWN_39,
    WWW_EVT_UNKNOWN_40,
    WWW_EVT_UNKNOWN_41,
    WWW_EVT_UNKNOWN_42,
    WWW_EVT_UNKNOWN_43,
    WWW_EVT_PROTOCOL_LOADING_START,
    WWW_EVT_EXISTS_HISTORY,
    WWW_EVT_EXTERNAL_ACTION,
    WWW_EVT_UNKNOWN_47,
    WWW_EVT_UNKNOWN_48,
    WWW_EVT_UNKNOWN_49,
    WWW_EVT_UNKNOWN_50,
    WWW_EVT_UNKNOWN_51,
    WWW_EVT_SCREEN_INVALID,
    WWW_EVT_FILTERED_URL
} WWWEvent;

typedef enum WWWError {
    WWW_ERROR_OK = 0
} WWWError;

typedef enum WWWKeySym {
    KEY_SYM_BLANK = 0,
    KEY_SYM_SOMETHING = 0xE001,

    KEY_SYM_NEXT_RIGHT = 0xE02B,
    KEY_SYM_NEXT_LEFT = 0xE02C,

    KEY_SYM_RIGHT = 0xE03C,
    KEY_SYM_LEFT = 0xE03D,
    KEY_SYM_UP = 0xE03E,
    KEY_SYM_DOWN = 0xE03F,

    KEY_SYM_BTN1 = 0xE044,
    KEY_SYM_BTN2 = 0xE045,
} WWWKeySym;

typedef enum WWWKeyBtnCmd {
    KEY_CMD_TRIGGER = 0,
    KEY_CMD_RELEASE,
} WWWKeyBtnCmd;

typedef enum WWWMouseCmd {
    MOUSE_CMD_MOVE = 0,
    MOUSE_CMD_TRIGGER,
    MOUSE_CMD_RELEASE,
} WWWMouseCmd;

typedef enum WWWMouseAttrib {
    MOUSE_ATTRIB_BUTTON = 1,
    MOUSE_ATTRIB_POSITION = 4,
} WWWMouseAttrib;

/*** STRUCTS ***/

typedef struct WWWHandle {
} WWWHandle;

typedef struct WWWHandlewindow {
} WWWHandlewindow;

typedef struct WWWHandleEventData {
    u32 data[6];
} WWWHandleEventData;

typedef struct WWWRect {
    int x;  // 0x00
    int y;  // 0x04
    int w;  // 0x08
    int h;  // 0x0C
} WWWRect;

typedef struct WWWProtocolData {
    const char* filePath;      // 0x00
    const char* protocolName;  // 0x04
    void* wwwInternal;         // 0x08
} WWWProtocolData;

typedef struct WWWIMEData {
    u32 imeID;         // 0x00
    const char* text;  // 0x04
    u32 unk_0x08;
    u32 unk_0x0C;
    u32 unk_0x10;
    u32 unk_0x14;
    u32 unk_0x18;
    u32 maxLength;  // 0x1C
} WWWIMEData;

/*** JS TYPES ***/

typedef struct WWWJSPluginObj {
} WWWJSPluginObj;

typedef union {
    int jsInt;
    f64 /* ok */ jsFloat;
    f64 jsDouble;
    void* jsObj;
    const char* jsStr;
} WWWJSPluginValueData;

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
    void* unk_0x0C;
    void* unk_0x10;
    void* unk_0x14;
    void* unk_0x18;
    JSAllowAccess allowAccess;
} WWWJSCap;

#ifdef __cplusplus
}
#endif  // __cplusplus

#endif  // REVOLUTION_WWW_OPERA_TYPES_H
