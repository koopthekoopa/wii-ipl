#ifndef TEXTINPUT_INPUT_FORM_H
#define TEXTINPUT_INPUT_FORM_H

#include <revolution/types.h>

#include <revolution/kpr.h>
#include <revolution/mem/allocator.h>

#include "tiCandidateBox.h"
#include "tiNw4rManager.h"
#include "tiSEId.h"
#include "tiTextDrawer.h"
#include "tiTextInputBase.h"

#include "tiAtokString.h"  // This needs to be last here to link
#include "tiZiString.h"

namespace textinput {
    namespace inputform {
        struct VisiblePane {
            u16 showCount;                 // 0x00
            u16 hideCount;                 // 0x02
            const char* showPaneNames[4];  // 0x04
            const char* hidePaneNames[4];  // 0x14
        };
        struct LanguageDependencyData {
            const VisiblePane* pane;       // 0x0
            const char* sepBarPaneName;    // 0x4
            const char* mainTextBoxName;   // 0x8
            const char* titleTextBoxName;  // 0xC
        };

        struct AnimationFile {
            u32 id;
            char fileName[0x40];
        };
        struct PaneToAnimation {
            u32 type;                         // 0x00
            const char* paneName;             // 0x04
            u32 count;                        // 0x08
            const char* forceAddName;         // 0x0C
            const AnimationFile* pAnims[12];  // 0x10
        };

        class AnmPane;
        class EventHandler;

        class EditBuffer {
        public:
            EditBuffer() : mpString(NULL), mpUnfixString(NULL), mpZiString(NULL), mpAllocator(NULL) {}
            virtual ~EditBuffer();

            void create(MEMAllocator* allocator);

            tistring::Decolated* getString() { return mpString; }
            tistring::WithAtok* getUnfixString() { return mpUnfixString; }
            tistring::WithZi* getZiString() { return mpZiString; }

        private:
            tistring::Decolated* mpString;      // 0x04
            tistring::WithAtok* mpUnfixString;  // 0x08
            tistring::WithZi* mpZiString;       // 0x0C
            MEMAllocator* mpAllocator;          // 0x10
        };

        class DeadKeyStream {
        public:
            DeadKeyStream() {
                KPRInitRegionUS();
                init();
            }

            void init() {
                KPRInitQueue(&mKPRQueue);
                KPRSetMode(&mKPRQueue, KPR_MODE_DEADKEY);
            }

            void putSpace(wchar_t ch) {
                if (ch == L' ' && KPRLookAhead(&mKPRQueue, NULL, 0)) {
                    KPRPutChar(&mKPRQueue, -1);
                } else {
                    KPRPutChar(&mKPRQueue, ch);
                }
            }

            void clearQueue() { KPRClearQueue(&mKPRQueue); }

            u8 getAvailable() { return mKPRQueue.oCount; }
            wchar_t getChar() { return KPRGetChar(&mKPRQueue); }

            static wchar_t ToCombineClass(Language, wchar_t);
            static wchar_t ToIndependentClass(wchar_t);

            static void setCompatibleFilterEnabled(bool enabled) { sbCompatibleFilterEnabled = enabled; }
            static bool isCompatibleFilterEnabled() { return sbCompatibleFilterEnabled; }

        private:
            KPRQueue mKPRQueue;  // 0x00

            static bool sbCompatibleFilterEnabled;
        };

        class Base : public CommandReceiver, public textdrawer::Base, public candidatebox::CandidateBoxCaller {
        public:
            typedef enum PredictMode {
                PM_Off = 0,
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
                PM_Cn,
                PM_Kr,

                PM_End
            } PredictMode;

            // TODO - location?
            enum InputMode {
                IM_Direct = 0,
                IM_ROMAN,
                IM_End,
            };

            // TODO - location?
            enum ScrollFlag {
                SF_NoScroll = 0,
                SF_ScrollOn,
                SF_ScrollByBS,
                SF_End,
            };

            class RowInfoManager;
            struct Info_ {
            public:
                void initAt(u16 idx) {
                    Back = idx - 1;
                    Next = idx + 1;
                    StrCount = 0;
                    DispRowCount = 0;
                }
                void setPair(u16 back, u16 next) {
                    Back = back;
                    Next = next;
                }

                void setBack(u32 val) { Back = val; }
                u16 getBack() { return Back; }

