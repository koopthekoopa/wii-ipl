#ifndef TEXTINPUT_MY_LETTER_FORM_H
#define TEXTINPUT_MY_LETTER_FORM_H

#include "MyTiInputForm.h"

namespace textinput {
    namespace extend {
        namespace letter {
            class InputForm : public textinput::MemoInputForm {
                public:
                    typedef enum Type {
                        T_MailAddressSel = 0,
                        T_Address,
                        T_Picture,
                        T_Reply,
                        T_Last,
                    } Type;

                    virtual nw4r::lyt::Material*    getPhotoPaneMaterial();

                    virtual void                    onPhotoTrig();
                    virtual void                    onPhotoPoint();
                    virtual void                    onPhotoLeft();
                    virtual bool                    isPhotoScaledUp();
                    virtual void                    setPhotoDraw(bool photoDraw)   { mbPhotoDraw = photoDraw; }

                    virtual void                    setType(Type type)             { meType = type; }

                    virtual void                    setSendOutMessage(const wchar_t* sendOutMessage);

                    void                            resizePhotoPane(f32 width, f32 height);

                private:
                    u8      unk_0x400;
                    bool    mbPhotoDraw;    // 0x401
                    Type    meType;         // 0x404
            };
        }
    }
    typedef extend::letter::InputForm LetterInputForm;
}

#endif // TEXTINPUT_MY_LETTER_FORM_H
