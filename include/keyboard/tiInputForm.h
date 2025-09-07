#ifndef TEXTINPUT_INPUT_FORM_H
#define TEXTINPUT_INPUT_FORM_H

#include <revolution/types.h>

#include <revolution/mem/allocator.h>

#include "tiTextInputBase.h"
#include "tiTextDrawer.h"
#include "tiCandidateBox.h"
#include "tiNw4rManager.h"
#include "tiZiString.h"
#include "tiSEId.h"

namespace textinput {
    namespace inputform {
        class EditBuffer {
            public:
                ~EditBuffer();

            private:
                void*           mpString;       // 0x04
                void*           mpUnfixString;  // 0x08
                void*           mpZiString;     // 0x0C
                MEMAllocator*   mpAllocator;    // 0x10
        };

        class Base : public CommandReceiver, public textdrawer::Base, public candidatebox::CandidateBoxCaller {
            public:
                typedef enum PredictMode {
                    PM_Off,
                    PM_Atok,
                    PM_USEn,
                    PM_USFr,
                    PM_USSp,
                    PM_En,
                    PM_De,
                    PM_Fr,
                    PM_Sp,
                    PM_It,
                    PM_Nl,

                    PM_End
                } PredictMode;

                virtual ~Base();

                virtual void                create(MEMAllocator* allocator, EditBuffer* editBuffer);

                virtual void                updateCandidateState_();

                virtual wchar_t*            getWCString() const;
                virtual void*               getAtokString();
                virtual wchar_t             getCandidate() const;
                virtual u32                 getCursorPos();

                virtual void                setFont(const nw4r::ut::Font& font);

                virtual bool                isEditMode();
                virtual bool                checkHeadOfSentence(bool);

                virtual void                setDestination(Destination destination);

                virtual void                limitStringLength(u32 limitStringLength);
                virtual void                limitRowNum(u32 limitRowNum);

                virtual void                doWordWrap(bool wordWrap);

                virtual void                setLineDrawInfo(bool lineDraw, u32 lineCount);

                virtual void                setLanguage(Language language);

                virtual void                setPredictMode(PredictMode predictMode);
                virtual PredictMode         getPredictMode();

                virtual u32                 isOverRowLimit(u32 limitRowNum, const wchar_t* string);

                virtual bool                findURL(u32*, u32*, const wchar_t*, u32, u32);

                virtual bool                isInScroll();

                virtual void                setAtokDictionary(void* atokDict, int atokDictSize, void* apotDict, int apotDictSize, void* nintendoDict, int nintendoDictSize);
                virtual void                closeAtokDictionary();
                virtual bool                isAtokDictionaryOpened();

                void setZiDictionary(void* ziDict, void* ziOemDict)  { 
                    mpZiString->openDictionary(ziDict, ziOemDict);
                    initZiString(); resetContextPredict_(); 
                }

                void                        initZiString();
                void                        resetContextPredict_();

                virtual void                enableSpaceByRight(bool rightWithSpace);
                virtual void                onClose();
                virtual bool                canConvert();

                virtual void                setString(const wchar_t* string);

                virtual void                draw();
                virtual void                calc();

                virtual void                doBeforeDrawProcess(const wchar_t*, u32, const DrawInfo& drawInfo);
                virtual void                doAfterDrawProcess(const wchar_t*, u32, const DrawInfo& drawInfo);

                virtual void                preDraw(u32);
                virtual void                finishDraw(u32);

                virtual void                doLineFeed();

                virtual bool                onCursor(CursorPos* cursorPos);

                virtual bool                isOverLine(const DrawInfo& drawInfo);

                virtual void                drawCursor(f32 x, f32 y);

                virtual void                doScroll(Scroll* scroll);
                virtual void                autoScroll();

                virtual bool                doWordWrap(const wchar_t* string, u32, f32);
                virtual void                drawFixString(u32);

                virtual void                onSE(sound::SE seId);

                virtual void                clear();

                virtual u32                 calcCursorPos(f32 x, f32 y); 

                virtual nw4r::math::VEC2    getGlobalLeftTopPos() const;
                virtual nw4r::math::VEC2    getScale() const;
                
                virtual void                moveCursorUp();
                virtual void                moveCursorDown();
                virtual void                onPressUp();
                virtual void                onPressDown();
                virtual void                onPressLeft();
                virtual void                onPressRight();

                virtual void                makeUpCursorPos(CursorPos* cursorPos, u32 pos, s32 startLine, s32 endLine);

            private:
                u8                  unk_0x120[0x4C];
                tistring::WithZi*   mpZiString; // 0x16C
                u8                  unk_0x16C[0xA8];
        };

        class LayoutByNW4R : public Base, public nw4rmanager::Layout {
            public:
                ~LayoutByNW4R();

                virtual void                init();
                virtual void                onCommand(INPUT_COMMAND command, void* data);

                virtual void                create(MEMAllocator* allocator, EditBuffer* editBuffer);

                virtual void                setLanguage(Language language);

                virtual void                draw();
                virtual void                calc();

                virtual nw4r::math::VEC2    getScale() const;

                virtual void                updateInput(int chan, u32 trig, u32 hold, u32 release, void* data);
                virtual bool                updateInput(int chan, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data);
                virtual bool                updateInput(textinput::input::HKBManager& hkbManager);

                virtual bool                isAbleToUp();
                virtual bool                isAbleToDown();

                virtual void                setRootPaneScaleFor16x9();
                virtual void                setRootPaneScaleFor4x3();

                virtual void                visibleSeparator(bool flag);

            private:
                u8  unk_0x2C0[0x4C];
        };
    }
    typedef inputform::LayoutByNW4R InputForm;
    typedef inputform::Base InputFormBase;
}

#endif // TEXTINPUT_INPUT_FORM_H
