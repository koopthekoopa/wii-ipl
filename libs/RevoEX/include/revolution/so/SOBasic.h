#ifndef REVOLUTION_SO_BASIC_H
#define REVOLUTION_SO_BASIC_H

#include <revolution/types.h>

#define SO_SOL_SOCKET                   0xFFFF
#define SO_SOL_IP                       0
#define SO_SOL_ICMP                     1
#define SO_SOL_TCP                      6
#define SO_SOL_UDP                      17

#define SO_SOL_CONFIG                   0xFFFE

#define SO_IPPROTO_ICMP                 1
#define SO_IPPROTO_IGMP                 2
#define SO_IPPROTO_TCP                  6
#define SO_IPPROTO_UDP                  17

#define SO_CONFIG_FILTER_INPUT          0x1001
#define SO_CONFIG_FILTER_OUTPUT         0x1002

#define SO_CONFIG_ERROR                 0x1003
#define SO_CONFIG_MAC_ADDRESS           0x1004
#define SO_CONFIG_LINK_STATE            0x1005
#define SO_CONFIG_INTERFACE_STATISTICS  0x1006
#define SO_CONFIG_MUTE                  0x1007

#define SO_POLLRDNORM                   0x0001
#define SO_POLLRDBAND                   0x0002
#define SO_POLLPRI                      0x0004
#define SO_POLLWRNORM                   0x0008
#define SO_POLLWRBAND                   0x0010
#define SO_POLLERR                      0x0020
#define SO_POLLHUP                      0x0040
#define SO_POLLNVAL                     0x0080
#define SO_POLLIN                       (SO_POLLRDNORM | SO_POLLRDBAND)
#define SO_POLLOUT                      (SO_POLLWRNORM)

#define SO_SO_RCVBUF                    0x00001002
#define SO_SO_SNDBUF                    0x00001001

#define SO_CONFIG_IP_ADDR_NUMBER        0x4002
#define SO_CONFIG_IP_ADDR_TABLE         0x4003

#define SO_INFTIM                       -1

#define SO_PF_INET                      2

#define SO_SOCK_STREAM                  1
#define SO_SOCK_DGRAM                   2

#define SO_F_GETFL                      3
#define SO_F_SETFL                      4

#define SO_O_NONBLOCK                   4

#define ETH_ALEN                        4

typedef struct SOPollFD {
    int fd;             // 0x00
    int events;         // 0x04
    int revents;        // 0x08
} SOPollFD;

typedef struct SOHostEnt {
    char*   name;       // 0x00
    char**  aliases;    // 0x04
    s16     addrType;   // 0x08
    s16     length;     // 0x0A
    u8**    addrList;   // 0x0C
} SOHostEnt;

typedef struct SOInAddr {
    u32 addr;           // 0x00
} SOInAddr;

typedef struct SOSockAddrIn {
    u8          len;   // 0x00
    u8          family;// 0x01
    u16         port;  // 0x02
    SOInAddr    addr;  // 0x04
} SOSockAddrIn;

typedef struct SOSockAddr {
    u8  len;        // 0x00
    u8  family;     // 0x01
    u8  data[6];    // 0x02
} SOSockAddr;

typedef struct SOAddrInfo SOAddrInfo;
struct SOAddrInfo {
    int           flags;        // 0x00
    int           family;       // 0x04
    int           sockType;     // 0x08
    int           protocol;     // 0x0C
    u32           addrLen;      // 0x10
    char*         canonName;    // 0x14
    void*         addr;         // 0x18
    SOAddrInfo*   next;         // 0x20
};

int         SOSocket(int pf, int type, int protocol);
int         SOClose(int s);

int         SOConnect(int s, void* sockAddr);

int         SORecv(int s, void* buf, int len, int flags);
int         SOSend(int s, void* buf, int len, int flags);
int         SOFcntl(int s, int cmd, ...);

int         SOShutdown(int s, int how);

int         SOInetAtoN(const char* cp, SOInAddr* inp);
char*       SOInetNtoA(SOInAddr in);
int         SOInetPtoN(int af, const char* src, void* dst);

u32         SONtoHl(u32 netlong);
u16         SONtoHs(u16 netshort);
u32         SOHtoNl(u32 hostlong);
u16         SOHtoNs(u16 hostshort);

s32         SOGetHostID();
SOHostEnt*  SOGetHostByName(const char* name);
int         SOGetAddrInfo(const char* nodeName, const char* servName, const SOAddrInfo* hints, SOAddrInfo** res);
void        SOFreeAddrInfo(SOAddrInfo* head);

#endif  // REVOLUTION_SO_BASIC_H
