#include "layout/GUIManager.h"
#include "revolution/mtx.h"
#include "revolution/mtx/GeoTypes.h"

#include <revolution/gx.h>

#include <new>

void drawLine_(f32 x0, f32 y0, f32 x1, f32 y1, f32 z, u8 width, GXColor& color) {
    Mtx mtx;
    
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    
    GXSetCullMode(GX_CULL_NONE);

    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_VTX, GX_SRC_VTX, 0, GX_DF_NONE, GX_AF_NONE);

    GXSetNumTexGens(0);
    GXSetNumTevStages(1);

    GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);

    GXSetBlendMode(GX_BM_NONE, GX_BL_ZERO, GX_BL_ZERO, GX_LO_NOOP);

    PSMTXTrans(mtx, 0.0f, 0.0f, 0.0f);
    GXLoadPosMtxImm(mtx, 0);

    GXSetLineWidth(width, GX_TO_ZERO);

    // Draw the line
    GXBegin(GX_LINES, GX_VTXFMT0, 2); {
        GXPosition3f32(x0, y0, z);
        GXColor1u32(*(u32*)&color);
        GXPosition3f32(x1, y1, z);
        GXColor1u32(*(u32*)&color);
    } GXEnd();
}

namespace gui {
    bool Component::update(int point, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data) {
        bool touched = false;

        if (isVisible()) {
            if (contain(x, y)) {
                // Colliding with component
                if (isPointed(point)) {
                    onMove(point, x, y);
                    mpManager->onEvent(getID(), EventHandler::ON_MOVE, point, data);
                }
                else {
                    setPointed(point, true);
                    onPoint(point);
                    mpManager->onEvent(getID(), EventHandler::ON_POINT, point, data);
                }

                touched = true;
            }
            else {
                 // Not colliding with component
                if (isPointed(point)) {
                    setPointed(point, false);
                    offPoint(point);
                    mpManager->onEvent(getID(), EventHandler::ON_OFFPOINT, point, data);
                }
            }

            // Pressing the drag button.
            if (mbDragging[point]) {
                onDrag(x - mDraggingPos[point].x, y - mDraggingPos[point].y);
                mDraggingPos[point].x = x;
                mDraggingPos[point].y = y;
                mpManager->onEvent(getID(), EventHandler::ON_HOLD, point, data);
            }
        }

        if (hold == 0 && mbDragging[point]) {
            mbDragging[point] = false;
        }

        return touched;
    }

    Manager::~Manager() {
        ComponentID* componentID = (ComponentID*)nw4r::ut::List_GetFirst(&mComponents);
        while (componentID) {
            // Remove them from the list
            nw4r::ut::List_Remove(&mComponents, componentID);
            // Then delete them from memory.
            if (mpAllocator) {
                MEMFreeToAllocator(mpAllocator, componentID);
            }
            else {
                delete componentID;
            }
            // Next component to kill!
            componentID = (ComponentID*)nw4r::ut::List_GetFirst(&mComponents);
        }
    }

    void Manager::init() {
        for (u32 i = 0; i < nw4r::ut::List_GetSize(&mComponents); i++) {
            ComponentID* componentID = (ComponentID*)nw4r::ut::List_GetNth(&mComponents, (u16)i);
            componentID->mpComponent->init();
        }
    }

    void Manager::addComponent(Component* component) {
        int id = component->getID();

        component->setManager(this);
        if (mpAllocator) {
            void* allocCompID = MEMAllocFromAllocator(mpAllocator, sizeof(ComponentID));
            ComponentID* componentID = new(allocCompID) ComponentID(id, component);
            nw4r::ut::List_Append(&mComponents, componentID);
        }
        else {
            ComponentID* componentID = new ComponentID(id, component);
            nw4r::ut::List_Append(&mComponents, componentID);
        }
    }

    Component* Manager::getComponent(u32 id) {
        ComponentID* componentID = (ComponentID*)nw4r::ut::List_GetNth(&mComponents, (u16)id);
        return componentID->mpComponent;
    }

