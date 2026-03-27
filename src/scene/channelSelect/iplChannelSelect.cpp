#include "scene/channelSelect/iplChannelSelect.h"

namespace ipl {
    namespace scene {
        void ChannelSelect::prepare() {
        }

        void ChannelSelect::create() {
        }

        void ChannelSelect::calcCommon() {
        }

        FaderSceneCommand ChannelSelect::calcFadein() {
        }

        FaderSceneCommand ChannelSelect::calcNormal() {
        }

        void ChannelSelect::initCalcFadeout() {
        }

        FaderSceneCommand ChannelSelect::calcFadeout() {
        }

        void ChannelSelect::draw() {
        }

        void ChannelSelect::destroy() {
        }

        BOOL ChannelSelect::isFirstCall() const {
        }

        void ChannelSelect::getRsoExBufData(void* rsoExBuf) const {
        }

        void ChannelSelect::setRsoExBufData(const void* rsoExBuf) {
        }

        void ChannelSelect::getRsoTitleDataPath(char* dataPath) const {
        }

        layout::Animator* getRsoAnimator(int idx) {
        }

        BOOL ChannelSelect::isStartAnimFinished() const {
        }

        void* allocFromRsoExHeap(u32 size, int align) {
        }

        void ChannelSelect::freeToRsoExHeap(void* buffer) {
        }

        u32 ChannelSelect::getAllocatableSizeForRsoExHeap() const {
        }

        void ChannelSelect::setDebugRsoIntrval(u32 val) {
        }

        void ChannelSelect::createChannelModulesHeap() {
        }

        void ChannelSelect::createBaseLayout() {
        }

        void ChannelSelect::createDiskLayout() {
        }

        void ChannelSelect::createChannelThumbnails() {
        }

        void ChannelSelect::createChannelThumbnails(ChannelObj* channelObj) {
        }

        void ChannelSelect::calcChannelModules() {
        }

        void ChannelSelect::calcChannelThumbnails() {
        }

        void ChannelSelect::calcDiskLayout() {
        }

        void ChannelSelect::drawChannelThumbnails() {
        }

        void ChannelSelect::drawChannelOthers() {
        }

        void ChannelSelect::calcNormalNormal() {
        }

        void ChannelSelect::calcNormalWaitScrl() {
        }

        void ChannelSelect::calcNormalWaitLoading() {
        }

        void ChannelSelect::calcNormalFadeOutZoom() {
        }

        void ChannelSelect::calcNormalRestart() {
        }

        void ChannelSelect::calcNormalSafeModeDialog() {
        }

        void ChannelSelect::refreshChannelList(int unk) {
        }

        void ChannelSelect::makeChannelList(int unk, bool unk2) {
        }

        void ChannelSelect::appendToChannelList(int unk0, int unk1) {
        }

        void ChannelSelect::destroyChannelObj(ChannelObj* channelObj) {
        }

        void ChannelSelect::sortChannelList(int unk) {
        }

        void ChannelSelect::sortChannelListByPage(int page, int unk) {
        }

        ChannelObj* ChannelSelect::searchList(int page, int unk) const {
        }

        void ChannelSelect::setupDiskChanObj() {
        }

        void ChannelSelect::updateDiskState() {
        }

        void ChannelSelect::startDiskInEvent() {
        }

        void ChannelSelect::startDiskOutEvent() {
        }

        void ChannelSelect::setChanFrameVisibility() {
        }

        BOOL ChannelSelect::isChannelInView(int unk0, int unk1) const {
        }

        BOOL ChannelSelect::isChannelInCalc(int unk0, int unk1, int unk2) const {
        }

        BOOL ChannelSelect::isPageCreated(int page) const {
        }

        BOOL ChannelSelect::isPageCreatedAllDone(int page) const {
        }

        void ChannelSelect::preparePageScrolling(int page) {
        }

        void ChannelSelect::startPageScroll(int page) {
        }

        void ChannelSelect::tryToStartBoardScene() {
        }

        void ChannelSelect::reserveSceneChangeDerived(int unk0, int unk1) {
        }

        void ChannelSelect::tellStartingZoomAnm() {
        }

        void ChannelSelect::prepareResarting(int page) {
        }

        void ChannelSelect::restart(int page, int unk) {
        }

        nw4r::lyt::Pane* ChannelSelect::getChannelBasePane(int unk1, int unk2, int unk3) const {
        }

        nw4r::lyt::Pane* ChannelSelect::getChannelBasePane(int unk) const {
        }

        nw4r::lyt::Pane* ChannelSelect::getChannelBasePane(int unk) {
        }

        nw4r::math::VEC3 ChannelSelect::getDispChanTrans(int unk) const {
        }

        void ChannelSelect::setChannelScissor(const ChannelObj* channelObj) const {
        }

        void ChannelSelect::initChanZoomParam(const math::VEC3& pos, int unk) {
        }

        void ChannelSelect::calcChanZoomParam() {
        }

        void ChannelSelect::setChanZoomOrtho() {
        }

        BOOL ChannelSelect::isInChannelPaneNames(const char* name) const {
        }

        void ChannelSelect::getFreeModuleExHeap() {
        }

        void ChannelSelect::updateModuleExHeap(EGG::ExpHeap* heap1, EGG::ExpHeap* heap2) {
        }

        void ChannelSelect::restartChannelModules() {
        }

        void ChannelSelect::createChanMoveLayout() {
        }

        void ChannelSelect::calcNormalGrab() {
        }

        void ChannelSelect::calcNormalDrag() {
        }

        void ChannelSelect::calcNormalReleaseWait() {
        }

        void ChannelSelect::calcNormalRelease() {
        }

        void ChannelSelect::calcNormalMoveChanIn() {
        }

        void ChannelSelect::calcNormalMoveChanSave() {
        }

        void ChannelSelect::calcNormalMoveChanOut() {
        }

        void ChannelSelect::calcNormalDragScrl() {
        }

        void ChannelSelect::onEventDrag(const char* paneName, u32 event, controller::Interface* con) {
        }

        void ChannelSelect::onEventDerivedDrag(const char* paneName, u32 event, controller::Interface* con) {
        }

        void ChannelSelect::startDrag(const controller::Interface* con, int page, int index) {
        }

        void ChannelSelect::finishDrag() {
        }

        bool ChannelSelect::isReleasableArea(int page, int index) {
        }

        void ChannelSelect::moveDrag() {
        }

        const char* ChannelSelect::iplChannelSelect_813B08AC(int index) {
        }

        void ChannelSelect::startResetting() {
        }
    }  // namespace scene
}  // namespace ipl
