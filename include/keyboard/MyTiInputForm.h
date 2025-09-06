#ifndef TEXTINPUT_MY_INPUT_FORM_H
#define TEXTINPUT_MY_INPUT_FORM_H

#include "tiInputForm.h"

#include <nw4r/lyt/pane.h>

namespace textinput {
    namespace extend {
        namespace memo {
            class NigaoeEventObserver {
                public :
                    virtual bool    onNigaoeButton()    { return false; }
                    
                    virtual void    pointNigaoeButton() {}
                    virtual void    leftNigaoeButton()  {}
                    virtual void    moveNigaoeButton()  {}
            };

            class InputForm : public textinput::InputForm {
                public:
                    ~InputForm();

                    virtual void                    setScroll(f32 scroll);
                    virtual void                    setAddScroll(f32 scroll, bool, bool);

                    virtual f32                     getScroll();
                    virtual f32                     getScrollFrom();
                    virtual f32                     getScrollTo();

                    virtual void                    open();
                    virtual void                    close();
                    virtual bool                    isWholePaneInAnimation();

                    virtual void                    setHeaderCaption(const wchar_t* headerCaption);
                    virtual void                    setMiiName(const wchar_t* miiName);
                    virtual void                    setTouchLetterCaption(const wchar_t* letterCaption);

                    virtual void                    onNigaoeButtonTrig();
                    virtual void                    onNigaoeButtonPoint();
                    virtual void                    onNigaoeButtonLeft();
                    virtual void                    setDefaultNigaoe();

                    virtual void                    onArrowRPoint();
                    virtual void                    onArrowRLeft();
                    virtual void                    onArrowLPoint();
                    virtual void                    onArrowLLeft();
                    virtual void                    onArrowRTrig();
                    virtual void                    onArrowLTrig();
                    
                    virtual void                    setNigaoeEventObserver(NigaoeEventObserver* nigaoeEventObserver)    { mpNigaoeEventObserver = nigaoeEventObserver; }
                    virtual nw4r::lyt::Pane*        getNigaoePane();
                    virtual nw4r::lyt::Material*    getNigaoePaneMaterial();

                    virtual f32                     getDrawBoxHeight();

                    virtual f32                     getScrollMin();
                    virtual f32                     getScrollMax();

                    virtual void                    beginDraw(const nw4r::ut::Rect& rect);
                    virtual void                    put(wchar_t ch);

                    virtual void                    createAnimation(MEMAllocator* allocator);

                    virtual void                    drawHeader();
                    virtual void                    drawBody();
                    virtual void                    drawFooter();

                    virtual void                    onCommandOnDispMode(INPUT_COMMAND command, void* arg);
                    virtual void                    onCommandOnEditMode(INPUT_COMMAND command, void* arg);

                    virtual void                    doAutoScroll();

                private:
                    u8                      unk_0x30C[0xD4];
                    NigaoeEventObserver*    mpNigaoeEventObserver;  // 0x3E0
                    u8                      unk_0x3E4[0x1C];
            };
        }
    }
    typedef extend::memo::InputForm MemoInputForm;
}

#endif // TEXTINPUT_MY_INPUT_FORM_H
