#include "keyboard/tiNw4rManager.h"
#include "keyboard/tiManager.h"
#include "keyboard/tiUtil.h"

#include <new>

namespace textinput {
    namespace nw4rmanager {
        void TiEventHandler::onEvent(gui::GUIComponent& comp, u32 event, void* data) {
            gui::PaneComponent* paneComponent = static_cast<textinput::gui::PaneComponent*>(&comp);

            onTiEvent(paneComponent, event, static_cast<Input*>(data));
            mpEventObserver->onEvent(paneComponent->getPane(), event);
        }

        AnmPane* Layout::searchAnmPane(const char* paneName) {
            AnmPane* anmPane = NULL;

            for (anmPane = static_cast<AnmPane*>(nw4r::ut::List_GetFirst(&mAnmPanes)); anmPane != NULL;
            anmPane = static_cast<AnmPane*>(nw4r::ut::List_GetNext(&mAnmPanes, anmPane))) {
                // Found anim pane!
                if (util::strcmp(paneName, anmPane->getPane()->GetName())) {
                    return anmPane;
                }
            }

            return NULL;
        }

        AnmPane* Layout::searchAnmPane(wchar_t ch) {
            AnmPane* anmPane = NULL;

            for (anmPane = static_cast<AnmPane*>(nw4r::ut::List_GetFirst(&mAnmPanes)); anmPane != NULL;
            anmPane = static_cast<AnmPane*>(nw4r::ut::List_GetNext(&mAnmPanes, anmPane))) {
                nw4r::lyt::PaneList& paneList = anmPane->getPane()->GetChildList();
                nw4r::lyt::PaneList::Iterator it = paneList.GetBeginIter();
                nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(&*it);

                if (textBox != NULL) {
                    const wchar_t* str = textBox->GetString();
                    // Found anim pane!
                    if (str[0] == ch && str[1] == 0) {
                        return anmPane;
                    }
                }
            }

            return NULL;
        }

        void AnimPaneGroup::calc() {
            AnmPane* anmPane = NULL;

            for (anmPane = static_cast<AnmPane*>(nw4r::ut::List_GetFirst(&mAnmPaneList)); anmPane != NULL;
            anmPane = static_cast<AnmPane*>(nw4r::ut::List_GetNext(&mAnmPaneList, anmPane))) {
                anmPane->calc();
            }
        }

        void AnimPaneGroup::changeAnimation(u32 id) {
            AnmPane* anmPane = NULL;

            for (anmPane = static_cast<AnmPane*>(nw4r::ut::List_GetFirst(&mAnmPaneList)); anmPane != NULL;
            anmPane = static_cast<AnmPane*>(nw4r::ut::List_GetNext(&mAnmPaneList, anmPane))) {
                anmPane->changeAnimation(id);
            }
        }

        Layout::Layout(nw4r::lyt::MultiArcResourceAccessor* resAccessor, const char* layoutBinName, EventObserver* event) :
        mpLayout(NULL),
        mpszLayoutBinName(layoutBinName),
        mpMultiArcResourceAccessor(resAccessor),
        mpPaneManager(NULL),
        mpEventObserver(event),
        mDrawInfo(),
        mScreenRect(),
        mbAnimOn(true),
        mbAspectRatio4x3(true),
        mAnmPaneFifo(),
        mpNw4rAllocator(NULL) {
            nw4r::ut::List_Init(&mAnmPanes, offsetof(AnmPane, mLink));
            mAnmPaneFifo.init(); // but... the constructor already calls it.
        }

        Layout::~Layout() {
            if (mpLayout) {
                mpLayout->~TiLayout();
                MEMFreeToAllocator(mpNw4rAllocator, mpLayout);
            }

            if (mpPaneManager) {
                mpPaneManager->~PaneManager();
                MEMFreeToAllocator(mpNw4rAllocator, mpPaneManager);
            }
        }

        void Layout::createWithEventHandler(MEMAllocator* allocator, TiEventHandler* eventHandler) {
            mpNw4rAllocator = allocator;

            // Create layout object
            {
                void* pMem = MEMAllocFromAllocator(allocator, sizeof(TiLayout));
                mpLayout = new(pMem) TiLayout();
            }

            // Build layout data from ARC
            {
                void* pMem = mpMultiArcResourceAccessor->GetResource(0, mpszLayoutBinName);
                mpLayout->Build(pMem, mpMultiArcResourceAccessor);
            }

            // Create GUI
            if (eventHandler != NULL) {
                eventHandler->setEventObserver(mpEventObserver);

                mpPaneManager = createPaneManager(allocator, eventHandler);
                mpPaneManager->createLayoutScene(*mpLayout);
                mpPaneManager->setDraggingButton(0x800);
                mpPaneManager->setDrawInfo(&mDrawInfo);
            }

            // Set the display
            mDrawInfo.SetViewRect(mpLayout->GetLayoutRect());

            nw4r::math::MTX34 viewMtx;
            nw4r::math::MTX34Identity(&viewMtx);
            mDrawInfo.SetViewMtx(viewMtx);

            mpLayout->CalculateMtx(mDrawInfo);

            mDrawInfo.SetInfluencedAlpha(true);
            mDrawInfo.SetInvisiblePaneCalculateMtx(false);
        }

