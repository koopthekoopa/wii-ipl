#ifndef NW4R_SND_SEQ_TRACK_H
#define NW4R_SND_SEQ_TRACK_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/Channel.h>
#include <nw4r/snd/Lfo.h>

#include <revolution/wpad.h>

namespace nw4r {
    namespace snd {
        typedef enum SeqMute {
            MUTE_OFF = 0,
            MUTE_NO_STOP,
            MUTE_RELEASE,
            MUTE_STOP
        } SeqMute;

        typedef enum ParseResult {
            PARSE_RESULT_CONTINUE = 0,
            PARSE_RESULT_FINISH
        } ParseResult;

        namespace detail {
            class SeqPlayer;
            class SeqTrack {
                public:
                    static const int VARIABLE_NUM = 16;
                    static const int PRGNO_MAX = 0xFFFF;

                    typedef struct ParserTrackParam {
                        const u8*   baseAddr;               // 0x00
                        const u8*   currentAddr;            // 0x04

                        s32         wait;                   // 0x08
                        u8          muteFlag;               // 0x0C
                        u8          silenceFlag;            // 0x0D
                        u8          noteFinishWait;         // 0x0E
                        u8          portaFlag;              // 0x0F

                        int         bankNo;                 // 0x10
                        int         prgNo;                  // 0x14

                        LfoParam    lfoParam;               // 0x18
                        u8          lfoTarget;              // 0x28

                        f32         sweepPitch;             // 0x2C

                        u8          volume;                 // 0x30
                        u8          volume2;                // 0x31

                        s8          pitchBend;              // 0x32
                        u8          bendRange;              // 0x33

                        s8          pan;                    // 0x34
                        s8          initPan;                // 0x35
                        s8          surroundPan;            // 0x36

                        s8          transpose;              // 0x37

                        u8          priority;               // 0x38

                        u8          portaKey;               // 0x39
                        u8          portaTime;              // 0x3A

                        u8          attack;                 // 0x3B
                        u8          decay;                  // 0x3C
                        u8          sustain;                // 0x3D
                        u8          release;                // 0x3E
                        u8          mainSend;               // 0x3F

                        u8          fxSend[AUX_BUS_NUM];    // 0x40

                        u8          lpfFreq;                // 0x43
                    } ParserTrackParam;

                public:
                    SeqTrack() : mSeqPlayer(NULL) { InitParam(); }
                    virtual ~SeqTrack() {}  // 0x08

                    virtual ParseResult Parse(bool doNoteOn) = 0;   // 0x0C

                    void                SetPlayerTrackNo(int no);
                    u8                  GetPlayerTrackNo() const            { return mPlayerTrackNo; }

                    void                InitParam();
                    void                SetSeqData(const void* base, s32 offset);

                    void                Open();
                    void                Close();

                    void                UpdateChannelLength();
                    void                UpdateChannelRelease(Channel* channel);

                    int                 ParseNextTick(bool doNoteOn);

                    void                StopAllChannel();
                    void                ReleaseAllChannel(int release) NO_INLINE;
                    void                PauseAllChannel(bool flag);
                    void                AddChannel(Channel* channel);
                    void                UpdateChannelParam();
                    void                FreeAllChannel();

                    void                SetMute(SeqMute mute);
                    void                SetVolume(f32 volume);
                    void                SetPitch(f32 pitch);

                    ParserTrackParam&   GetParserTrackParam()               { return mParserTrackParam; }

                    vs16*               GetVariablePtr(int idx);

                    SeqPlayer*          GetSeqPlayer()                      { return mSeqPlayer; }
                    void                SetSeqPlayer(SeqPlayer* seqPlayer)  { mSeqPlayer = seqPlayer; }

                    Channel*            GetLastChannel() const              { return mChannelList; }

                    Channel*            NoteOn(int key, int velocity, s32 length, bool tie);

                private:
                    static const int DEFAULT_PRIORITY = 64;
                    static const int DEFAULT_BENDRANGE = 2;
                    static const int DEFAULT_PORTA_KEY = 60;
                    static const int DEFAULT_VARIABLE_VALUE = -1;

                private:
                    static void         ChannelCallbackFunc(Channel* dropChannel, Channel::ChannelCallbackStatus status, u32 userData);

                private:
                    u8                  mPlayerTrackNo;                         // 0x04

                    f32                 mExtVolume;                             // 0x08
                    f32                 mExtPitch;                              // 0x0C
                    f32                 mExtPan;                                // 0x10
                    f32                 mExtSurroundPan;                        // 0x14
                    f32                 mPanRange;                              // 0x18
                    f32                 mExtLpfFreq;                            // 0x1C
                    f32                 mExtMainSend;                           // 0x20
                    f32                 mExtFxSend[AUX_BUS_NUM];                // 0x24
                    f32                 mExtRemoteSend[WPAD_MAX_CONTROLLERS];   // 0x30
                    f32                 mExtRemoteFxSend[WPAD_MAX_CONTROLLERS]; // 0x40

                    ParserTrackParam    mParserTrackParam;                      // 0x50
                    vs16                mTrackVariable[VARIABLE_NUM];           // 0x94
                    SeqPlayer*          mSeqPlayer;                             // 0xB4
                    Channel*            mChannelList;                           // 0xB8
            };
        }
    }
}

#endif
