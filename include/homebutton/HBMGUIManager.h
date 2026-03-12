#ifndef HOME_BUTTON_GUI_MANAGER_H
#define HOME_BUTTON_GUI_MANAGER_H

#include <revolution/types.h>

#include <revolution/mem.h>
#include <revolution/mtx.h>
#include <revolution/kpad.h>

#include <nw4r/ut.h>
#include <nw4r/lyt.h>

namespace homebutton {
    namespace gui {
        /* GUI MANAGER */

        #define GUI_POINTS_MAX  8

        class Interface;
        class Component;
        class Manager;
        class EventHandler;

        class Interface {
            public:
                virtual void    create() {}         // 0x08 (0x02)

                virtual void    init() {}           // 0x0C (0x03)
                virtual void    calc() {}           // 0x10 (0x04)

                virtual void    draw(Mtx& mtx) {}   // 0x14 (0x05)
                virtual void    draw() {}           // 0x18 (0x06)

                virtual ~Interface() {}             // 0x1C (0x07)
        };

        class EventHandler {
            public:
                enum {
                    ON_TRIG = 0,
                    ON_POINT,
                    ON_LEFT,
                    ON_MOVE,
                    ON_HOLD, // sneaky unused
                    ON_RELEASE,
                };

                EventHandler() {}

                virtual void        onEvent(u32 compId, u32 event, void* data) {}                   // 0x08 (0x02)

                virtual void        setManager(Manager* manager)        { mpManager = manager; }    // 0x0C (0x03)
            
            protected:
                Manager*    mpManager;      // 0x04
        };

        class Component : public Interface {
            public:
                virtual void init() {                                     
                    mbDragging = false;
                    for (int i = 0; i < GUI_POINTS_MAX; i++) {
                        mbPointed[i] = false;
                    }
                }

                Component(u32 id) :
                Interface(),
                mbDragging(false),
                mDraggingButton(0),
                mID(id),
                mbTriggerTarget(false),
                mpManager(NULL) {
                    init();
                }
                virtual ~Component() {}                                                                             // 0x1C (0x07)

                virtual u32     getID()                                     { return mID; }                         // 0x20 (0x08)

                virtual bool    isPointed(int point)                        { return mbPointed[point]; }            // 0x24 (0x09)

                virtual void    setPointed(int point, bool bEnable)         { mbPointed[point] = bEnable; }         // 0x28 (0x0A)

                virtual void    onPoint() {}                                                                        // 0x2C (0x0B)
                virtual void    offPoint() {}                                                                       // 0x30 (0x0C)

                virtual void    onDrag(f32 x, f32 y) {}                                                             // 0x34 (0x0D)
                virtual void    onMove(f32 x, f32 y) {}                                                             // 0x38 (0x0E)
                virtual void onTrig(u32 trig, Vec& dragPos) {                                                       // 0x3C (0x0F)
                    if (trig & mDraggingButton) {
                        mDraggingPos = dragPos;
                        mbDragging = true;
                    }
                }

                virtual void    setDraggingButton(u32 dragBtn)  { mDraggingButton = dragBtn; }                      // 0x40 (0x10)

                virtual bool    update(int point, const KPADStatus* kpad, f32, f32, void* data) { return false; }   // 0x44 (0x11)
                virtual bool    update(int point, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data);       // 0x48 (0x12)
                
                virtual bool    isTriggerTarger()                           { return mbTriggerTarget; }             // 0x4C (0x13) "targer"
                virtual void    setTriggerTarget(bool bEnable)              { mbTriggerTarget = bEnable; }          // 0x50 (0x14)

                virtual void    setManager(Manager* manager)                { mpManager = manager; }                // 0x54 (0x15)
                
                virtual bool    isVisible()                                 { return true; }                        // 0x58 (0x16)

                virtual bool    contain(f32 x, f32 y) = 0;                                                          // 0x5C (0x17)
            
            protected:
                bool        mbPointed[GUI_POINTS_MAX];          // 0x04

                Vec         mDraggingPos;                       // 0x0C
                bool        mbDragging;                         // 0x18
                int         mDraggingButton;                    // 0x1C

                int         mID;                                // 0x20

                bool        mbTriggerTarget;                    // 0x24

                Manager*    mpManager;                          // 0x28
        };

        class Manager : public Interface {
            public:
                virtual void            init();                                                                             // 0x0C (0x03)
                virtual void            calc();                                                                             // 0x10 (0x04)

                virtual void            draw();                                                                             // 0x18 (0x06)

