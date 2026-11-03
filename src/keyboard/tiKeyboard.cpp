#include "keyboard/tiManager.h"

#include "keyboard/tiHWKeyboard.h"
#include "keyboard/tiSignWindow.h"

#include "keyboard/tiCellPhone.h"

#include <revolution/sc.h>

#include <new>

namespace textinput {
    static EventObserver defaultObserver;

    Manager::Manager(MEMAllocator* allocator, nw4r::lyt::MultiArcResourceAccessor* multiArc, textinput::EventObserver* eventObserver)
        : mpAllocator(allocator), mpMultiArcResourceAccessor(multiArc), mpEditBuffer(NULL), mpHWKeyboard(NULL), mpPCKeyboard(NULL),
          mpCellPhoneKeyboard(NULL), mpInputForm(NULL), mpCandidateBox(NULL), mpToolBar(NULL), mpPredictLanguageDialog(NULL), mpSignWindow(NULL),
          mpEventObserver(eventObserver), meDestination(DST_JP), meLanguage(JP), mbAspectRatio4x3(true) {
        if (eventObserver == NULL) {
            mpEventObserver = &defaultObserver;
        }
    }
    Manager::~Manager() {
        if (mpPCKeyboard) {
            mpPCKeyboard->~LayoutByNW4R();
            MEMFreeToAllocator(mpAllocator, mpPCKeyboard);
        }
        if (mpCellPhoneKeyboard) {
            mpCellPhoneKeyboard->~LayoutByNW4R();
            MEMFreeToAllocator(mpAllocator, mpCellPhoneKeyboard);
        }
        if (mpInputForm) {
            mpInputForm->~LayoutByNW4R();
            MEMFreeToAllocator(mpAllocator, mpInputForm);
        }
        if (mpCandidateBox) {
            mpCandidateBox->~LayoutByNW4R();
            MEMFreeToAllocator(mpAllocator, mpCandidateBox);
        }
        if (mpToolBar) {
            mpToolBar->~LayoutByNW4R();
            MEMFreeToAllocator(mpAllocator, mpToolBar);
        }
        if (mpPredictLanguageDialog) {
            mpPredictLanguageDialog->~LayoutByNW4R();
            MEMFreeToAllocator(mpAllocator, mpPredictLanguageDialog);
        }
        if (mpSignWindow) {
            mpSignWindow->~LayoutByNW4R();
            MEMFreeToAllocator(mpAllocator, mpSignWindow);
        }
        if (mpHWKeyboard) {
            mpHWKeyboard->~HWKeyboard();
            MEMFreeToAllocator(mpAllocator, mpHWKeyboard);
        }
        if (mpEditBuffer) {
            mpEditBuffer->~EditBuffer();
            MEMFreeToAllocator(mpAllocator, mpEditBuffer);
        }
    }

