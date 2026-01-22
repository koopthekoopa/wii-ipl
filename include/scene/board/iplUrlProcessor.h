#ifndef IPL_SCENE_URL_PROCESSOR_H
#define IPL_SCENE_URL_PROCESSOR_H

#include <revolution/types.h>

#include <nw4r/ut/WideTagProcessor.h>
#include <nw4r/ut/List.h>
#include <nw4r/ut/LinkList.h>
#include <nw4r/math/types.h>

#include <revolution/wpad.h>

namespace ipl {
    namespace scene {
        class UrlProcessor : public nw4r::ut::WideTagProcessor {
            public:
                class line_collision {
                    public:
                        line_collision() : 
                        unk_0x00(0.0f),
                        unk_0x04(0.0f),
                        unk_0x08(0.0f) {}

                        f32             unk_0x00;
                        f32             unk_0x04;
                        f32             unk_0x08;
                        nw4r::ut::Link  mLinkList;  // 0x0C
                };

                class url_collision {
                    public:
                        url_collision();
                        ~url_collision();

                        int             unk_0x00;
                        wchar_t*        unk_0x04;
                        wchar_t*        unk_0x08;
                        nw4r::ut::Link  mLinkList;          // 0x0C
                        nw4r::ut::List  mLineCollisions;    // 0x14
                };

                UrlProcessor();

                nw4r::ut::Operation Process(u16 code, nw4r::ut::PrintContext<wchar_t>* context);

                void                init();
                void                update();

                void                destroy();

                void                clear_prev_drawing();

                void                make_collision(nw4r::ut::PrintContext<wchar_t>* context, u16 code);
                void                parse(nw4r::ut::PrintContext<wchar_t>* context);

                BOOL                is_focused() const;
                void                select(int unk);

                int                 get_focused_tagno(int chan) const;
                url_collision*      get_selected_col();

                void                get_url(char* urlOut, u32 urlLen);

                void                setUnk_0x40(f32 val)    { unk_0x40 = val; }
                void                setUnk_0x44(f32 val)    { unk_0x44 = val; }
                void                setUnk_0x53(bool val)   { unk_0x53 = val; }

                u8                  getUnk_0x50() const     { return unk_0x50; }
                void                setUnk_0x50(u8 val)     { unk_0x50 = val; }

            private:
                typedef struct {
                    nw4r::math::VEC2    pos;
                    bool                valid;
                } con_data;

                con_data            mConData[WPAD_MAX_CONTROLLERS]; // 0x00
                nw4r::ut::List      mUrlCollisions;                 // 0x34
                f32                 unk_0x40;
                f32                 unk_0x44;
                int                 unk_0x48;
                int                 unk_0x4C;
                u8                  unk_0x50;
                u8                  unk_0x51;
                u8                  unk_0x52;
                u8                  unk_0x53;
        };
    }
}

#endif // IPL_SCENE_URL_PROCESSOR_H
