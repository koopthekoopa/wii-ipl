#include <nw4r/snd/FxDelay.h>

#include <nw4r/ut.h>

#include <revolution/ax.h>

namespace nw4r {
    namespace snd {
        FxDelay::FxDelay() {
            DelayParam param = {160.0f, 0.4f, 1.0f};
            SetParam(param);
        }

        u32 FxDelay::GetRequiredMemSize() {
            u32 memSize = AXFXDelayGetMemSize(&mAxfxParam);
            return ut::RoundUp(memSize + detail::AxfxImpl::HEAP_SIZE_MIN, 32);
        }

        bool FxDelay::AssignWorkBuffer(void* buffer, u32 size) {
            return mImpl.CreateHeap(buffer, size);
        }

        void FxDelay::ReleaseWorkBuffer() {
            mImpl.DestroyHeap();
        }

        bool FxDelay::StartUp() {
            u32 memSize = GetRequiredMemSize();
            if (memSize > mImpl.GetHeapTotalSize()) {
                return false;
            }

            mImpl.mCurrentFx = &mImpl;
            mImpl.mAllocatedSize = 0;
            AXFXSetHooks(detail::AxfxImpl::Alloc, detail::AxfxImpl::Free);

            BOOL success = AXFXDelayInit(&mAxfxParam);

            AXFXDelayGetMemSize(&mAxfxParam); // Debug leftover
            mImpl.mCurrentFx = NULL;
            mImpl.mIsActive = true;

            return success;
        }

        void FxDelay::Shutdown() {
             mImpl.mIsActive = false;
            mImpl.mCurrentFx = &mImpl;

            AXFXSetHooks(detail::AxfxImpl::Alloc, detail::AxfxImpl::Free);

            AXFXDelayShutdown(&mAxfxParam);
            mImpl.mCurrentFx = NULL;
        }

        bool FxDelay::SetParam(const DelayParam& rParam) {
            mParam = rParam;

            mAxfxParam.delay[0] = mAxfxParam.delay[1] = mAxfxParam.delay[2] = ut::Clamp<u32>(rParam.delay, 1, 5000);
            mAxfxParam.feedback[0] = mAxfxParam.feedback[1] = mAxfxParam.feedback[2] = ut::Clamp<u32>(100.0f * rParam.feedback, 0, 99);
            mAxfxParam.output[0] = mAxfxParam.output[1] = mAxfxParam.output[2] = ut::Clamp<u32>(100.0f * rParam.outGain, 0, 100);

            if (!mImpl.mIsActive) {
                return true;
            }

            u32 memSize = GetRequiredMemSize();
            if (memSize > mImpl.GetHeapTotalSize()) {
                return false;
            }

            mImpl.mCurrentFx = &mImpl;
            BOOL success = AXFXDelaySettings(&mAxfxParam);
            mImpl.mCurrentFx = NULL;

            return success;
        }

        void FxDelay::UpdateBuffer(int channels, void** buffer, u32 size, SampleFormat format, f32 sampleRate, OutputMode mode) {
            void* chans[AX_STEREO_MAX];
            chans[AX_STEREO_L] = buffer[AX_STEREO_L];
            chans[AX_STEREO_R] = buffer[AX_STEREO_R];
            chans[AX_STEREO_S] = buffer[AX_STEREO_S];

            AXFXDelayCallback(chans, &mAxfxParam);
        }
    }
}
