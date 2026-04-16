#ifndef TEXTINPUT_NW4R_MANAGER_H
#define TEXTINPUT_NW4R_MANAGER_H

#include "tiLayout.h"
#include "tiGUIManager.h"
#include "tiHKBManager.h"

#include <nw4r/lyt/arcResourceAccessor.h>

namespace textinput {
    class EventObserver;

    namespace nw4rmanager {
        class TiEventHandler : public gui::EventHandler {
            public:
                typedef struct Input {
                    // todo
                    u8  dummy[12];
                    u32 field_0x0C; // 0x0C
                    u8  dummy2[16];
                } Input;

                virtual void    onEvent(gui::GUIComponent& comp, u32 event, void* data);                    // 0x0C

                virtual void    onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) = 0;  // 0x18
        
                virtual void    setEventObserver(EventObserver *event)  { mpEventObserver = event; }        // 0x1C

            protected:
                EventObserver*  mpEventObserver;    // 0x08
        };

        class Anim {
            public:
                Anim(u32 id, nw4r::lyt::AnimTransform* animTransform, bool loop, bool noOff) : 
                mpAnimTransform(animTransform),
                muID(id),
                mfCurrentFrame(0.0f),
                mbLoop(loop),
                mbNoOff(noOff) {}

            private:
                nw4r::lyt::AnimTransform*   mpAnimTransform; // 0x00

            public:
                u32                         muID; // 0x04

                f32                         mfCurrentFrame; // 0x08

                bool                        mbLoop; // 0x0C
                bool                        mbNoOff; // 0x0D

                nw4r::ut::Link              mLink; // 0x10

                friend class AnmPane;
        };

        class AnmPane;
        class AnmObserver {
            public:
                typedef enum AnmEvent {
                    E_0 = 0,
                    E_1,
                    E_Last
                } AnmEvent;

                virtual void onChangeAnmState(AnmEvent anmEvent, AnmPane* anmPane, Anim* anim) = 0; // 0x08
        };

        class AnmPane {
            public:
                typedef enum AnmPaneEvent {
                    PE_0 = 0,
                    PE_1,
                    PE_2,
                    PE_3,
                    PE_4,
                    PE_5,
                    PE_Last,
                } AnmPaneEvent;

                virtual void        init() {}                           // 0x08
                virtual void        calc();                             // 0x0C

                virtual void        onAnmEvent(AnmPaneEvent paneEvent); // 0x10

                virtual void        changeAnimation(u32 id);            // 0x14
                virtual bool        isInAnimation();                    // 0x18
                virtual Anim*       searchAnimation(u32 id);            // 0x1C

                virtual ~AnmPane();                                     // 0x20

                AnmPane(nw4r::lyt::Pane *pane, AnmObserver *observer) : mpPane(pane), mpCurrentAnim(NULL), mpObserver(observer) {
                    nw4r::ut::List_Init(&mAnms, offsetof(Anim, mLink));
                }

                nw4r::lyt::Pane*    getPane()   { return mpPane; }

                typedef struct AnmState {
                    s32 currentAnim;    // 0x00
                    f32 currentFrame;   // 0x04
                } AnmState;

                void                addAnimation(MEMAllocator* allocator, u32 id, AnimTransformPane* animTransformPane, bool loop, bool noOff);
                void                forceAddAnimation(MEMAllocator* allocator, u32 id, AnimTransformPane* animTransformPane, const char* name, bool loop, bool noOff);

                void                storeAnmState(AnmState* state);
                void                restoreAnmState(const AnmState* state);
                
                void                destroy(MEMAllocator* allocator);

            private:
                nw4r::lyt::Pane*    mpPane;         // 0x04

                nw4r::ut::List      mAnms;          // 0x08
                Anim*               mpCurrentAnim;  // 0x14

                AnmObserver*        mpObserver;     // 0x18

            public:
                nw4r::ut::Link      mLink;          // 0x1C
                nw4r::ut::Link      mGroupLink;     // 0x24
        };

        class AnimPaneGroup {
            public:
                virtual void    create()   {}                   // 0x08
                virtual void    init()     {}                   // 0x0C

                virtual void    calc();                         // 0x10

                virtual void addAnimPane(AnmPane* anmPane) {    // 0x14
                    nw4r::ut::List_Append(&mAnmPaneList, anmPane);
                }

                virtual void    changeAnimation(u32 id);        // 0x18

            private:
                nw4r::lyt::Group*   mpGroup;        // 0x04
                nw4r::ut::List      mAnmPaneList;   // 0x08
        };

        class PaneFifo {
            private:
                static const int    MAX_COUNT = 5;

            public:
                PaneFifo() {
                    init();
                }

                virtual void init() {                                           // 0x08
                    for (int i = 0; i < MAX_COUNT; i++) {
                        mpaFifo[i] = NULL;
                    }
                }

