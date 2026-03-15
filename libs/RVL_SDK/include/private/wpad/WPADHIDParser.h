#ifndef PRIVATE_WPAD_HID_PARSER_H
#define PRIVATE_WPAD_HID_PARSER_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RPT_REPORT_ID 0
#define RPT_MAX_SIZE 21

// Limits
#define RPTID_OUT_LO RPTID_SET_RUMBLE
#define RPTID_OUT_HI RPTID_SET_DPD_CSB

#define RPTID_IN_LO RPTID_STATUS
#define RPTID_IN_HI RPTID_DATA_BTN_ACC_DPD18_2

// All outgoing reports
#define RPT_OUT_FLAGS 1

#define RPT_OUT_FLAG_ENABLE_FEATURE 2
#define RPT_OUT_FLAG_REQUEST_ACK_RPT 1
#define RPT_OUT_FLAG_RUMBLE 0

// All incoming reports with Button data (all except 0x3d)
#define RPT_BTN0 1
#define RPT_BTN1 2

// All incoming reports with Accelerometer (Standard) data (0x31, 0x33, 0x35,
// 0x37)
#define RPT_ACC_OFFSET 1
#define RPT_ACC_SIZE 3

/**
 *
 * Outgoing reports (from POV of the host)
 *
 */
// Report 0x10: Set rumble status
#define RPTID_SET_RUMBLE 0x10
#define RPT10_SIZE 1

#define RPT10_RUMBLE 0

// Report 0x11: Set LED lights
#define RPTID_SET_PORT 0x11  // internally called SetPort
#define RPT11_SIZE 1

#define RPT11_LED 0

// Report 0x12: Set data reporting mode
#define RPTID_SET_DATA_REPORT_MODE 0x12
#define RPT12_SIZE 2

#define RPT12_CONT_REPORT 0
#define RPT12_DATA_REPORT_MODE 1

// Report 0x13: Enable IR camera
#define RPTID_ENABLE_DPD 0x13  // internally called the DPD
#define RPT13_SIZE 1

#define RPT13_DPD_ENABLE 0

// Report 0x14: Enable IR camera
#define RPTID_ENABLE_SPEAKER 0x14
#define RPT14_SIZE 1

#define RPT14_SPEAKER_ENABLE 0

// Report 0x15: Request status report
#define RPTID_REQUEST_STATUS 0x15
#define RPT15_SIZE 1

// Report 0x16: Write data
#define RPTID_WRITE_DATA 0x16
#define RPT16_SIZE RPT_MAX_SIZE

#define RPT16_DATA_DST_ADDRESS 0
#define RPT16_DATA_LENGTH 4
#define RPT16_DATA 5

// Report 0x17: Read data
#define RPTID_READ_DATA 0x17
#define RPT17_SIZE 6

#define RPT17_DATA_SRC_ADDRESS 0
#define RPT17_DATA_LENGTH 4

// Report 0x18: Send speaker data
#define RPTID_SEND_SPEAKER_DATA 0x18
#define RPT18_SIZE RPT_MAX_SIZE

#define RPT18_DATA_LENGTH 0
#define RPT18_DATA 1

// Report 0x19: Mute speaker
#define RPTID_MUTE_SPEAKER 0x19
#define RPT19_SIZE 1

#define RPT19_SPEAKER_MUTE 0

// Report 0x1A: WPADiSendDPDCSB (?)
#define RPTID_SEND_DPD_CSB 0x1A
#define RPT1A_SIZE 1

#define RPT1A_DPD_CSB 0

/**
 *
 * Incoming reports (from POV of the host)
 *
 */
// Report 0x20: Status report
#define RPTID_STATUS 0x20
#define RPT20_FLAGS 3
#define RPT20_PROTO_FW 5
#define RPT20_BATTERY 6

// Report 0x21: Read Wiimote data
#define RPTID_DATA_READ 0x21
#define RPT21_SIZE_ERR 3
#define RPT21_ADDR0 4
#define RPT21_ADDR1 5
#define RPT21_DATA 6

// Report 0x22: Acknowledgement and request result
#define RPTID_ACK 0x22
#define RPT22_ACKED_RPT_ID 3
#define RPT22_ERR_CODE 4

// Reports 0x23-0x2F: Unused

// Report 0x30: Buttons
#define RPTID_DATA_BTN 0x30

// Report 0x31: Buttons, Accelerometer (Standard)
#define RPTID_DATA_BTN_ACC 0x31

// Report 0x32: Buttons, Extension (8 bytes)
#define RPTID_DATA_BTN_EXT8 0x32
#define RPT32_EXT_OFFSET 3
#define RPT32_EXT_LENGTH 8

/**
 * Report 0x33: Buttons, Accelerometer (Standard), IR Camera (Standard, 12
 * bytes)
 */
#define RPTID_DATA_BTN_ACC_DPD12 0x33
#define RPT33_DPD_OFFSET 6
#define RPT33_DPD_LENGTH 12

// Report 0x34: Buttons, Extension (19 bytes)
#define RPTID_DATA_BTN_EXT19 0x34
#define RPT34_EXT_OFFSET 3
#define RPT34_EXT_LENGTH 19

// Report 0x35: Buttons, Accelerometer (Standard), Extension (16 bytes)
#define RPTID_DATA_BTN_ACC_EXT16 0x35
#define RPT35_EXT_OFFSET 6
#define RPT35_EXT_LENGTH 16

// Report 0x36: Buttons, IR Camera (Basic, 10 bytes), Extension (9 bytes)
#define RPTID_DATA_BTN_DPD10_EXT9 0x36
#define RPT36_DPD_OFFSET 3
#define RPT36_DPD_LENGTH 10
#define RPT36_EXT_OFFSET 13
#define RPT36_EXT_LENGTH 9

/**
 * Report 0x37: Buttons, Accelerometer (Standard), IR Camera (Basic, 10 bytes),
 * Extension (6 bytes)
 */
#define RPTID_DATA_BTN_ACC_DPD10_EXT9 0x37
#define RPT37_DPD_OFFSET 6
#define RPT37_DPD_LENGTH 10
#define RPT37_EXT_OFFSET 16
#define RPT37_EXT_LENGTH 6

// Report 0x38-0x3C: Unused

// Report 0x3D: Extension (21 bytes)
#define RPTID_DATA_EXT21 0x3D
#define RPT3D_EXT_OFFSET 1
#define RPT3D_EXT_LENGTH 21

/**
 * Report 0x3E: Buttons, Accelerometer (Interleaved 1), IR Camera (Full 1, 18
 * bytes)
 */
#define RPTID_DATA_BTN_ACC_DPD18_1 0x3E
#define RPT3E_DPD0 0
#define RPT3E_DPD0_OFFSET 4
#define RPT3E_DPD1 1
#define RPT3E_DPD1_OFFSET 13

/**
 * Report 0x3F: Buttons, Accelerometer (Interleaved 2), IR Camera (Full 2, 18
 * bytes)
 */
#define RPTID_DATA_BTN_ACC_DPD18_2 0x3F
#define RPT3F_DPD2 2
#define RPT3F_DPD2_OFFSET 4
#define RPT3F_DPD3 3
#define RPT3F_DPD3_OFFSET 13

s32 WPADiHIDParser(u8 port, u8* p_rpt);

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_WPAD_HID_PARSER_H
