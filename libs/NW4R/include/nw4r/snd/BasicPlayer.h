#ifndef NW4R_SND_BASIC_PLAYER_H
#define NW4R_SND_BASIC_PLAYER_H

#include <nw4r/snd/types.h>

#include <revolution/wpad.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class BasicPlayer {
                public:
                    BasicPlayer() : mId(-1) {}
                    virtual ~BasicPlayer() {}                                               // 0x08

                    virtual bool    Start() = 0;                                            // 0x0C
                    virtual void    Stop() = 0;                                             // 0x10
                    virtual void    Pause(bool flag) = 0;                                   // 0x14
                    virtual bool    IsActive() const = 0;                                   // 0x18
                    virtual bool    IsPrepared() const = 0;                                 // 0x1C
                    virtual bool    IsStarted() const = 0;                                  // 0x20
                    virtual bool    IsPause() const = 0;                                    // 0x24
                    virtual void    SetVolume(f32 volume) = 0;                              // 0x28
                    virtual void    SetPitch(f32 pitch) = 0;                                // 0x2C
                    virtual void    SetPan(f32 pan) = 0;                                    // 0x30
                    virtual void    SetSurroundPan(f32 surroundPan) = 0;                    // 0x34
                    virtual void    SetPan2(f32 pan2) = 0;                                  // 0x38
                    virtual void    SetSurroundPan2(f32 surroundPan2) = 0;                  // 0x3C
                    virtual void    SetLpfFreq(f32 lpfFreq) = 0;                            // 0x40
                    virtual f32     GetVolume() const = 0;                                  // 0x44
                    virtual f32     GetPitch() const = 0;                                   // 0x48
                    virtual f32     GetPan() const = 0;                                     // 0x4C
                    virtual f32     GetSurroundPan() const = 0;                             // 0x50
                    virtual f32     GetPan2() const = 0;                                    // 0x54
                    virtual f32     GetSurroundPan2() const = 0;                            // 0x58
                    virtual f32     GetLpfFreq() const = 0;                                 // 0x5C
                    virtual void    SetOutputLine(int lineFlag) = 0;                        // 0x60
                    virtual void    SetMainOutVolume(f32 volume) = 0;                       // 0x64
                    virtual void    SetMainSend(f32 send) = 0;                              // 0x68
                    virtual void    SetFxSend(AuxBus bus, f32 send) = 0;                    // 0x6C
                    virtual void    SetRemoteOutVolume(int remoteIndex, f32 volume) = 0;    // 0x70
                    virtual void    SetRemoteSend(int remoteIndex, f32 send) = 0;           // 0x74
                    virtual void    SetRemoteFxSend(int remoteIndex, f32 send) = 0;         // 0x78
                    virtual int     GetOutputLine() const = 0;                              // 0x7C
                    virtual f32     GetMainOutVolume() const = 0;                           // 0x80
                    virtual f32     GetMainSend() const = 0;                                // 0x84
                    virtual f32     GetFxSend(AuxBus bus) const = 0;                        // 0x88
                    virtual f32     GetRemoteOutVolume(int remoteIndex) const = 0;          // 0x8C
                    virtual f32     GetRemoteSend(int remoteIndex) const = 0;               // 0x90
                    virtual f32     GetRemoteFxSend(int remoteIndex) const = 0;             // 0x94

                    u32             GetId() const   { return mId; }
                    void            SetId(u32 id)   { mId = id; }

                private:
                    u32 mId;    // 0x04
            };
        }
    }
}

#endif // NW4R_SND_BASIC_PLAYER_H