                void setNext(u32 val) { Next = val; }
                u16 getNext() { return Next; }

                void setStrCount(u16 val) { StrCount = val; }
                u16 getStrCount() { return StrCount; }

                void setDispRowCount(u16 val) { DispRowCount = val; }
                u16 getDispRowCount() { return DispRowCount; }

                void insert(RowInfoManager* list, u16 afterIdx, u16 beforeIdx) {
                    Back = afterIdx;
                    Next = beforeIdx;

                    Info_* after = list->getIdx(afterIdx);
                    Info_* before = list->getIdx(beforeIdx);

                    after->setNext(list->mMaxLength);
                    before->setBack(list->mMaxLength);
                }
                u16 insertAfter(RowInfoManager* list, u16 nodeIdx) {
                    u16 afterIdx, beforeIdx;
                    Info_ *after, *before;

                    beforeIdx = list->getIdx(list->mMaxLength + 1)->getBack();
                    before = list->getIdx(list->getIdx(list->mMaxLength + 1)->getBack());
                    if (nodeIdx == (u16)nodeIdx) {
                        afterIdx = before->getNext();
                        after = list->getIdx(before->getNext());

                        setBack(after->getBack());
                        setNext(afterIdx);

                        before->setNext(nodeIdx);
                        after->setBack(nodeIdx);
                    }

                    return nodeIdx;
                }

                u16 remove(RowInfoManager* list) {
                    u16 afterIdx = getNext();
                    u16 beforeIdx = getBack();

                    Info_* after = list->getIdx(getNext());
                    Info_* before = list->getIdx(getBack());

                    u16 removedIdx = after->getBack();

                    after->setBack(beforeIdx);
                    before->setNext(afterIdx);
                    setPair(removedIdx, removedIdx);

                    return removedIdx;
                }

                Info_* accquire(RowInfoManager* list) {
                    insertAfter(list, remove(list));

                    setStrCount(0);
                    setDispRowCount(1);

                    return this;
                }

            private:
                u16 Back;
                u16 Next;
                u16 StrCount;
                u16 DispRowCount;
            };

            // TODO - location
            class RowInfoManager {
            public:
                RowInfoManager(u16 maxLength) : mpInfo(NULL), mMaxLength(maxLength), mpAllocator(NULL) {}
                ~RowInfoManager() {
                    // @bug This should *probably* check if mpInfo is NULL
                    MEMFreeToAllocator(mpAllocator, mpInfo);
                }

                Info_* create(MEMAllocator* allocator);
                void init();

            private:
                Info_* findFree();
                Info_* getIdx(u16 idx) { return &mpInfo[idx]; }
                Info_* getLast() const { return &mpInfo[mMaxLength]; }
                // Info_* getFreeRoot() const { return getIdx(mMaxLength + 1); }

                u16 getMaxLen() const { return mMaxLength; }
                void initUsedList() {
                    Info_* usedRoot = getIdx(getMaxLen() + 1);
                    usedRoot->setBack(getMaxLen() + 1);
                    usedRoot->setNext(getMaxLen() + 1);
                }

                friend class Info_;

                Info_* mpInfo;              // 0x00
                u16 mMaxLength;             // 0x04
                MEMAllocator* mpAllocator;  // 0x08
            };

            Base(Manager* manager);
            virtual ~Base();

            virtual void create(MEMAllocator* allocator) override {}
            virtual void init() override;
            virtual void onCommand(INPUT_COMMAND command, void* data) override;

            virtual void create(MEMAllocator* allocator, EditBuffer* editBuffer);
            virtual void updateCandidateState_();

            virtual wchar_t* getWCString() const { return mpString->getWCString(); }
            virtual tistring::WithAtok* getAtokString() { return mpUnfixString; }
            virtual wchar_t getCandidate() const { return mpString->getCandidate(); }
            virtual u32 getCursorPos();

            virtual void setFont(const nw4r::ut::Font& font) override;

            virtual bool isEditMode();
            virtual bool checkHeadOfSentence(bool);

            virtual void setDestination(Destination destination);

            virtual void limitStringLength(u32 limitStringLength) { muLimitStringLength = limitStringLength; }
            virtual void limitRowNum(u32 limitRowNum) {
                muLimitRowNum = limitRowNum;
                if (limitRowNum == 1)
                    doWordWrap(false);
            }

            virtual void doWordWrap(bool wordWrap) { mbDoWordWrap = wordWrap; }