                Manager(EventHandler* event, MEMAllocator* allocator) :
                Interface(),
                mpEventHandler(event),
                mpAllocator(allocator) {
                    if (mpEventHandler != NULL) {
                        mpEventHandler->setManager(this);
                    }
                    nw4r::ut::List_Init(&mComponents, offsetof(IDToComponent, mLink));
                }

                virtual ~Manager();                                                                                         // 0x1C (0x07)

                virtual void            addComponent(Component* component);                                                 // 0x20 (0x08)
                virtual Component*      getComponent(u32 id);                                                               // 0x24 (0x09)

                virtual bool            update(int point, const KPADStatus* kpad, f32, f32, void* data) { return false; }   // 0x28 (0x0A)
                virtual bool            update(int point, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data);       // 0x2C (0x0B)

                virtual void onEvent(u32 compId, u32 event, void* data) {                                                   // 0x30 (0x0C)
                    if (mpEventHandler) {
                        mpEventHandler->onEvent(compId, event, data);
                    }
                }

                virtual void            setAllComponentTriggerTarget(bool bEnable);                                         // 0x34 (0x0D)

                virtual void setEventHandler(EventHandler* eventHandler) {                                                  // 0x38 (0x0E)
                    mpEventHandler = eventHandler;
                    if (eventHandler) {
                        eventHandler->setManager(this);
                    }
                }

            protected:
                class IDToComponent {
                    public:
                        IDToComponent(u32 id, Component* component) :
                        mID(id),
                        mpComponent(component) {}

                        u32             mID;            // 0x00
                        Component*      mpComponent;    // 0x04

                        nw4r::ut::Link  mLink;          // 0x08
                };

                EventHandler*   mpEventHandler; // 0x04
                nw4r::ut::List  mComponents;    // 0x08
                MEMAllocator*   mpAllocator;    // 0x14
        };

        /* PANE GUI MANAGER */

        class PaneComponent;
        class PaneManager;

        class PaneManager : public Manager {
            public:
                PaneManager(EventHandler* event, MEMAllocator* allocator, const nw4r::lyt::DrawInfo* drawInfo) :
                Manager(event, allocator),
                mpDrawInfo(drawInfo) {
                    nw4r::ut::List_Init(&mPaneComponents, offsetof(PaneToComponent, mLink));
                }

                virtual ~PaneManager();                                                                                             // 0x1C (0x07)

                virtual void                        createLayoutScene(const nw4r::lyt::Layout& layout);                             // 0x44 (0x11)
                
                virtual PaneComponent*              getPaneComponentByPane(nw4r::lyt::Pane* pane);                                  // 0x48 (0x12)

                virtual const nw4r::lyt::DrawInfo*  getDrawInfo()                                       { return mpDrawInfo; }      // 0x4C (0x13)
                virtual void                        setDrawInfo(const nw4r::lyt::DrawInfo* drawInfo)    { mpDrawInfo = drawInfo; }  // 0x50 (0x14)

                virtual void                        setAllBoundingBoxComponentTriggerTarget(bool bEnable);                          // 0x54 (0x15)
                virtual void                        walkInChildren(nw4r::lyt::PaneList& paneList);                                  // 0x58 (0x16)
            
            protected:
                class PaneToComponent {
                    public:
                        PaneToComponent(nw4r::lyt::Pane* pane, PaneComponent* component) :
                        mpPane(pane),
                        mpComponent(component) {}

                        nw4r::lyt::Pane*    mpPane;         // 0x00
                        PaneComponent*      mpComponent;    // 0x04

                        nw4r::ut::Link      mLink;          // 0x08
                };

                nw4r::ut::List              mPaneComponents;    // 0x18

                const nw4r::lyt::DrawInfo*  mpDrawInfo;         // 0x24

                // Unused. And removed from IPL's GUIManager.
                u16                         muNumPoint;         // 0x28
                u16                         muPadding;          // 0x28

                static u32                  suIDCounter;
        };

        class PaneComponent : public Component {
            public:
                PaneComponent(u32 id) : Component(id) {
                    mpPane = NULL;
                }

                virtual void                draw();                                             // 0x18 (0x06)

                virtual ~PaneComponent() {}                                                     // 0x1C (0x07)

                virtual bool                isVisible();                                        // 0x58 (0x17)

                virtual bool                contain(f32 x, f32 y);                              // 0x68 (0x1A)

                virtual void                setPane(nw4r::lyt::Pane* pane)  { mpPane = pane; }  // 0x6C (0x1B)
                virtual nw4r::lyt::Pane*    getPane()                       { return mpPane; }  // 0x70 (0x1C)
            
            private:
                nw4r::lyt::Pane*    mpPane; // 0x88
        };
    }
}

#endif // HOME_BUTTON_GUI_MANAGER_H