                virtual void push(nw4r::lyt::Pane* pane)  {                     // 0x0C
                    if (mpaFifo[MAX_COUNT-1] == NULL) {
                        for (int i = 0; i < MAX_COUNT; i++) {
                            if (mpaFifo[i] == NULL) {
                                mpaFifo[i] = pane;
                                return;
                            }
                        }
                    }
                    else {
                        for (int i = 1; i < MAX_COUNT; i++) {
                            mpaFifo[i-1] = mpaFifo[i];
                            if (pane == mpaFifo[i-1]) {
                                mpaFifo[i-1] = NULL;
                            }
                        }
                        mpaFifo[MAX_COUNT-1] = pane;
                    }
                }

                virtual nw4r::lyt::Pane*    get(int i)  { return mpaFifo[i]; }  // 0x10
                virtual nw4r::lyt::Pane* getLast() {                            // 0x14
                    for (int i = MAX_COUNT-1; i > -1; i++) {
                        if (mpaFifo[i] != NULL) {
                            return mpaFifo[i];
                        }
                    }
                    return NULL;
                }

                virtual int                 getSize()   { return MAX_COUNT; }   // 0x18

            private:
                nw4r::lyt::Pane*    mpaFifo[MAX_COUNT]; // 0x04
        };

        class Layout {
            public:
                Layout(nw4r::lyt::MultiArcResourceAccessor* resAccessor, const char* layoutBinName, EventObserver* event);
                virtual ~Layout();                                                                                                                  // 0x08

                virtual void                    createWithEventHandler(MEMAllocator* allocator, TiEventHandler* eventHandler);                      // 0x0C

                virtual void                    init();                                                                                             // 0x10
                virtual void                    initPaneManager();                                                                                  // 0x14
                virtual void                    draw();                                                                                             // 0x18
                virtual void                    calc();                                                                                             // 0x1C

                virtual bool                    updateInput(int point, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data);                  // 0x20
                virtual bool                    updateInput(input::HKBManager& hkbManager);                                                         // 0x24

                virtual TiLayout*               getLayout()             { return mpLayout; }                                                        // 0x28

                virtual nw4r::lyt::Pane*        getPane(const char* paneName);                                                                      // 0x2C
                virtual const nw4r::lyt::Pane*  getPane(const char* paneName) const;                                                                // 0x30

                virtual u32                     getFlightDuration(int point, const char* paneName);                                                 // 0x34

                virtual void                    setAnimOn(bool flag)    { mbAnimOn = flag; }                                                        // 0x38

                virtual void                    drawPane(const char* paneName);                                                                     // 0x3C

                virtual void                    setRootPaneScaleFor16x9();                                                                          // 0x40
                virtual void                    setRootPaneScaleFor4x3();                                                                           // 0x44
                
                virtual void                    setProjectionMtx();                                                                                 // 0x48

                virtual void                    setPaneLastDrawReceived(nw4r::lyt::Pane* paneLastDraw);                                             // 0x4C
                virtual void                    initPaneLastDrawReceived();                                                                         // 0x50

                virtual void                    setVisible(const char* paneName, bool flag);                                                        // 0x54
                virtual bool                    isVisible(const char* paneName, bool* result) const;                                                // 0x58

                virtual void                    setString(const char* paneName, const wchar_t* wcString);                                           // 0x5C

                virtual AnmPane*                searchAnmPane(const char* paneName);                                                                // 0x60
                virtual AnmPane*                searchAnmPane(wchar_t ch);                                                                          // 0x64
                
                virtual nw4r::ut::List&         getAnmPaneList()        { return mAnmPanes; }                                                       // 0x68
                virtual gui::PaneManager*       getPaneManager()        { return mpPaneManager; }                                                   // 0x6C

                virtual void                    AdjustPaneMtx(Mtx& mtx, const nw4r::lyt::DrawInfo& drawInfo, const nw4r::math::MTX34& mGlobalMtx);  // 0x70

                virtual gui::PaneManager*       createPaneManager(MEMAllocator* allocator, TiEventHandler* eventHandler);                           // 0x74

                void                            SetFontForce(nw4r::ut::Font *font);

            protected:
                TiLayout*                               mpLayout;                   // 0x04

                const char*                             mpszLayoutBinName;          // 0x08
                nw4r::lyt::MultiArcResourceAccessor*    mpMultiArcResourceAccessor; // 0x0C

                gui::PaneManager*                       mpPaneManager;              // 0x10
                EventObserver*                          mpEventObserver;            // 0x14

                nw4r::lyt::DrawInfo                     mDrawInfo;                  // 0x18

                nw4r::ut::List                          mAnmPanes;                  // 0x6C

                nw4r::ut::Rect                          mScreenRect;                // 0x78

                bool                                    mbAnimOn;                   // 0x88
                bool                                    mbAspectRatio4x3;           // 0x89

                PaneFifo                                mAnmPaneFifo;               // 0x8C

                MEMAllocator*                           mpNw4rAllocator;            // 0xA4
        };
    }
}

#endif // TEXTINPUT_NW4R_MANAGER_H