            virtual void setLineDrawInfo(bool lineDraw, u32 lineCount) {
                mbLineDraw = lineDraw;
                muSpecifyLineDrawCount = lineCount;
            }

            virtual void setLanguage(Language language);

            virtual void setPredictMode(PredictMode predictMode);
            virtual PredictMode getPredictMode();

            virtual u32 isOverRowLimit(u32 limitRowNum, const wchar_t* string);

            virtual bool findURL(u32*, u32*, const wchar_t*, u32, u32);

            virtual bool isInScroll() { return mScrollAnm.isActive(); }

            virtual void setAtokDictionary(void* atokDict, int atokDictSize, void* apotDict, int apotDictSize, void* nintendoDict,
                                           int nintendoDictSize);
            virtual void closeAtokDictionary();
            virtual bool isAtokDictionaryOpened() { return mpUnfixString->isDictionaryOpened(); }

            void setZiDictionary(void* ziOemDict, void* ziDict) {
                mpZiString->openDictionary(ziDict, ziOemDict);
                initZiString();
                resetContextPredict_();
            }

            void initZiString();
            void resetContextPredict_();

            void notifyChangeMode();

            void setCursorSelectFlg(bool flag) { mbCursorSelected = flag; }
            void deselectCandidate();

            virtual void enableSpaceByRight(bool rightWithSpace) { mbRightWithSpace = rightWithSpace; }
            virtual void onClose();
            virtual bool canConvert();

            virtual void setString(const wchar_t* string);

            virtual void draw() override;
            virtual void calc();

            virtual void doBeforeDrawProcess(const wchar_t*, u32, const DrawInfo& drawInfo) override;
            virtual void doAfterDrawProcess(const wchar_t*, u32, const DrawInfo& drawInfo) override {}

            virtual void preDraw(u32) override;
            virtual void finishDraw(u32) override {}

            virtual void doLineFeed() override;

            virtual bool onCursor(CursorPos* cursorPos) override;

            virtual bool isOverLine(const DrawInfo& drawInfo);

            virtual void drawCursor(f32 x, f32 y) override;

            virtual void doScroll(Scroll* scroll);
            virtual void autoScroll();

            virtual bool doWordWrap(const wchar_t* string, u32, f32);
            virtual void drawFixString(u32);

            virtual void onSE(sound::SE seId) {}

            virtual void clear();

            virtual s32 calcCursorPos(f32 x, f32 y);

            virtual nw4r::math::VEC2 getGlobalLeftTopPos() const;
            virtual nw4r::math::VEC2 getScale() const override { return nw4r::math::VEC2(1.0f, 1.0f); }

            virtual void moveCursorUp();
            virtual void moveCursorDown();
            virtual void onPressUp();
            virtual void onPressDown();
            virtual void onPressLeft();
            virtual void onPressRight();

            virtual void makeUpCursorPos(CursorPos* cursorPos, u32 pos, s32 startLine, s32 endLine) override;

            bool isAtokActive() const;

            void setCursorPos(tistring::Decolated* string, u32 newPos);

            void calcCursorTimer();

            void onHKBCtrlCode(textinput::HVKCode code, u32 param_3);
            void onSpaceKeyHWKB(u32 param_3);

            void moveCandidateToIdx(s32);

            void onPressDownHWKB();
            void onPressLeftHWKB();
            void onPressRightHWKB();

            bool isVacancy() const;
            void dirtyCacheAll();

            void resetRelation();

            bool isPredictOn() const { return mbPredictOn; }

        protected:
            void confirmInput_();
            void inputInputting_(wchar_t ch);
            void confirmInputting_(wchar_t ch, bool param_3, u16 param_4, bool param_5, void* param_6);
            void inputCharZi_(wchar_t ch, u32 param_3);
            void inputCharDefault_(wchar_t ch, u32 param_3);
            void toggleAtokMode_(u8 atokMode);

            tistring::Decolated* getCurrentString(bool allowIsFix);

            void moveCandAtok_(int by) {
                s16 newIdx = mpUnfixString->getSelectedConverting() + by;
                if (newIdx >= mpUnfixString->getCurrentNumPredicted()) {
                    newIdx = 0;
                } else if (newIdx < 0) {
                    newIdx = mpUnfixString->getCurrentNumPredicted() - 1;
                }
                moveCandidateToIdx(newIdx);
            }

