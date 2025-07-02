#include <nw4r/snd/FxReverbHiDpl2.h>

#include <nw4r/ut.h>

#include <revolution/ax.h>

namespace nw4r {
    namespace snd {
        FxReverbHiDpl2::FxReverbHiDpl2() {
            ReverbHiDpl2Param param = {0.02f, 3.0f, 0.6f, 0.4f, 0.1f, 1.0f};
            SetParam(param);
        }

        u32 FxReverbHiDpl2::GetRequiredMemSize() {
            u32 memSize = AXFXReverbHiGetMemSizeDpl2(&mAxfxParam);
            return ut::RoundUp(memSize + detail::AxfxImpl::HEAP_SIZE_MIN, 32);
        }

        bool FxReverbHiDpl2::AssignWorkBuffer(void* buffer, u32 size) {
            return mImpl.CreateHeap(buffer, size);
        }

        void FxReverbHiDpl2::ReleaseWorkBuffer() {
            mImpl.DestroyHeap();
        }

        bool FxReverbHiDpl2::StartUp() {
            u32 memSize = GetRequiredMemSize();
            if (memSize > mImpl.GetHeapTotalSize()) {
                return false;
            }

            mImpl.mCurrentFx = &mImpl;
            mImpl.mAllocatedSize = 0;
            AXFXSetHooks(detail::AxfxImpl::Alloc, detail::AxfxImpl::Free);

            BOOL success = AXFXReverbHiInitDpl2(&mAxfxParam);

            AXFXReverbHiGetMemSizeDpl2(&mAxfxParam); // Debug leftover
            mImpl.mCurrentFx = NULL;
            mImpl.mIsActive = true;

            return success;
        }

        void FxReverbHiDpl2::Shutdown() {
            mImpl.mIsActive = false;
            mImpl.mCurrentFx = &mImpl;

            AXFXSetHooks(detail::AxfxImpl::Alloc, detail::AxfxImpl::Free);

            AXFXReverbHiShutdownDpl2(&mAxfxParam);
            mImpl.mCurrentFx = NULL;
        }

        bool FxReverbHiDpl2::SetParam(const ReverbHiDpl2Param& rParam) {
            mParam = rParam;

            mAxfxParam.preDelay = ut::Clamp(rParam.preDelayTime, 0.0f, 0.1f);
            mAxfxParam.time = ut::Clamp(rParam.fusedTime, 0.0f, 10.0f);
            mAxfxParam.coloration = ut::Clamp(rParam.coloration, 0.0f, 1.0f);
            mAxfxParam.damping = ut::Clamp(rParam.damping, 0.0f, 1.0f);
            mAxfxParam.crosstalk = ut::Clamp(rParam.crossTalk, 0.0f, 1.0f);
            mAxfxParam.mix = ut::Clamp(rParam.outGain, 0.0f, 1.0f);

            if (!mImpl.mIsActive) {
                return true;
            }

            u32 memSize = GetRequiredMemSize();
            if (memSize > mImpl.GetHeapTotalSize()) {
                return false;
            }

            mImpl.mCurrentFx = &mImpl;
            BOOL success = AXFXReverbHiSettingsDpl2(&mAxfxParam);
            mImpl.mCurrentFx = NULL;

            return success;
        }

        void FxReverbHiDpl2::UpdateBuffer(int channels, void** buffer, u32 size, SampleFormat format, f32 sampleRate, OutputMode mode) {
            void* chans[AX_DPL2_MAX];
            chans[AX_DPL2_L] = buffer[AX_DPL2_L];
            chans[AX_DPL2_R] = buffer[AX_DPL2_R];
            chans[AX_DPL2_LS] = buffer[AX_DPL2_LS];
            chans[AX_DPL2_RS] = buffer[AX_DPL2_RS];

            AXFXReverbHiCallbackDpl2(chans, &mAxfxParam);
        }
    }
}