    void Manager::create(MEMAllocator* allocator) {
        mpEditBuffer = createEditBuffer();
        mpEditBuffer->create(mpAllocator);

        mpHWKeyboard = createHWKeyboard();

        mpPCKeyboard = createPCTypeKeyboard();
        mpPCKeyboard->create(mpAllocator);

        mpCellPhoneKeyboard = createCellPhoneTypeKeyboard();
        mpCellPhoneKeyboard->create(mpAllocator);

        mpInputForm = createInputForm();
        mpInputForm->create(mpAllocator, mpEditBuffer);

        mpCandidateBox = createCandidateBox();
        mpCandidateBox->create(mpAllocator);

        mpToolBar = createToolBar();
        mpToolBar->create(mpAllocator);

        mpPredictLanguageDialog = createPredictLanguageDialog();
        mpPredictLanguageDialog->create(mpAllocator);

        mpSignWindow = createSignWindow();
        mpSignWindow->create(mpAllocator);

        initAspect();

        init();
    }
    void Manager::initAspect() {
        if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
            setLayoutScaleFor16x9();
            mbAspectRatio4x3 = false;
        } else {
            setLayoutScaleFor4x3();
            mbAspectRatio4x3 = true;
        }
    }
    void Manager::init() {
        input::HKBManager::getInstance().ClearState();

        mpInputForm->clearSender();

        mpHWKeyboard->setCommandReceiver(mpInputForm);
        mpPCKeyboard->setCommandReceiver(mpInputForm);
        mpCellPhoneKeyboard->setCommandReceiver(mpInputForm);
        mpCandidateBox->setCommandReceiver(mpInputForm);
        mpPredictLanguageDialog->setCommandReceiver(mpInputForm);
        mpSignWindow->setCommandReceiver(mpInputForm);

        mpInputForm->setCandidateBox(mpCandidateBox);

        mpPCKeyboard->setPredictLanguageDialog(mpPredictLanguageDialog);
        mpPCKeyboard->setSignWindow(mpSignWindow);
        mpCellPhoneKeyboard->setPredictLanguageDialog(mpPredictLanguageDialog);
        mpCellPhoneKeyboard->setSignWindow(mpSignWindow);

        if (mbAspectRatio4x3 == true) {
            setLayoutScaleFor4x3();
        } else {
            setLayoutScaleFor16x9();
        }
        mpPredictLanguageDialog->setDestination(meDestination);
        mpInputForm->setDestination(meDestination);

        mpInputForm->setLanguage(meLanguage);
        mpPCKeyboard->setLanguage(meLanguage);
        mpCellPhoneKeyboard->setLanguage(meLanguage);
        mpSignWindow->setLanguage(meLanguage);
        mpCandidateBox->setLanguage(meLanguage);
        mpToolBar->setLanguage(meLanguage);
        mpPredictLanguageDialog->setLanguage(meLanguage);

        mpHWKeyboard->setLanguage(meDestination, meLanguage);

        mpHWKeyboard->init();
        mpPCKeyboard->init();
        mpCellPhoneKeyboard->init();
        mpInputForm->init();
        mpCandidateBox->init();
        mpToolBar->init();
        mpPredictLanguageDialog->init();
        mpSignWindow->init();

        setFixedPredictionJP(0, NULL);
        setSecretInputMode(false);
    }

    void Manager::setFixedPredictionJP(int num, const char** predicts) {
        getInputForm()->getAtokString()->setFixPrediction(num, predicts);
    }

    void Manager::calc() {
        if (mpToolBar->isQwerty()) {
            mpPCKeyboard->calc();
        } else {
            mpCellPhoneKeyboard->calc();
        }

        mpToolBar->calc();
        mpCandidateBox->calc();
        mpInputForm->calc();
        if (mpPredictLanguageDialog->isActive()) {
            mpPredictLanguageDialog->calc();
        }
        if (mpSignWindow->isActive()) {
            mpSignWindow->calc();
        }
    }

    void Manager::draw() {
        GXSetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
        mpToolBar->draw();
        mpInputForm->draw();
        if (mpToolBar->isQwerty()) {
            mpPCKeyboard->draw();
        } else {
            mpCellPhoneKeyboard->draw();
        }
        mpCandidateBox->draw();
        if (mpPredictLanguageDialog->isActive()) {
            mpPredictLanguageDialog->draw();
        }
        if (mpSignWindow->isActive()) {
            mpSignWindow->draw();
        }
    }

    bool Manager::updateInput(int chan, f32 x, f32 y, u32 trig, u32 hold, u32 release) {
        bool wasQwerty = mpToolBar->isQwerty();

        nw4rmanager::TiEventHandler::Input input = {chan, x, y, trig, hold, release};
        mpHWKeyboard->updateInput(chan, x, y, trig, hold, release, &input);

        if (mpPredictLanguageDialog->isActive()) {
            return mpPredictLanguageDialog->updateInput(chan, x, y, trig, hold, release, &input);
        }
        mpInputForm->updateInputCommon(chan, trig, hold, release, &input);

        if (mpSignWindow->isActive()) {
            return mpSignWindow->updateInput(chan, x, y, trig, hold, release, &input);
        }

        bool keyboardUpdateRes;
        if (wasQwerty) {
            keyboardUpdateRes = mpPCKeyboard->updateInput(chan, x, y, trig, hold, release, &input);
        } else {
            keyboardUpdateRes = mpCellPhoneKeyboard->updateInput(chan, x, y, trig, hold, release, &input);
        }

        bool toolbarUpdateRes = mpToolBar->updateInput(chan, x, y, trig, hold, release, &input);
        bool candBoxUpdateRes = mpCandidateBox->updateInput(chan, x, y, trig, hold, release, &input);
        bool inputFormUpdateRes = mpInputForm->updateInput(chan, x, y, trig, hold, release, &input);

        bool updateRes = (keyboardUpdateRes | candBoxUpdateRes) | (inputFormUpdateRes | toolbarUpdateRes);

        if (wasQwerty != mpToolBar->isQwerty()) {
            getInputForm()->onCommand(CommandReceiver::INPUT_COMMAND_6, NULL);

            mpCandidateBox->checkValidation();
            if (mpToolBar->isQwerty()) {
                mpPCKeyboard->onActive();
            } else {
                mpCellPhoneKeyboard->onActive();
            }
        }
        return updateRes;
    }

    bool Manager::updateInput(input::HKBManager& hkbManager) {
        bool wasQwerty = mpToolBar->isQwerty();

        if (mpPredictLanguageDialog->isActive()) {
            return mpPredictLanguageDialog->updateInput(hkbManager);
        }

        if (mpSignWindow->isActive()) {
            return mpSignWindow->updateInput(hkbManager);
        }

        bool keyboardUpdateRes;
        if (wasQwerty) {
            keyboardUpdateRes = mpPCKeyboard->updateInput(hkbManager);
        } else {
            keyboardUpdateRes = mpCellPhoneKeyboard->updateInput(hkbManager);
        }

        bool toolbarUpdateRes = mpToolBar->updateInput(hkbManager);
        bool candBoxUpdateRes = mpCandidateBox->updateInput(hkbManager);
        bool inputFormUpdateRes = mpInputForm->updateInput(hkbManager);

        bool updateRes = (keyboardUpdateRes | candBoxUpdateRes) | (inputFormUpdateRes | toolbarUpdateRes);

        if (wasQwerty != mpToolBar->isQwerty()) {
            getInputForm()->onCommand(CommandReceiver::INPUT_COMMAND_6, NULL);

            mpCandidateBox->checkValidation();
            if (mpToolBar->isQwerty()) {
                mpPCKeyboard->onActive();
            } else {
                mpCellPhoneKeyboard->onActive();
            }
        }
        return updateRes;
    }

    wchar_t* Manager::getWCString() const {
        return mpInputForm->getWCString();
    }
    void Manager::setWCString(const wchar_t* string) {
        mpInputForm->inputform::Base::setString(string);
    }

    void Manager::setLanguage(Language language) {
        meLanguage = language;
    }
    void Manager::setDestination(Destination destination) {
        meDestination = destination;
    }

    void Manager::limitStringLength(u32 limitStringLength) {
        mpInputForm->limitStringLength(limitStringLength);
    }
    void Manager::limitRowNum(u32 limitRowNum) {
        mpInputForm->limitRowNum(limitRowNum);
    }

    void Manager::setAnimationOn(bool flag) {
        mpPCKeyboard->setAnimOn(flag);
        mpCellPhoneKeyboard->setAnimOn(flag);
        mpInputForm->setAnimOn(flag);
        mpCandidateBox->setAnimOn(flag);
        mpToolBar->setAnimOn(flag);
        mpPredictLanguageDialog->setAnimOn(flag);
        mpSignWindow->setAnimOn(flag);
    }

    void Manager::setAspectRatio(bool b4x3) {
        mbAspectRatio4x3 = b4x3;

        if (mbAspectRatio4x3 == true) {
            setLayoutScaleFor4x3();
        } else {
            setLayoutScaleFor16x9();
        }
    }

    void Manager::setTitleText(const wchar_t* titleText) {
        nw4r::lyt::TextBox* tb = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpInputForm->getPane("T_title_text"));
        if (tb != NULL) {
            tb->SetString(titleText);
        }
    }

    void Manager::setLayoutScaleFor16x9() {
        mpPCKeyboard->setRootPaneScaleFor16x9();
        mpCellPhoneKeyboard->setRootPaneScaleFor16x9();
        mpInputForm->setRootPaneScaleFor16x9();
        mpCandidateBox->setRootPaneScaleFor16x9();
        mpToolBar->setRootPaneScaleFor16x9();
        mpPredictLanguageDialog->setRootPaneScaleFor16x9();
        mpSignWindow->setRootPaneScaleFor16x9();
    }

    void Manager::setLayoutScaleFor4x3() {
        mpPCKeyboard->setRootPaneScaleFor4x3();
        mpCellPhoneKeyboard->setRootPaneScaleFor4x3();
        mpInputForm->setRootPaneScaleFor4x3();
        mpCandidateBox->setRootPaneScaleFor4x3();
        mpToolBar->setRootPaneScaleFor4x3();
        mpPredictLanguageDialog->setRootPaneScaleFor4x3();
        mpSignWindow->setRootPaneScaleFor4x3();
    }

    inputform::EditBuffer* Manager::createEditBuffer() {
        return new (MEMAllocFromAllocator(mpAllocator, sizeof(inputform::EditBuffer))) inputform::EditBuffer();
    }
    keyboard::hwkey::HWKeyboard* Manager::createHWKeyboard() {
        return new (MEMAllocFromAllocator(mpAllocator, sizeof(keyboard::hwkey::HWKeyboard))) keyboard::hwkey::HWKeyboard(this);
    }

    keyboard::pctype::LayoutByNW4R* Manager::createPCTypeKeyboard() {
        // TODO
        // return new (MEMAllocFromAllocator(mpAllocator, sizeof(keyboard::pctype::LayoutByNW4R))) keyboard::pctype::LayoutByNW4R();

        return (keyboard::pctype::LayoutByNW4R*)new (MEMAllocFromAllocator(mpAllocator, sizeof(candidatebox::Sample)))
            candidatebox::Sample(this, mpMultiArcResourceAccessor, "fs_VK_ascii_keytop_a.brlyt", mpEventObserver);
    }
    keyboard::cellphonetype::LayoutByNW4R* Manager::createCellPhoneTypeKeyboard() {
        return new (MEMAllocFromAllocator(mpAllocator, sizeof(keyboard::cellphonetype::Sample)))
            keyboard::cellphonetype::Sample(this, mpMultiArcResourceAccessor, "fs_VK_cellPhone_a.brlyt", mpEventObserver);
    }
    inputform::LayoutByNW4R* Manager::createInputForm() {
        return new (MEMAllocFromAllocator(mpAllocator, sizeof(inputform::Sample)))
            inputform::Sample(this, mpMultiArcResourceAccessor, "fs_VK_textBox_a.brlyt", mpEventObserver, NULL);
    }
    candidatebox::LayoutByNW4R* Manager::createCandidateBox() {
        return new (MEMAllocFromAllocator(mpAllocator, sizeof(candidatebox::Sample)))
            candidatebox::Sample(this, mpMultiArcResourceAccessor, "fs_VK_predictInput_a.brlyt", mpEventObserver);
    }
    toolbar::LayoutByNW4R* Manager::createToolBar() {
        return new (MEMAllocFromAllocator(mpAllocator, sizeof(toolbar::Sample)))
            toolbar::Sample(this, mpMultiArcResourceAccessor, "fs_VK_toolbar_a.brlyt", mpEventObserver);
    }
    predictlang::LayoutByNW4R* Manager::createPredictLanguageDialog() {
        return new (MEMAllocFromAllocator(mpAllocator, sizeof(predictlang::Sample)))
            predictlang::Sample(this, mpMultiArcResourceAccessor, "fs_prdicSelWidw_a.brlyt", mpEventObserver);
    }
    keyboard::signwindow::LayoutByNW4R* Manager::createSignWindow() {
        return new (MEMAllocFromAllocator(mpAllocator, sizeof(keyboard::signwindow::Sample)))
            keyboard::signwindow::Sample(this, mpMultiArcResourceAccessor, "fs_signWindow_a.brlyt", mpEventObserver);
    }

    void Manager::startPredictTurnOn(bool predictOn) {
        if (getInputForm()->isPredictOn() != predictOn) {
            getCandidateBox()->startTurnOn(predictOn);
        }
    }

    bool Manager::isPredictTurning() const {
        return getCandidateBox()->isPredictTurning();
    }

    void Manager::enableCompatibleFilter(bool compatibleFilter) {
        inputform::DeadKeyStream::setCompatibleFilterEnabled(compatibleFilter);
    }

    void Manager::enableKSXFilter(bool enabled) {
        mpEditBuffer->getString()->EnableKSXFilter(enabled);
        mpEditBuffer->getZiString()->EnableKSXFilter(enabled);
    }

    bool Manager::isVacancy() const {
        if (getInputForm() == NULL || getToolBar() == NULL)
            return true;

        if (!getToolBar()->isQwerty() && getCellPhoneKeyboard()->isHoldingButton()) {
            return false;
        }

        return getInputForm()->isVacancy();
    }

    void Manager::SetFont(nw4r::lyt::FontRefLink* fontLink) {
        nw4r::ut::Font* font = fontLink->GetFont();
        if (mpToolBar) {
            mpToolBar->SetFontForce(font);
        }
        if (mpPCKeyboard) {
            mpPCKeyboard->SetFontForce(font);
        }
        if (mpCandidateBox) {
            mpCandidateBox->SetFontForce(font);
        }
        if (mpSignWindow) {
            mpSignWindow->SetFontForce(font);
        }
        if (mpInputForm) {
            mpInputForm->SetFont(*font);
        }
        if (mpCellPhoneKeyboard) {
            mpCellPhoneKeyboard->SetFontForce(font);
        }
    }
}  // namespace textinput