            f32 getCursorY() { return mfCursorY; }
            f32 getScrollY() { return mfScrollY; }

            bool hasZiPredicted_() const {
                if (!mbPredictOn)
                    return false;

                if (mePredictMode != PM_Atok && mpZiString->getCurrentNumPredicted() > 0)
                    return true;
                else
                    return false;
            }
            bool hasZiCandidates_() const;

            void commitZi_();

            nw4r::ut::Rect mRect;               // 0x120
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
            u8 muPaddint[3];                    // 0x1C9
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
            LayoutByNW4R(Manager* manager, nw4r::lyt::MultiArcResourceAccessor* resAccessor, const char* layoutBinName, EventObserver* event,
                         const char* fontName);
            ~LayoutByNW4R();

            virtual void init() override;
            virtual void onCommand(INPUT_COMMAND command, void* data) override;

            virtual void create(MEMAllocator* allocator, EditBuffer* editBuffer) override;

            virtual void setLanguage(Language language) override;

            virtual void draw() override;
            virtual void calc() override;

            virtual void onSE(sound::SE seId) override;

            virtual nw4r::math::VEC2 getScale() const override;

            virtual void updateInputCommon(int chan, u32 trig, u32 hold, u32 release, void* data);
            virtual bool updateInput(int chan, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data) override;
            virtual bool updateInput(textinput::input::HKBManager& hkbManager) override;
            void updateRepeatInput(u32 trig, u32 hold);
            // bool

            virtual bool isAbleToUp() { return mbAbleToUp; }
            virtual bool isAbleToDown() { return mbAbleToDown; }

            virtual void setRootPaneScaleFor16x9() override;
            virtual void setRootPaneScaleFor4x3() override;

            virtual void visibleSeparator(bool flag);

            inline const char* getPaneNameB_() const;

        private:
            nw4r::lyt::TextBox* setupTextBox_();

            const char* unk_0x2C0;                        // 0x2C0, some pane name
            const LanguageDependencyData* mpLangDepData;  // 0x2C4, // TODO: LangDependencyData type
            const char* mpFontName;                       // 0x2C8
            bool mbAbleToUp;                              // 0x2CC
            bool mbAbleToDown;                            // 0x2CD
            bool mbVisibleSeparator;                      // 0x2CE
            EventHandler* mpEventHandler;                 // 0x2D0
            nw4r::ut::ResFont mFont;                      // 0x2D4
            int mRepeatTimerA;                            // 0x2EC
            int mRepeatTimerB;                            // 0x2F0
            int mRepeatTimerC;                            // 0x2F4
            int mRepeatTimerD;                            // 0x2F8
            int mRepeatTimerE;                            // 0x2FC
            u32 unused_0x300;                             // 0x300
            u32 unk_0x304;                                // 0x304, flags?
        };

        class EventHandler : public nw4rmanager::TiEventHandler {
        public:
            EventHandler(LayoutByNW4R* lyt) { mpLyt = lyt; }
            void onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) override;

        private:
            LayoutByNW4R* mpLyt;
        };
        class AnmPane : public nw4rmanager::AnmPane {
        public:
            AnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : nw4rmanager::AnmPane(pane, observer), mCurrAnimId(0) {}

            virtual void init() override { mCurrAnimId = 0; }                                                           // 0x08
            virtual void changeAnimation(u32 id) override { nw4rmanager::AnmPane::changeAnimation(mCurrAnimId = id); }  // 0x14

            virtual u32 getKeyType() const { return mKeyType; }  // 0x24
            virtual int getState() { return mCurrAnimId; }       // 0x28

        protected:
            int mCurrAnimId;
            u32 mKeyType;
        };
        class NormalButtonAnmPane : public AnmPane {
        public:
            NormalButtonAnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : AnmPane(pane, observer) { mKeyType = 0; }

            virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10
        };

        class Sample : public LayoutByNW4R {
        public:
            Sample(Manager* manager, nw4r::lyt::MultiArcResourceAccessor* resAccessor, const char* layoutBinName, EventObserver* event,
                   const char* fontName)
                : LayoutByNW4R(manager, resAccessor, layoutBinName, event, fontName) {}
        };
    }  // namespace inputform

    typedef inputform::LayoutByNW4R InputForm;
    typedef inputform::Base InputFormBase;
}  // namespace textinput

#endif  // TEXTINPUT_INPUT_FORM_H