    bool Manager::update(int point, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data) {
        bool touched = false;

        Component* triggerCom = NULL;
        for (ComponentID* componentID = (ComponentID*)nw4r::ut::List_GetFirst(&mComponents); componentID != NULL;
        componentID = (ComponentID*)nw4r::ut::List_GetNext(&mComponents, componentID)) {

            bool touchedCom = componentID->mpComponent->update(point, x, y, trig, hold, release, data);

            if (touchedCom) {
                if (componentID->mpComponent->isTriggerTarger()) {
                    triggerCom = componentID->mpComponent;
                }
                touched = true;
            }
        }

        if (triggerCom) {
            if (trig) {
                Vec pos = {x, y, 0.0f};
                triggerCom->onTrig(point, trig, pos);
                onEvent(triggerCom->getID(), EventHandler::ON_TRIG, point, data);
            }
            if (release) {
                onEvent(triggerCom->getID(), EventHandler::ON_RELEASE, point, data);
            }
        }

        return touched;
    }

    void Manager::calc() {
        for (u32 i = 0; i < nw4r::ut::List_GetSize(&mComponents); i++) {
            ComponentID* componentID = (ComponentID*)nw4r::ut::List_GetNth(&mComponents, (u16)i);
            componentID->mpComponent->calc();
        }
    }

    void Manager::draw() {
        for (u32 i = 0; i < nw4r::ut::List_GetSize(&mComponents); i++) {
            ComponentID* componentID = (ComponentID*)nw4r::ut::List_GetNth(&mComponents, (u16)i);
            componentID->mpComponent->draw();
        }
    }

    void Manager::setAllComponentTriggerTarget(bool bEnable) {
        for (u32 i = 0; i < nw4r::ut::List_GetSize(&mComponents); i++) {
            ComponentID* componentID = (ComponentID*)nw4r::ut::List_GetNth(&mComponents, (u16)i);
            componentID->mpComponent->setTriggerTarget(bEnable);
        }
    }

    void Manager::setDraggingButton(u32 dragBtn) {
        for (u32 i = 0; i < nw4r::ut::List_GetSize(&mComponents); i++) {
            ComponentID* componentID = (ComponentID*)nw4r::ut::List_GetNth(&mComponents, (u16)i);
            componentID->mpComponent->setDraggingButton(dragBtn);
        }
    }

    u32 PaneManager::suIDCounter = 0;

    PaneManager::~PaneManager() {
        PaneComponentID* componentID = (PaneComponentID*)nw4r::ut::List_GetFirst(&mPaneComponents);
        while (componentID) {
            // Remove them from the list
            nw4r::ut::List_Remove(&mPaneComponents, componentID);
            // Then delete them from memory.
            if (mpAllocator) {
                MEMFreeToAllocator(mpAllocator, componentID->mpComponent);
                MEMFreeToAllocator(mpAllocator, componentID);
            }
            else {
                delete componentID->mpComponent;
                delete componentID;
            }
            // Next component to kill!
            componentID = (PaneComponentID*)nw4r::ut::List_GetFirst(&mPaneComponents);
        }
    }

    Component::~Component() {} // Wouldn't auto generate

    void PaneManager::createLayoutScene(const nw4r::lyt::Layout& layout) {
        suIDCounter = 0;
        walkInChildren(layout.GetRootPane()->GetChildList());
    }

    void PaneManager::walkInChildren(nw4r::lyt::PaneList& paneList) {
        PaneComponent*   component;
        PaneComponentID* componentID;

        for (nw4r::lyt::PaneList::Iterator it = paneList.GetBeginIter(); it != paneList.GetEndIter(); it++) {
            // Create the component and it's ID
            if (mpAllocator) {
                void* allocComp   = MEMAllocFromAllocator(mpAllocator, sizeof(PaneComponent));
                void* allocCompID = MEMAllocFromAllocator(mpAllocator, sizeof(PaneComponentID));
                component   = new(allocComp) PaneComponent(suIDCounter);
                componentID = new(allocCompID) PaneComponentID(&*it, component);
            }
            else {
                component   = new PaneComponent(suIDCounter);
                componentID = new PaneComponentID(&*it, component);
            }

            // Append it
            nw4r::ut::List_Append(&mPaneComponents, componentID);
            suIDCounter++;

            component->setPane(&*it);

            // Trigger target for pictures panes
            if (nw4r::ut::DynamicCast<nw4r::lyt::Picture*>(&*it)) {
                component->setTriggerTarget(true);
            }
            if (nw4r::ut::DynamicCast<nw4r::lyt::Window*>(&*it)) {
                component->setTriggerTarget(true);
            }

            addComponent(component);
            walkInChildren(it->GetChildList());
        }
    }