        gui::PaneManager* Layout::createPaneManager(MEMAllocator* allocator, TiEventHandler* eventHandler) {
            void* pMem = MEMAllocFromAllocator(allocator, sizeof(gui::PaneManager));
            
            gui::PaneManager* paneManager = NULL;
            paneManager = new(pMem) gui::PaneManager(eventHandler, allocator, NULL);

            return paneManager;
        }

        void Layout::init() {
            initPaneManager();
        }

        void Layout::initPaneManager() {
            mpPaneManager->init();
        }

        void Layout::draw() {
            // Project it
            setProjectionMtx();

            // Animate it
            if (mbAnimOn) {
                mpLayout->Animate();
                mpLayout->CalculateMtx(mDrawInfo);
            }

            PaneFifo fifo;

            for (int i = 0; i < mAnmPaneFifo.getSize(); i++) {
                if (mAnmPaneFifo.get(i) != NULL) {
                    if (mAnmPaneFifo.get(i)->IsVisible()) {
                        fifo.push(mAnmPaneFifo.get(i));
                    }
                }
            }

            for (int i = 0; i < fifo.getSize(); i++) {
                if (fifo.get(i) != NULL) {
                    fifo.get(i)->SetVisible(false);
                }
            }

            // Draw!
            mpLayout->Draw(mDrawInfo);

            for (int i = 0; i < fifo.getSize(); i++) {
                if (fifo.get(i) != NULL) {
                    fifo.get(i)->SetVisible(true);
                    fifo.get(i)->Draw(mDrawInfo);
                }
            }
        }

        void Layout::calc() {
            if (mbAnimOn) {
                for (AnmPane* anmPane = static_cast<AnmPane*>(nw4r::ut::List_GetFirst(&mAnmPanes)); anmPane != NULL;
                anmPane = static_cast<AnmPane*>(nw4r::ut::List_GetNext(&mAnmPanes, anmPane))) {
                    anmPane->calc();
                }
            }
        }

        bool Layout::updateInput(int point, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data) {
            return mpPaneManager->update(point, x, y, trig, hold, release, data);
        }

        bool Layout::updateInput(input::HKBManager& hkbManager) {
            // USB keyboard does not need the GUI
            return false;
        }

        void Layout::setVisible(const char* paneName, bool flag) {
            nw4r::lyt::Pane* pane = mpLayout->GetRootPane()->FindPaneByName(paneName);
            if (pane != NULL) {
                pane->SetVisible(flag);

                // P = Picture, W = Window ?
                if (paneName[0] == 'P' || paneName[0] == 'W') {
                    char tmp[17];
                    util::replaceChar(tmp, 17, paneName, 0, 'B');

                    setVisible(tmp, flag);
                }
            }
        }

        bool Layout::isVisible(const char* paneName, bool* result) const {
            nw4r::lyt::Pane* pane = mpLayout->GetRootPane()->FindPaneByName(paneName);
            if (pane == NULL) {
                return false;
            }
            else {
                *result = pane->IsVisible();
                return true;
            }
        }

        void Layout::setString(const char* paneName, const wchar_t* wcString) {
            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->GetRootPane()->FindPaneByName(paneName));

            if (textBox != NULL) {
                textBox->SetString(wcString);
            }
        }

        nw4r::lyt::Pane* Layout::getPane(const char* paneName) {
            return mpLayout->GetRootPane()->FindPaneByName(paneName);
        }

        const nw4r::lyt::Pane* Layout::getPane(const char* paneName) const {
            return mpLayout->GetRootPane()->FindPaneByName(paneName);
        }

        u32 Layout::getFlightDuration(int point, const char* paneName) {
            gui::PaneComponent* paneComponent = mpPaneManager->getPaneComponentByPane(getPane(paneName));

            return paneComponent->getFlightDuration(point);
        }

        void Layout::drawPane(const char* paneName) {
            mpLayout->GetRootPane()->FindPaneByName(paneName)->Draw(mDrawInfo);
        }

