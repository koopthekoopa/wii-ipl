#ifndef TEXTINPUT_INPUT_FORM_H
#define TEXTINPUT_INPUT_FORM_H

#include <revolution/types.h>

#include <revolution/mem/allocator.h>
#include <revolution/kpr.h>

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

        class DeadKeyStream {
        private:
            KPRQueue mKPRQueue;  // 0x00
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
                    PM_11, // Cn?
                    PM_12, // Kr?

                    PM_End
                } PredictMode;

                // TODO - location?
                enum InputMode {
                    IM_Direct,
                    IM_ROMAN,
                    IM_End,
                };

                // TODO - location?
                enum ScrollFlag {
                    SF_NoScroll,
                    SF_ScrollOn,
                    SF_ScrollByBS,
                    SF_End,
                };

                struct Info_ {
                    u16 Back;
                    u16 Next;
                    u16 StrCount;
                    u16 DispRowCount;
                };

                // TODO - location
                class RowInfoManager {
                private:
                    Info_* mpInfo;              // 0x00
                    u16 mMaxLength;             // 0x04
                    MEMAllocator* mpAllocator;  // 0x08
                };

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

                void setZiDictionary(void* ziOemDict, void* ziDict)  { 
                    mpZiString->openDictionary(ziDict, ziOemDict);
                    initZiString();
                    resetContextPredict_(); 
                }

                void                        initZiString();
                void                        resetContextPredict_();

                void                        notifyChangeMode();

                void                        setCursorSelectFlg(bool flag) { mbCursorSelected = flag; }
                void                        deselectCandidate();

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
                Rect mRect;                         // 0x120
                nw4r::math::MTX34 mMtx;             // 0x130
                Destination meDestination;          // 0x160
                tistring::Decolated* mpString;      // 0x164
                tistring::WithAtok* mpUnfixString;  // 0x168
                tistring::WithZi* mpZiString;       // 0x16C
                InputMode meInputMode;              // 0x170
                PredictMode mePredictMode;          // 0x174
                bool mbPredictOn;                   // 0x178
                bool mbDoWordWrap;                  // 0x179
                bool mbRightWithSpace;              // 0x17A
                bool mbPadding;                     // 0x17B
                f32 mfCursorX;                      // 0x17C
                f32 mfCursorY;                      // 0x180
                f32 mfScrollX;                      // 0x184
                f32 mfScrollY;                      // 0x188
                util::Animation mScrollAnm;         // 0x18C
                f32 mfSustainTimer;                 // 0x1AC
                ScrollFlag meScrollFlag;            // 0x1B0
                u32 muWordWrapCounter;              // 0x1B4
                u32 muLimitStringLength;            // 0x1B8
                u32 muLimitRowNum;                  // 0x1BC
                GXColor mSelectedColor;             // 0x1C0
                f32 mfCursorTimer;                  // 0x1C4
                u8 muGlobalAlpha;                   // 0x1C8
                u8 muPaddint;                       // 0x1C9
                nw4r::ut::Color mCharColor;         // 0x1CC
                MEMAllocator* mpAllocator;          // 0x1D0
                Manager* mpManager;                 // 0x1D4
                DeadKeyStream mDKStream;            // 0x1D8
                Language meLanguage;                // 0x1F0
                bool mbZuSelected;                  // 0x1F4
                bool mbCursorSelected;              // 0x1F5
                RowInfoManager mriManager;          // 0x1F8
                Info_* mpCursorLine;                // 0x204
                Info_* mpDrawEndLine;               // 0x208
                u16 mCursorLinePos;                 // 0x20C
                bool mbLineDraw;                    // 0x20E
                u32 muSpecifyLineDrawCount;         // 0x210
                u32 muCursorTimer;                  // 0x214
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

                virtual void                updateInputCommon(int chan, u32 trig, u32 hold, u32 release, void* data);
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
