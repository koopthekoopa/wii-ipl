#include <nw4r/snd/FxChorus.h>

#include <nw4r/ut.h>

#include <revolution/ax.h>

namespace nw4r {
    namespace snd {
        FxChorus::FxChorus() {
            ChorusParam param = {10.0f, 0.5f, 1.0f};
            SetParam(param);
        }

        u32 FxChorus::GetRequiredMemSize() {
            u32 memSize = AXFXChorusGetMemSize(&mAxfxParam);
            return ut::RoundUp(memSize + detail::AxfxImpl::HEAP_SIZE_MIN, 32);
        }

        bool FxChorus::AssignWorkBuffer(void* buffer, u32 size) {
            return mImpl.CreateHeap(buffer, size);
        }

        void FxChorus::ReleaseWorkBuffer() {
            mImpl.DestroyHeap();
        }

        bool FxChorus::StartUp() {
            u32 memSize = GetRequiredMemSize();
            if (memSize > mImpl.GetHeapTotalSize()) {
                return false;
            }

            mImpl.mCurrentFx = &mImpl;
            mImpl.mAllocatedSize = 0;
            AXFXSetHooks(detail::AxfxImpl::Alloc, detail::AxfxImpl::Free);

            BOOL success = AXFXChorusInit(&mAxfxParam);

            AXFXChorusGetMemSize(&mAxfxParam); // Debug leftover
            mImpl.mCurrentFx = NULL;
            mImpl.mIsActive = true;

            return success;
        }

        void FxChorus::Shutdown() {
            mImpl.mIsActive = false;
            mImpl.mCurrentFx = &mImpl;

            AXFXSetHooks(detail::AxfxImpl::Alloc, detail::AxfxImpl::Free);

            AXFXChorusShutdown(&mAxfxParam);
            mImpl.mCurrentFx = NULL;
        }

        bool FxChorus::SetParam(const ChorusParam& rParam) {
            mParam = rParam;

            u32 baseDelay = rParam.delayTime;
            u32 variation = rParam.delayTime * rParam.depth;
            u32 period = 1000.0f / rParam.rate;

            mAxfxParam.baseDelay = ut::Clamp<u32>(baseDelay, 1, 50);
            mAxfxParam.variation = ut::Clamp<u32>(variation, 0, 50);
            mAxfxParam.period = ut::Clamp<u32>(period, 500, 10000);

            if (!mImpl.mIsActive) {
                return true;
            }

            u32 memSize = GetRequiredMemSize();
            if (memSize > mImpl.GetHeapTotalSize()) {
                return false;
            }

            mImpl.mCurrentFx = &mImpl;
            BOOL success = AXFXChorusSettings(&mAxfxParam);
            mImpl.mCurrentFx = NULL;

            return success;
        }

        void FxChorus::UpdateBuffer(int channels, void** buffer, u32 size, SampleFormat format, f32 sampleRate, OutputMode mode) {
            void* chans[AX_STEREO_MAX];

            chans[AX_STEREO_L] = buffer[AX_STEREO_L];
            chans[AX_STEREO_R] = buffer[AX_STEREO_R];
            chans[AX_STEREO_S] = buffer[AX_STEREO_S];

            AXFXChorusCallback(chans, &mAxfxParam);
        }
    }
}
