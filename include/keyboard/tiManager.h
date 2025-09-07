#ifndef TEXTINPUT_MANAGER_H
#define TEXTINPUT_MANAGER_H

#include "tiTextInputBase.h"
#include "tiInputForm.h"
#include "tiSaveData.h"
#include "tiHKBManager.h"
#include "tiHWKeyboard.h"

#include <nw4r/lyt/pane.h>
#include <nw4r/lyt/arcResourceAccessor.h>

#include <revolution/types.h>
#include <revolution/mem/allocator.h>

#include <stdio.h>

#include "tiSEId.h"

namespace textinput {
    class EventObserver {
        public:
            virtual void    onInput(CommandReceiver::INPUT_COMMAND command, void* data) {}
            virtual void    onCommand(CommandReceiver::INPUT_COMMAND command, void* data) {}
            virtual void    onEvent(nw4r::lyt::Pane* pane, u32 event) {}

            virtual void    onSE(sound::SE seId)    {}
            virtual void    onOK()                  { printf("OK!\n"); }
            virtual void    onCancel()              { printf("Cancel!\n"); }
            virtual void    onOutOfLength()         { printf("OutOfLength\n"); }
    };
    
    class Manager : public Base {
        public:
            Manager(MEMAllocator* allocator, nw4r::lyt::MultiArcResourceAccessor* multiArc, textinput::EventObserver* event);
            virtual ~Manager();

            virtual void                                create(MEMAllocator* allocator);

            virtual void                                init();

            virtual void                                calc();

            virtual void                                draw();

            virtual bool                                updateInput(int chan, f32 x, f32 y, u32 trig, u32 hold, u32 release);
            virtual bool                                updateInput(input::HKBManager& hkbManager);

            virtual void                                SetFont(nw4r::lyt::FontRefLink* fontLink);

            virtual wchar_t*                            getWCString() const;
            virtual void                                setWCString(const wchar_t* string);

            virtual void                                setLanguage(Language language);
            virtual Language                            getLanguage() const { return meLanguage; }

            virtual void                                setDestination(Destination destination);

            virtual void                                limitStringLength(u32 limitStringLength);
            virtual void                                limitRowNum(u32 limitRowNum);

            virtual void                                setAnimationOn(bool flag);
            
            virtual void                                setAspectRatio(bool b4x3);

            virtual void                                setSecretInputMode(bool secretInputMode) { mpInputForm->setSecretModeOn(secretInputMode); }

            virtual void                                setDefaultPredictionJP(int num, const char** predicts);
            virtual void                                setFixedPredictionJP(int num, const char** predicts);

            virtual void                                setTitleText(const wchar_t* titleText);

            virtual void                                start() {}
            virtual void                                end()   {}

            virtual inputform::Base*                    getInputForm()                          { return mpInputForm; }
            virtual const inputform::Base*              getInputForm() const                    { return mpInputForm; }
            
            virtual keyboard::hwkey::HWKeyboard*        getHWKeyboard()                         { return mpHWKeyboard; }
            virtual const keyboard::hwkey::HWKeyboard*  getHWKeyboard() const                   { return mpHWKeyboard; }
            
            virtual void*                               getPCKeyboard()                         { return mpPCKeyboard; }
            virtual const void*                         getPCKeyboard() const                   { return mpPCKeyboard; }
            
            virtual void*                               getCellPhoneKeyboard()                  { return mpCellPhoneKeyboard; }
            virtual const void*                         getCellPhoneKeyboard() const            { return mpCellPhoneKeyboard; }
            
            virtual void*                               getSignKeyboard()                       { return mpSignWindow; }
            virtual const void*                         getSignKeyboard() const                 { return mpSignWindow; }
            
            virtual void*                               getCandidateBox()                       { return mpCandidateBox; }
            virtual const void*                         getCandidateBox() const                 { return mpCandidateBox; }
            
            virtual void*                               getToolBar()                            { return mpToolBar; }
            virtual const void*                         getToolBar() const                      { return mpToolBar; }
            
            virtual void*                               getPredictLanguageSelectDialog()        { return mpPredictLanguageDialog; }
            virtual const void*                         getPredictLanguageSelectDialog() const  { return mpPredictLanguageDialog; }

            virtual inputform::EditBuffer*              createEditBuffer();
            virtual keyboard::hwkey::HWKeyboard*        createHWKeyboard();
            virtual void*                               createPCTypeKeyboard();
            virtual void*                               createCellPhoneTypeKeyboard();
            virtual InputForm*                          createInputForm();
            virtual void*                               createCandidateBox();
            virtual void*                               createToolBar();
            virtual void*                               createPredictLanguageDialog();
            virtual void*                               createSignWindow();

            virtual void                                setLayoutScaleFor16x9();
            virtual void                                setLayoutScaleFor4x3();

            void                                        enableCompatibleFilter(bool compatibleFilter);

        private:
            MEMAllocator*                           mpAllocator;                // 0x04
            nw4r::lyt::MultiArcResourceAccessor*    mpMultiArcResourceAccessor; // 0x08

            inputform::EditBuffer*                  mpEditBuffer;               // 0x0C

            keyboard::hwkey::HWKeyboard*            mpHWKeyboard;               // 0x10
            void*                                   mpPCKeyboard;               // 0x14
            void*                                   mpCellPhoneKeyboard;        // 0x18
            InputForm*                              mpInputForm;                // 0x1C
            void*                                   mpCandidateBox;             // 0x20
            void*                                   mpToolBar;                  // 0x24
            void*                                   mpPredictLanguageDialog;    // 0x28
            void*                                   mpSignWindow;               // 0x2C

            EventObserver*                          mpEventObserver;            // 0x30

            Destination                             meDestination;              // 0x34
            Language                                meLanguage;                 // 0x38

            bool                                    mbAspectRatio4x3;           // 0x3C
    };
}

#endif // TEXTINPUT_MANAGER_H
