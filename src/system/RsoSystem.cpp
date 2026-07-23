#include "scene/channelSelect/iplChannelSelect.h"
#include "scene/channelTitle/iplChannelTitle.h"

#include "iplSystem.h"

#define IS_IPL_RSO_LIB
#include "RsoSystem.h"

#include <nw4r/lyt/pane.h>
#include <nw4r/lyt/picture.h>
#include <nw4r/lyt/textBox.h>

#include <revolution/cx.h>
#include <revolution/vf.h>

using namespace ipl;

#define GET_CHANNEL_SELECT (System::getSceneManager()->getScene(SCENE_CHANNEL_SELECT))
#define GET_CHANNEL_TITLE ((scene::ChannelTitle*)System::getSceneManager()->getScene(SCENE_CHANNEL_TITLE))

static layout::Animator* IplRso_getAnim(int idx);

BOOL IplRso_IsFirstCall() {
    scene::SceneObj* scn = GET_CHANNEL_TITLE;
    if (scn != NULL) {
        return ((scene::ChannelTitle*)scn)->isFirstCall();
    } else {
        scn = GET_CHANNEL_SELECT;
        return ((scene::ChannelSelect*)scn)->isFirstCall();
    }
}

void IplRso_GetExBufData(void* exBuf) {
    scene::SceneObj* scn = GET_CHANNEL_TITLE;
    if (scn != NULL) {
        ((scene::ChannelTitle*)scn)->getRsoExBufData(exBuf);
    } else {
        scn = GET_CHANNEL_SELECT;
        ((scene::ChannelSelect*)scn)->getRsoExBufData(exBuf);
    }
}

void IplRso_SetExBufData(void* exBuf) {
    scene::SceneObj* scn = GET_CHANNEL_TITLE;
    if (scn != NULL) {
        ((scene::ChannelTitle*)scn)->setRsoExBufData(exBuf);
    } else {
        scn = GET_CHANNEL_SELECT;
        ((scene::ChannelSelect*)scn)->setRsoExBufData(exBuf);
    }
}

void IplRso_GetTitleDataPath(char* path) {
    scene::SceneObj* scn = GET_CHANNEL_TITLE;
    if (scn != NULL) {
        ((scene::ChannelTitle*)scn)->getRsoTitleDataPath(path);
    } else {
        scn = GET_CHANNEL_SELECT;
        ((scene::ChannelSelect*)scn)->getRsoTitleDataPath(path);
    }
}

BOOL IplRso_IsStartAnimFinished() {
    scene::SceneObj* scn = GET_CHANNEL_TITLE;
    if (scn != NULL) {
        return ((scene::ChannelTitle*)scn)->isStartAnimFinished();
    } else {
        scn = GET_CHANNEL_SELECT;
        return ((scene::ChannelSelect*)scn)->isStartAnimFinished();
    }
}

void IplRso_AnimStart(int idx) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return;
    }
    anim->play();
}

void IplRso_AnimRestart(int idx) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return;
    }
    anim->restart();
}

void IplRso_AnimStop(int idx) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return;
    }
    anim->stop();
}

BOOL IplRso_AnimIsPlaying(int idx) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return FALSE;
    }
    return anim->isPlaying();
}

void IplRso_AnimSetMaxFrame(int idx, f32 frame) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return;
    }
    anim->setMaxFrame(frame);
}

void IplRso_AnimSetMinFrame(int idx, f32 frame) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return;
    }
    anim->setMinFrame(frame);
}

void IplRso_AnimSetCurrentFrame(int idx, f32 frame) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return;
    }
    anim->setCurrentFrame(frame);
}

void IplRso_AnimSetType(int idx, int type) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return;
    }
    anim->setAnmType(type);
}

void IplRso_AnimInitFrame(int idx, f32 startFrame) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return;
    }
    anim->initAnmFrame(startFrame);
}

f32 IplRso_AnimGetMaxFrame(int idx) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return 0.0f;
    }
    return anim->getMaxFrame();
}

f32 IplRso_AnimGetMinFrame(int idx) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return 0.0f;
    }
    return anim->getMinFrame();
}

f32 IplRso_AnimGetCurrentFrame(int idx) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return 0.0f;
    }
    return anim->getCurrentFrame();
}

int IplRso_AnimGetType(int idx) {
    layout::Animator* anim = IplRso_getAnim(idx);
    if (anim == NULL) {
        return 0.0f;
    }
    return anim->getAnmType();
}

void* IplRso_AllocFromExHeap(u32 size, int align) {
    scene::SceneObj* scn = GET_CHANNEL_TITLE;
    if (scn != NULL) {
        return ((scene::ChannelTitle*)scn)->allocFromRsoExHeap(size, align);
    }
    scn = GET_CHANNEL_SELECT;
    if (scn != NULL) {
        return ((scene::ChannelSelect*)scn)->allocFromRsoExHeap(size, align);
    }
    return NULL;
}

