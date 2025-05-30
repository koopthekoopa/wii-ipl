#ifndef PRIVATE_IPC_TYPES_H
#define PRIVATE_IPC_TYPES_H

enum {
    IPC_HEAP_CHUNK_FREE     = 0xBABE0000,
    IPC_HEAP_CHUNK_USED     = 0xBABE0001,
    IPC_HEAP_CHUNK_FORALIGN = 0xBABE0002
};

enum {
    IPC_RESULT_OK                   =  0,
    IPC_RESULT_ACCESS               = -1,
    IPC_RESULT_EXISTS               = -2,
    IPC_RESULT_INTR                 = -3,
    IPC_RESULT_INVALID              = -4,
    IPC_RESULT_MAX                  = -5,
    IPC_RESULT_NOEXISTS             = -6,
    IPC_RESULT_EMPTYQUEUE           = -7,
    IPL_RESULT_FULLQUEUE            = -8,
    IPC_RESULT_UNKNOWN              = -9,
    IPC_RESULT_NOTREADY             = -10,
    IPC_RESULT_ECC                  = -11,
    IPC_RESULT_ECC_CRIT             = -12,
    IPC_RESULT_BADBLOCK             = -13,

    IPC_RESULT_INVALID_OBJTYPE      = -14,
    IPC_RESULT_INVALID_RNG          = -15,
    IPC_RESULT_INVALID_FLAG         = -16,
    IPC_RESULT_INVALID_FORMAT       = -17,
    IPC_RESULT_INVALID_VERSION      = -18,
    IPC_RESULT_INVALID_SIGNATURE    = -19,
    IPC_RESULT_VERIFY_FAILED        = -20,
    IPC_RESULT_INTERNAL_FAILURE     = -21,
    IPC_RESULT_ALLOC_FAILED         = -22,
    IPC_RESULT_INVALID_SIZE         = -23
};

enum {
    IPC_REQ_NONE = 0,
    IPC_REQ_OPEN,
    IPC_REQ_CLOSE,
    IPC_REQ_READ,
    IPC_REQ_WRITE,
    IPC_REQ_SEEK,
    IPC_REQ_IOCTL,
    IPC_REQ_IOCTLV
};

enum {
    IPC_ACCESS_NONE = 0,
    IPC_ACCESS_READ = (1 << 0),
    IPC_ACCESS_WRITE = (1 << 1),
    IPC_ACCESS_RW = IPC_ACCESS_READ | IPC_ACCESS_WRITE
};

enum {
    IPC_SEEK_BEG = 0,
    IPC_SEEK_CUR,
    IPC_SEEK_END
};

#endif // PRIVATE_IPC_TYPES_H
