#ifndef METROWORKS_TRK_H
#define METROWORKS_TRK_H

typedef unsigned char DSBool;
#ifndef FALSE
#define FALSE   0
#endif // FALSE
#ifndef TRUE
#define TRUE    1
#endif // TRUE

typedef enum {
    DS_NoError                  = 0x00,
    DS_StepError                = 0x01,
    DS_ParameterError           = 0x02,

    DS_EventQueueFull           = 0x100,

    DS_NoMessageBufferAvailable = 0x300,
    DS_MessageBufferOverflow    = 0x301,
    DS_MessageBufferReadError   = 0x302,

    DS_DispatchError            = 0x500,

    DS_InvalidMemory            = 0x700,
    DS_InvalidRegister          = 0x701,
    DS_CWDSException            = 0x702,
    DS_UnsupportedError         = 0x703,
    DS_InvalidProcessID         = 0x704,
    DS_InvalidThreadID          = 0x705,
    DS_OSError                  = 0x706,

    DS_Error800                 = 0x800,
} DSError;

typedef enum {
    DS_Stdin  = 0,
    DS_Stdout = 1,
    DS_Stderr = 2,
} DSFileHandle;

// IO returns.
typedef enum {
    DS_IONoError = 0,
    DS_IOError   = 1,
    DS_IOEOF     = 2,
} DSIOResult;

typedef enum {
    DSMSG_Ping              = 0x00,
    DSMSG_Connect           = 0x01,
    DSMSG_Disconnect        = 0x02,
    DSMSG_Reset             = 0x03,
    DSMSG_Versions          = 0x04,
    DSMSG_SupportMask       = 0x05,
    DSMSG_Override          = 0x07,

    DSMSG_ReadMemory        = 0x10,
    DSMSG_WriteMemory       = 0x11,
    DSMSG_ReadRegisters     = 0x12,
    DSMSG_WriteRegisters    = 0x13,
    DSMSG_SetOption         = 0x17,
    DSMSG_Continue          = 0x18,
    DSMSG_Step              = 0x19,
    DSMSG_Stop              = 0x1A,

    DSMSG_ReplyACK          = 0x80,

    DSMSG_NotifyStopped     = 0x90,
    DSMSG_NotifyException   = 0x91,

    DSMSG_WriteFile         = 0xD0,
    DSMSG_ReadFile          = 0xD1,
    DSMSG_OpenFile          = 0xD2,
    DSMSG_CloseFile         = 0xD3,
    DSMSG_PositionFile      = 0xD4,

    DSMSG_ReplyNAK          = 0xFF,
} MessageCommandID;

DSIOResult  TRKAccessFile(MessageCommandID cmd, unsigned int handle, int* count, unsigned char* buffer);
DSIOResult  TRKOpenFile();
DSIOResult  TRKCloseFile();
DSIOResult  TRKPositionFile();

DSError     GetTRKConnected();

DSBool      GetUseSerialIO();

#endif // METROWORKS_TRK_H