void IplRso_FreeToExHeap(void* buffer) {
    scene::SceneObj* scn = GET_CHANNEL_TITLE;
    if (scn != NULL) {
        ((scene::ChannelTitle*)scn)->freeToRsoExHeap(buffer);
    } else {
        scn = GET_CHANNEL_SELECT;
        if (scn != NULL) {
            ((scene::ChannelSelect*)scn)->freeToRsoExHeap(buffer);
        }
    }
}

u32 IplRso_GetAllocatableSizeForExHeap() {
    scene::SceneObj* scn = GET_CHANNEL_TITLE;
    if (scn != NULL) {
        return ((scene::ChannelTitle*)scn)->getAllocatableSizeForRsoExHeap();
    }
    scn = GET_CHANNEL_SELECT;
    if (scn != NULL) {
        return ((scene::ChannelSelect*)scn)->getAllocatableSizeForRsoExHeap();
    }
    return 0;
}

void IplRso_DebugSetPollInterval(u32 val) {
    scene::SceneObj* scn = GET_CHANNEL_TITLE;
    if (scn != NULL) {
        ((scene::ChannelTitle*)scn)->setDebugRsoInterval(val);
    } else {
        scn = GET_CHANNEL_SELECT;
        if (scn != NULL) {
            ((scene::ChannelSelect*)scn)->setDebugRsoInterval(val);
        }
    }
}

static layout::Animator* IplRso_getAnim(int idx) {
    if (idx < 0 || idx >= channel::MAX_ANIMS) {
        return NULL;
    }
    scene::SceneObj* scn = GET_CHANNEL_TITLE;
    if (scn != NULL) {
        return ((scene::ChannelTitle*)scn)->getRsoAnimator(idx);
    }
    scn = GET_CHANNEL_SELECT;
    if (scn == NULL) {
        return NULL;
    }
    return ((scene::ChannelSelect*)scn)->getRsoAnimator(idx);
}

// Do not run this function
// It's sole purpose is to make sure that it exports SDK functions for IplRso.
__declspec(export) void IplRso_symbolMaker() {
    CXInitUncompContextLZ(NULL, 0);
    CXGetUncompressedSize(NULL);
    CXReadUncompLZ(NULL, NULL, 0);

    VFMountDriveNANDFlash("A", "");
    VFFileSearchFirst(NULL, "", 0);
    VFFileSearchNext(NULL);

    nw4r::lyt::Picture pic0;
    nw4r::math::VEC2 vec;
    pic0.GetTexCoord(0, &vec);
    pic0.SetTexCoord(0, &vec);
    pic0.GetTexCoordNum();

    nw4r::lyt::Pane pane0(NULL);
    nw4r::lyt::PaneList::Iterator it;
    pane0.AppendChild(NULL);
    pane0.PrependChild(NULL);
    pane0.InsertChild(NULL, NULL);
    pane0.InsertChild(it, NULL);
    pane0.RemoveChild(NULL);

    nw4r::lyt::ResBlockSet res;
    nw4r::lyt::TextBox textBox1(NULL, res);

    nw4r::lyt::TextBox textBox2(0, NULL, NULL);
    textBox2.GetStringBufferLength();
    textBox2.GetTextColor(0);
    textBox2.SetFont(NULL);

    // these ones never get exported lol
    textBox2.SetTagProcessor(NULL);
    textBox2.SetFontSize(nw4r::lyt::Size(0.0f, 0.0f));
    textBox2.SetLineSpace(0.0f);
    textBox2.SetCharSpace(0.0f);
    textBox2.SetTextPositionH(0);
    textBox2.SetTextPositionV(0);

    nw4r::ut::WideTextWriter* wideTextWriter = new nw4r::ut::WideTextWriter();
    nw4r::ut::ResFont font;
    wideTextWriter->SetFont(font);
    wideTextWriter->SetScale(0.0f, 0.0f);
    wideTextWriter->SetScale(0.0f);
    wideTextWriter->SetFontSize(0.0f, 0.0f);
    wideTextWriter->SetFontSize(0.0f);
    wideTextWriter->SetLineSpace(0.0f);
    wideTextWriter->GetLineSpace();
    wideTextWriter->SetLineHeight(0.0f);
    wideTextWriter->SetCharSpace(0.0f);
    wideTextWriter->SetTabWidth(0);
    wideTextWriter->SetDrawFlag(0);
    wideTextWriter->GetDrawFlag();
    wideTextWriter->ResetTagProcessor();
    wideTextWriter->CalcStringWidth(L"%d", 0);
    wideTextWriter->CalcStringWidth(L"", 0);
    wideTextWriter->CalcStringWidth(L"");
    wideTextWriter->CalcStringHeight(L"%d", 0);
    wideTextWriter->CalcStringHeight(L"", 0);
    wideTextWriter->CalcStringHeight(L"");
    nw4r::ut::Rect rect;
    wideTextWriter->CalcStringRect(&rect, L"%d", 0);
    wideTextWriter->CalcStringRect(&rect, L"", 0);
    wideTextWriter->CalcStringRect(&rect, L"");
}