        void Layout::setRootPaneScaleFor16x9() {
            mbAspectRatio4x3 = false;

            nw4r::ut::Rect rect4x3;
            util::getProjectionRect4x3(&rect4x3);

            nw4r::ut::Rect rect16x9;
            util::getProjectionRect16x9(&rect16x9);

            // Scale layout for location adjust
            nw4r::math::VEC2 scale(rect16x9.GetWidth() / rect4x3.GetWidth(), 1.0f);
            mpLayout->GetRootPane()->SetScale(scale);

            // Set location adjust scale
            nw4r::math::VEC2 locationAdjust(rect4x3.GetWidth() / rect16x9.GetWidth(), 1.0f);
            mDrawInfo.SetLocationAdjustScale(locationAdjust);
            mDrawInfo.SetLocationAdjust(true);

            mScreenRect = rect16x9;
        }

        void Layout::setRootPaneScaleFor4x3() {
            mbAspectRatio4x3 = true;

            util::getProjectionRect4x3(&mScreenRect);

            // Scale layout for location adjust
            nw4r::math::VEC2 scale(1.0f, 1.0f);
            mpLayout->GetRootPane()->SetScale(scale);

            // Set location adjust scale
            nw4r::math::VEC2 locationAdjust(1.0f, 1.0f);
            mDrawInfo.SetLocationAdjustScale(locationAdjust);
            mDrawInfo.SetLocationAdjust(true);
        }

        void Layout::setProjectionMtx() {
            Mtx44 projMtx;
            nw4r::ut::Rect layoutRect = mpLayout->GetLayoutRect();

            if (!mbAspectRatio4x3) {
                nw4r::ut::Rect rect16x9;
                util::getProjectionRect16x9(&rect16x9);

                MTXOrtho(projMtx, rect16x9.bottom, rect16x9.top, rect16x9.left, rect16x9.right, -1.0f, 1.0f);
            }
            else {
                MTXOrtho(projMtx, layoutRect.top, layoutRect.bottom, layoutRect.left, layoutRect.right, -1.0f, 1.0f);
            }

            GXSetProjection(projMtx, GX_ORTHOGRAPHIC);
        }

        void Layout::SetFontForce(nw4r::ut::Font *font) {
            PaneAccessor paneAccessor(mpLayout);

            while (paneAccessor.GotPane()) {
                nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(paneAccessor.GetPane());
                if (textBox != NULL) {
                    nw4r::lyt::Size fontSize = textBox->GetFontSize();
                    textBox->SetFont(font);
                    textBox->SetFontSize(fontSize);
                }

                paneAccessor = paneAccessor.GetNextPane();
            }
        }

        static void ReverseYAxis(nw4r::math::MTX34* mtx) {
            mtx->m[0][1] = -mtx->m[0][1];
            mtx->m[1][1] = -mtx->m[1][1];
            mtx->m[2][1] = -mtx->m[2][1];
        }

        void Layout::AdjustPaneMtx(Mtx& mtx, const nw4r::lyt::DrawInfo& drawInfo, const nw4r::math::MTX34& mGlobalMtx) {
            nw4r::math::MTX34 paneMtx;
            MtxPtr pPaneMtx;

            if (drawInfo.IsMultipleViewMtxOnDraw()) {
                nw4r::math::MTX34Mult(&paneMtx, &drawInfo.GetViewMtx(), &mGlobalMtx);
                if (drawInfo.IsYAxisUp()) {
                    ReverseYAxis(&paneMtx);
                }
                pPaneMtx = paneMtx;
            }
            else {
                if (drawInfo.IsYAxisUp()) {
                    MTX34Copy(&paneMtx, &mGlobalMtx);
                    ReverseYAxis(&paneMtx);
                    pPaneMtx = paneMtx;
                }
                else {
                    pPaneMtx = mGlobalMtx;
                }
            }

            MTXCopy(pPaneMtx, mtx);
        }

        AnmPane::~AnmPane() {}

        void AnmPane::addAnimation(MEMAllocator* allocator, u32 id, AnimTransformPane* animTransformPane, bool loop, bool noOff) {
            void* mem = MEMAllocFromAllocator(allocator, sizeof(Anim));
            Anim* anim = new(mem) Anim(id, animTransformPane, loop, noOff);

            // Add it,
            nw4r::ut::List_Append(&mAnms, anim);

            // Then bind!
            mpPane->BindAnimation(animTransformPane, noOff);
            mpPane->SetAnimationEnable(animTransformPane, false, noOff);
        }

