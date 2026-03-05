#ifndef HOME_BUTTON_ANIM_CONTROLLER_H
#define HOME_BUTTON_ANIM_CONTROLLER_H

#include "homebutton/HBMFrameController.h"

#include <nw4r/lyt.h>

namespace homebutton {
    class GroupAnmController : public FrameController {
        public:
            GroupAnmController();
            virtual ~GroupAnmController();  // 0x08

            void do_calc();

        public:
            nw4r::lyt::Group*           mpGroup;        // 0x20
            nw4r::lyt::AnimTransform*   mpAnimGroup;    // 0x24
    };

} 

#endif // HOME_BUTTON_ANIM_CONTROLLER_H
