#ifndef IPL_SCENE_SETTING_SELECT_ARG_H
#define IPL_SCENE_SETTING_SELECT_ARG_H

namespace ipl {
    namespace scene {
        class SettingSelectArg {
        public:
            enum {
                ARG_START_NORMAL = 0,
                ARG_START_SAVE_DATA,
                ARG_START_AFTER_REBOOT,
            };
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_SETTING_SELECT_ARG_H
