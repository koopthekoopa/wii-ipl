#ifndef NW4R_SND_TYPES_H
#define NW4R_SND_TYPES_H

#include <revolution/types.h>

#include <nw4r/ut/LinkList.h>

namespace nw4r {
    namespace snd {
        class LinkedInstance {
            public:
                ut::LinkListNode    mInstanceLink;  // 0x00
        };
        template<typename T, int Ofs> class InstanceManager {
            public:
                typedef typename ut::LinkList<T, Ofs>::Iterator Iterator;
                void Append(T* obj) {
                    mFreeList.PushBack(obj);
                }
                void Remove(T* obj) {
                    mFreeList.Erase(obj);
                }
                T* Alloc() {
                    if (mFreeList.IsEmpty()) {
                        return NULL;
                    }
                    else {
                        T& obj = mFreeList.GetFront();
                        mFreeList.PopFront();
                        mActiveList.PushBack(&obj);
                        return &obj;
                    }
                }
                void Free(T* obj) {
                    if (!mActiveList.IsEmpty()) {
                        mActiveList.Erase(obj);
                        mFreeList.PushBack(obj);
                    }
                }

                Iterator GetBeginIter() { return mActiveList.GetBeginIter(); }
                 Iterator GetEndIter() { return mActiveList.GetEndIter(); }
            private:
                ut::LinkList<T, Ofs>    mFreeList;      // 0x00
                ut::LinkList<T, Ofs>    mActiveList;    // 0x0C
        };

        static const int CHANNEL_MAX = 2;

        static const int VOICE_MAX = 4;

        static const int PRIORITY_MAX = 255;

        static const int REMOTE_FILTER_MAX = 127;

        static const f32 VOLUME_MIN_DB = -90.4f;
        static const f32 VOLUME_MAX_DB = 6.0f;
        static const f32 VOLUME_RANGE_DB = -(VOLUME_MIN_DB - VOLUME_MAX_DB);
        static const int VOLUME_RANGE_MB = static_cast<int>(10 * VOLUME_RANGE_DB);

        typedef enum OutputLineFlag {
            OUTPUT_LINE_MAIN = (1 << 0),
            OUTPUT_LINE_REMOTE_N = (1 << 1),
        } OutputLineFlag;

        typedef enum OutputMode {
            OUTPUT_MODE_STEREO = 0,
            OUTPUT_MODE_SURROUND,
            OUTPUT_MODE_DPL2,
            OUTPUT_MODE_MONO
        } OutputMode;

        typedef enum AuxBus {
            AUX_A = 0,
            AUX_B,
            AUX_C,
            AUX_BUS_NUM
        } AuxBus;

        typedef enum SampleFormat {
            SAMPLE_FORMAT_PCM_S32 = 0,
            SAMPLE_FORMAT_PCM_S16,
            SAMPLE_FORMAT_PCM_S8,
            SAMPLE_FORMAT_DSP_ADPCM
        } SampleFormat;

        typedef struct SoundParam {
            f32 volume;         // 0x00
            f32 pitch;          // 0x04
            f32 pan;            // 0x08
            f32 surroundPan;    // 0x0C
            f32 fxSend;         // 0x10
            f32 lpf;            // 0x14
            s32 priority;       // 0x18
        } SoundParam;

        namespace detail {
            typedef struct AdpcmParam {
                u16 coef[16];   // 0x00
                u16 gain;       // 0x20
                u16 pred_scale; // 0x22
                u16 yn1;        // 0x24
                u16 yn2;        // 0x26
            } AdpcmParam;

            typedef struct AdpcmLoopParam {
                u16 loop_pred_scale;    // 0x00
                u16 loop_yn1;           // 0x02
                u16 loop_yn2;           // 0x04
            } AdpcmLoopParam;

            typedef struct AdpcmInfo {
                AdpcmParam      adpcm;      // 0x08
                AdpcmLoopParam  adpcmloop;  // 0x28
                u16             padding;    // 0x2E
            } AdpcmInfo;

            typedef struct VoiceChannelParam {
                void*       waveData;   // 0x00
                AdpcmInfo   adpcmInfo;  // 0x04
            } VoiceChannelParam;
        }
    }
}

#endif // NW4R_SND_TYPES_H