    PaneComponent* PaneManager::getPaneComponentByPane(nw4r::lyt::Pane* pane) {
        for (u32 i = 0; i < nw4r::ut::List_GetSize(&mComponents); i++) {
            PaneComponentID* componentID = (PaneComponentID*)nw4r::ut::List_GetNth(&mPaneComponents, (u16)i);
            if (componentID->mpPane == pane) {
                return componentID->mpComponent;
            }
        }
        return NULL;
    }

    void PaneManager::setAllBoundingBoxComponentTriggerTarget(bool bEnable) {
        for (u32 i = 0; i < nw4r::ut::List_GetSize(&mComponents); i++) {
            PaneComponentID* componentID = (PaneComponentID*)nw4r::ut::List_GetNth(&mPaneComponents, (u16)i);
            if (nw4r::ut::DynamicCast<nw4r::lyt::Bounding*>(componentID->mpPane)) {
                componentID->mpComponent->setTriggerTarget(bEnable);
            }
        }
    }

    bool PaneComponent::contain(f32 x, f32 y) {
        // Abort if no manager
        if (mpManager == NULL) {
            return false;
        }

        // Abort if no draw info
        const nw4r::lyt::DrawInfo* drawInfo = ((PaneManager*)mpManager)->getDrawInfo();
        if (drawInfo == NULL) {
            return false;
        }

        nw4r::math::MTX34 globalMtx;
        PSMTXInverse(mpPane->GetGlobalMtx(), globalMtx);

        nw4r::math::VEC3  pos;
        PSMTXMultVec(globalMtx, nw4r::math::VEC3(x, y, 0), pos);

        nw4r::ut::Rect    rect = mpPane->GetPaneRect(*drawInfo);

        // If position is touching pane?
        if (rect.left <= pos.x && pos.x <= rect.right
        && rect.bottom <= pos.y && pos.y <= rect.top) {
            return true;
        }
        else {
            return false;
        }
    }

    void PaneComponent::draw() {
        if (((PaneManager*)mpManager)->getDrawInfo()) {
            nw4r::lyt::Size             size = mpPane->GetSize();
            const nw4r::math::MTX34&    mtx = mpPane->GetGlobalMtx();

            f32 x = mtx.m[0][3];
            f32 y = mtx.m[1][3];

            // Red line
            GXColor color = {255, 0, 0, 255};
            if (mbPointed[0]) {
                // If pointed, set to blue.
                color.r = 0;
                color.b = 255;
            }

            drawLine_(x - size.width / 2, y - size.height / 2, x + size.width / 2, y - size.height / 2, 0, 8, color);
            drawLine_(x + size.width / 2, y - size.height / 2, x + size.width / 2, y + size.height / 2, 0, 8, color);
            drawLine_(x + size.width / 2, y + size.height / 2, x - size.width / 2, y + size.height / 2, 0, 8, color);
            drawLine_(x - size.width / 2, y + size.height / 2, x - size.width / 2, y - size.height / 2, 0, 8, color);
        }
    }

    static bool is_visible(nw4r::lyt::Pane* pane) {
        if (!pane->IsVisible()) {
            return false;
        }
        if (pane->GetParent() == NULL) {
            return true;
        }
        return is_visible(pane->GetParent());
    }
    
    bool PaneComponent::isVisible() {
        return is_visible(mpPane);
    }
}
