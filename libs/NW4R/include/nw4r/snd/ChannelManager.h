#ifndef NW4R_SND_CHANNEL_MANAGER_H
#define NW4R_SND_CHANNEL_MANAGER_H

#include <nw4r/snd/types.h>
#include <nw4r/snd/Channel.h>

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
        }
    }
}

#endif // NW4R_SND_CHANNEL_MANAGER_H
