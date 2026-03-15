#ifndef NW4R_SND_CHANNEL_MANAGER_H
#define NW4R_SND_CHANNEL_MANAGER_H

#include <nw4r/snd/Channel.h>
#include <nw4r/snd/types.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class ChannelManager : public InstanceManager<Channel, 0> {
            public:
                static ChannelManager& GetInstance() {
                    static ChannelManager instance;
                    return instance;
                }
                ChannelManager() {}
            };
        }  // namespace detail
    }  // namespace snd
}  // namespace nw4r

#endif  // NW4R_SND_CHANNEL_MANAGER_H
