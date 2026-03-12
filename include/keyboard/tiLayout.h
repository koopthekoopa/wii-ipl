#ifndef TEXTINPUT_LAYOUT_H
#define TEXTINPUT_LAYOUT_H

#include <revolution/types.h>

#include <nw4r/lyt/animation.h>
#include <nw4r/lyt/layout.h>

#include <nw4r/lyt/textbox.h>

namespace textinput {
    class AnimTransformPane : public nw4r::lyt::AnimTransformBasic {
        public:
            virtual ~AnimTransformPane() {}

            virtual void    SetResource(const nw4r::lyt::res::AnimationBlock* pRes, nw4r::lyt::ResourceAccessor* pResAccessor);

            virtual void    Bind(nw4r::lyt::Pane* pane, bool bRecursive);
            virtual void    Bind(nw4r::lyt::Material* pMaterial);

            void            ForceBind(nw4r::lyt::Pane* pane, const char* name);

        private:
            u32             CountAnimForPane_(const char* name);
            u32             CountAnimForPane_(nw4r::lyt::Pane* pane, bool bRecursive);
    };

    class TiLayout : public nw4r::lyt::Layout {
        public:
            virtual ~TiLayout() {}

            virtual nw4r::lyt::AnimTransform*   CreateAnimTransform(const void* anmResBuf, nw4r::lyt::ResourceAccessor* pResAcsr);
    };

    class PaneAccessor {
        public:
            PaneAccessor(nw4r::lyt::Pane* rootPane, nw4r::lyt::Pane* pane) :
            mpPane(pane),
            mpRootPane(rootPane) {}

            PaneAccessor(nw4r::lyt::Layout* layout) :
            mpPane(NULL),
            mpRootPane(NULL) {
                if (layout != NULL) {
                    mpRootPane = layout->GetRootPane();
                    mpPane = mpRootPane;
                }
            }

            nw4r::lyt::Pane*        GetPane()               { return mpPane; }

            PaneAccessor            GetNextPane();

            bool                    GotPane() const        { return mpPane != NULL ? true : false; }
            bool                    GotRootPane() const    { return mpRootPane != NULL ? true : false; }
        
        private:
            nw4r::lyt::Pane*    mpRootPane; // 0x00
            nw4r::lyt::Pane*    mpPane;     // 0x04
    };
}

#endif // TEXTINPUT_LAYOUT_H
