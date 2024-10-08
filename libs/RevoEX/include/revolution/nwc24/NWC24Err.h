#ifndef NWC24_ERROR_H
#define NWC24_ERROR_H

typedef enum NWC24Err {
    NWC24_ERR_OTHER_REGION = -52,
    NWC24_ERR_GIVE_UP,
    NWC24_ERR_SCRIPT_VERSION,
    NWC24_ERR_OLD_SYSTEM,
    NWC24_ERR_CANCELLED,
    NWC24_ERR_INVALID_CHAR,
    NWC24_ERR_FILE_BROKEN,
    NWC24_ERR_VERIFY_SIGNATURE,
    NWC24_ERR_ID_NOT_REGISTERED,
    NWC24_ERR_INTERNAL_VF,
    NWC24_ERR_INTERNAL_IPC,
    NWC24_ERR_FILE_EXISTS,
    NWC24_ERR_INVALID_OPERATION,
    NWC24_ERR_DISABLED,
    NWC24_ERR_NAND_CORRUPT,
    NWC24_ERR_ID_CRC,
    NWC24_ERR_ID_REGISTERED,
    NWC24_ERR_ID_GENERATED,
    NWC24_ERR_ID_NOEXISTS,
    NWC24_ERR_CONFIG_NETWORK,
    NWC24_ERR_SERVER,
    NWC24_ERR_NETWORK,
    NWC24_ERR_NOT_READY,
    NWC24_ERR_INPROGRESS,
    NWC24_ERR_HIDDEN,
    NWC24_ERR_VER_MISMATCH,
    NWC24_ERR_BUSY,
    NWC24_ERR_STRING_END,
    NWC24_ERR_FORMAT,
    NWC24_ERR_ALIGNMENT,
    NWC24_ERR_MUTEX,
    NWC24_ERR_FILE_OTHER,
    NWC24_ERR_FILE_NOEXISTS,
    NWC24_ERR_FILE_WRITE,
    NWC24_ERR_FILE_READ,
    NWC24_ERR_FILE_CLOSE,
    NWC24_ERR_FILE_OPEN,
    NWC24_ERR_DONE,
    NWC24_ERR_BROKEN,
    NWC24_ERR_NOT_FOUND,
    NWC24_ERR_CONFIG,
    NWC24_ERR_NOMEM,
    NWC24_ERR_LIB_OPENED,
    NWC24_ERR_LIB_NOT_OPENED,
    NWC24_ERR_OVERFLOW,
    NWC24_ERR_PROTECTED,
    NWC24_ERR_FULL,
    NWC24_ERR_NULL,
    NWC24_ERR_NOT_SUPPORTED,
    NWC24_ERR_INVALID_VALUE,
    NWC24_ERR_FAILED,
    NWC24_ERR_FATAL,
    
    NWC24_OK = 0
} NWC24Err;

typedef enum NWC24DLError {
    DL24ERR_MESS_00,
    DL24ERR_MESS_01,
    DL24ERR_MESS_02,
    DL24ERR_MESS_03,
    DL24ERR_MESS_04,
    DL24ERR_MESS_05,
    DL24ERR_MESS_06,
    DL24ERR_MESS_07,
    DL24ERR_MESS_08,
    DL24ERR_MESS_09,
    DL24ERR_MESS_10,
    DL24ERR_MESS_11,
    DL24ERR_MESS_12,
    DL24WAR_MESS_01,
    NANDERR_MESS_01,
    NANDERR_MESS_02,
    NANDERR_MESS_03,

    DL24ERR_MESS_MAX
} NWC24DLError;

#endif  // NWC24_ERROR_H


