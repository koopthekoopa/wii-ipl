#include <nw4r/snd/FxReverbStd.h>

#include <nw4r/ut.h>

#include <revolution/ax.h>

namespace nw4r {
    namespace snd {
        FxReverbStd::FxReverbStd() {
            ReverbStdParam param = {0.02f, 3.0f, 0.6f, 0.4f, 1.0f};
            SetParam(param);
        }

        u32 FxReverbStd::GetRequiredMemSize() {
            u32 memSize = AXFXReverbStdGetMemSize(&mAxfxParam);
            return ut::RoundUp(memSize + detail::AxfxImpl::HEAP_SIZE_MIN, 32);
        }

        bool FxReverbStd::AssignWorkBuffer(void* buffer, u32 size) {
            return mImpl.CreateHeap(buffer, size);
        }

        void FxReverbStd::ReleaseWorkBuffer() {
            mImpl.DestroyHeap();
        }

        bool FxReverbStd::StartUp() {
            u32 memSize = GetRequiredMemSize();
            if (memSize > mImpl.GetHeapTotalSize()) {
                return false;
            }

            mImpl.mCurrentFx = &mImpl;
            mImpl.mAllocatedSize = 0;
            AXFXSetHooks(detail::AxfxImpl::Alloc, detail::AxfxImpl::Free);

            BOOL success = AXFXReverbStdInit(&mAxfxParam);

            AXFXReverbStdGetMemSize(&mAxfxParam); // Debug leftover
            mImpl.mCurrentFx = NULL;
            mImpl.mIsActive = true;

            return success;
        }

        void FxReverbStd::Shutdown() {
            mImpl.mIsActive = false;
            mImpl.mCurrentFx = &mImpl;

            AXFXSetHooks(detail::AxfxImpl::Alloc, detail::AxfxImpl::Free);

            AXFXReverbStdShutdown(&mAxfxParam);
            mImpl.mCurrentFx = NULL;
        }

        bool FxReverbStd::SetParam(const ReverbStdParam& rParam) {
            mParam = rParam;

            mAxfxParam.preDelay = ut::Clamp(rParam.preDelayTime, 0.0f, 0.1f);
            mAxfxParam.time = ut::Clamp(rParam.fusedTime, 0.0f, 10.0f);
            mAxfxParam.coloration = ut::Clamp(rParam.coloration, 0.0f, 1.0f);
            mAxfxParam.damping = ut::Clamp(rParam.damping, 0.0f, 1.0f);
            mAxfxParam.mix = ut::Clamp(rParam.outGain, 0.0f, 1.0f);

            if (!mImpl.mIsActive) {
                return true;
            }

            u32 memSize = GetRequiredMemSize();
            if (memSize > mImpl.GetHeapTotalSize()) {
                return false;
            }

            mImpl.mCurrentFx = &mImpl;
            BOOL success = AXFXReverbStdSettings(&mAxfxParam);
            mImpl.mCurrentFx = NULL;

            return success;
        }

        void FxReverbStd::UpdateBuffer(int channels, void** buffer, u32 size, SampleFormat format, f32 sampleRate, OutputMode mode) {
            void* chans[AX_STEREO_MAX];
            chans[AX_STEREO_L] = buffer[AX_STEREO_L];
            chans[AX_STEREO_R] = buffer[AX_STEREO_R];
            chans[AX_STEREO_S] = buffer[AX_STEREO_S];

            AXFXReverbStdCallback(chans, &mAxfxParam);
        }
    }
}
