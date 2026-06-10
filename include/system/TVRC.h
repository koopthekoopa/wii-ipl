#ifndef TV_REMOTE_CONTROL_H
#define TV_REMOTE_CONTROL_H

#include <revolution.h>

#ifdef __cplusplus
extern "C" {
#endif  // __cplusplus

enum {
    TVRC_COMMAND_MAP_NONE = -1,
    TVRC_COMMAND_MAP_POWER_OFF,
    TVRC_COMMAND_MAP_CHANGE_INPUT,
    TVRC_COMMAND_MAP_RIGHT,
    TVRC_COMMAND_MAP_LEFT,
    TVRC_COMMAND_MAP_UP,
    TVRC_COMMAND_MAP_DOWN,
    TVRC_COMMAND_MAP_6,
    TVRC_COMMAND_MAP_7,
    TVRC_COMMAND_MAP_MAX,
};

/* from tvrc_DB.arc from 2.2 */
enum {
    TVRC_MAKER_NONE = 0,
    TVRC_MAKER_PANASONIC,
    TVRC_MAKER_SANYO,
    TVRC_MAKER_SHARP,
    TVRC_MAKER_FUJITSU,
    TVRC_MAKER_SONY,
    TVRC_MAKER_TOSHIBA,
    TVRC_MAKER_NEC,
    TVRC_MAKER_PIONEER,
    TVRC_MAKER_HITACHI,
    TVRC_MAKER_FUNAI,
    TVRC_MAKER_VICTOR,
    TVRC_MAKER_MITSUBISHI,
    TVRC_MAKER_AIWA,
};

typedef struct tagSTVRCSettings {
    u32 magic;  // 0x00
    u32 unk_0x04;
    u32 unk_0x08;
    u32 modelMakerID;                     // 0x0C
    u32 modelType;                        // 0x10
    u8 commandMap[TVRC_COMMAND_MAP_MAX];  // 0x14
    u8 padding_0x1C[4];                   // ?
} TVRCSettings;

#define TVRC_SETTINGS_MAGIC 0x35465768 /* "5FWh" */

#define TVRC_DATABASE_LENGTH 0x1000

BOOL TVRCInit(void* pRsrc);
BOOL TVRCSetModelType(int makerID, int typeNo, void* pFileData, int length);
void TVRCSetRepeatTimeout(u32 value);
BOOL TVRCSendStartAsync(s32 cmd);
BOOL TVRCSendStopAsync();
BOOL TVRCIsActive();
BOOL TVRCIsValidCommand(int cmd);

#ifdef __cplusplus
}
#endif  // __cplusplus

#endif  // TV_REMOTE_CONTROL_H