        void AnmPane::forceAddAnimation(MEMAllocator* allocator, u32 id, AnimTransformPane* animTransformPane, const char* name, bool loop, bool noOff) {
            void* mem = MEMAllocFromAllocator(allocator, sizeof(Anim));
            Anim* anim = new(mem) Anim(id, animTransformPane, loop, noOff);

            // Add it,
            nw4r::ut::List_Append(&mAnms, anim);

            // Then bind by force!
            animTransformPane->ForceBind(mpPane, name);
            mpPane->SetAnimationEnable(animTransformPane, false, noOff);
        }

        void AnmPane::changeAnimation(u32 id) {
            // Turn off current animation
            if (mpCurrentAnim != NULL) {
                mpPane->SetAnimationEnable(mpCurrentAnim->mpAnimTransform, false, mpCurrentAnim->mbNoOff);
            }

            // Now let's get the new one!
            mpCurrentAnim = searchAnimation(id);

            if (mpCurrentAnim != NULL) {
                // Found? Then play it!

                mpCurrentAnim->mfCurrentFrame = 0.0f;
                mpCurrentAnim->mpAnimTransform->SetFrame(0.0f);

                mpPane->SetAnimationEnable(mpCurrentAnim->mpAnimTransform, true, mpCurrentAnim->mbNoOff);
            
                onAnmEvent(PE_3);

                if (mpObserver != NULL) {
                    mpObserver->onChangeAnmState(AnmObserver::E_0, this, mpCurrentAnim);
                }
            }
        }

        void AnmPane::calc() {
            if (mpCurrentAnim != NULL) {
                // Increment frame
                mpCurrentAnim->mfCurrentFrame += 1.0f;

                if (mpCurrentAnim->mfCurrentFrame >= mpCurrentAnim->mpAnimTransform->GetFrameSize()) {
                    // For loop
                    if (mpCurrentAnim->mbLoop) {
                        mpCurrentAnim->mfCurrentFrame = 0.0f;
                        mpCurrentAnim->mpAnimTransform->SetFrame(mpCurrentAnim->mfCurrentFrame);
                    }
                    // For one time
                    else {
                        mpPane->SetAnimationEnable(mpCurrentAnim->mpAnimTransform, false, mpCurrentAnim->mbNoOff);

                        if (mpObserver != NULL) {
                            mpObserver->onChangeAnmState(AnmObserver::E_1, this, mpCurrentAnim);
                        }

                        mpCurrentAnim = NULL;

                        onAnmEvent(PE_4);
                    }
                }
                else {
                    mpCurrentAnim->mpAnimTransform->SetFrame(mpCurrentAnim->mfCurrentFrame);
                }
            }
        }

        void AnmPane::storeAnmState(AnmState* state) {
            if (mpCurrentAnim != NULL) {
                state->currentFrame = mpCurrentAnim->mfCurrentFrame;
                state->currentAnim = mpCurrentAnim->muID;
            }
            else {
                state->currentFrame = 0.0f;
                state->currentAnim = -1;
            }
        }

        void AnmPane::restoreAnmState(const AnmState* state) {
            if (mpCurrentAnim != NULL) {
                mpPane->SetAnimationEnable(mpCurrentAnim->mpAnimTransform, false, mpCurrentAnim->mbNoOff);
            }

            if (state->currentAnim < 0) {
                mpCurrentAnim = NULL;
            }
            else {
                mpCurrentAnim = searchAnimation(state->currentAnim);
            }

            if (mpCurrentAnim != NULL) {
                mpCurrentAnim->mfCurrentFrame = state->currentFrame;
                mpCurrentAnim->mpAnimTransform->SetFrame(state->currentFrame);

                mpPane->SetAnimationEnable(mpCurrentAnim->mpAnimTransform, true, mpCurrentAnim->mbNoOff);
            }
        }

        void AnmPane::destroy(MEMAllocator* allocator) {
            if (allocator != NULL) {
                for (Anim* anim = static_cast<Anim*>(nw4r::ut::List_GetFirst(&mAnms)); anim != NULL;
                anim = static_cast<Anim*>(nw4r::ut::List_GetFirst(&mAnms))) {
                    mpPane->UnbindAnimation(anim->mpAnimTransform);
                    List_Remove(&mAnms, anim);
                    MEMFreeToAllocator(allocator, anim);
                }

                this->~AnmPane();
                MEMFreeToAllocator(allocator, this);
            }
            else {
                for (Anim* anim = static_cast<Anim*>(nw4r::ut::List_GetFirst(&mAnms)); anim != NULL;
                anim = static_cast<Anim*>(nw4r::ut::List_GetFirst(&mAnms))) {
                    mpPane->UnbindAnimation(anim->mpAnimTransform);
                    List_Remove(&mAnms, anim);
                    delete anim;
                }

                delete this;
            }
        }
    }
}
