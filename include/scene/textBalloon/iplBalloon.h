#ifndef IPL_SCENE_BALLOON_H
#define IPL_SCENE_BALLOON_H

#include <revolution/types.h>

#include "layout/iplLayout.h"

namespace ipl {
    namespace scene {
        class TextBalloon {
            public:
                TextBalloon(EGG::Heap* heap, nand::LayoutFile* file, const char* unk0, const char* unk1, const ipl::math::VEC3& unk2, f32 unk3, f32 unk4);
                ~TextBalloon();

                void    calc();
                void    draw();

                void    init(const wchar_t* text, u32 unk0);

                void    terminate();

                void    fadein();
                void    fadeinNoSetTextbox();

                void    fadeout();
                void    fadeoutForce();

                void    setPos(const math::VEC3& pos, bool unk0, int unk1);
                void    updatePos(const math::VEC3& pos);

            private:
                void                    on_pre_fadein();
                void                    anm_fadein();

                void                    set_translate(const math::VEC3& trans);
                void                    set_textbox(const wchar_t* text, BOOL bNoLimit = FALSE);

                void                    set_size(const char* paneName, const nw4r::lyt::Size& size);
                const nw4r::lyt::Size*  get_size(const char* paneName);

                undefined4      unk_0x00;
                undefined4      unk_0x04;
                BOOL            unk_0x08;

                layout::Object* mpLayout;       // 0x0C

                undefined4      unused_0x10;

                wchar_t*        mpText;         // 0x14

                u32             mTextLen;       // 0x18
                math::VEC3      mBalloonPos;    // 0x1C
                undefined4      unk_0x28;
                undefined       unk_0x2C;
                f32             unk_0x30;
                f32             unk_0x34;
                int             unk_0x38;
        };
    }
}

#endif // IPL_SCENE_TEXT_BALLOON_H
