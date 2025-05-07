Revolution SDK
==============
A decompilation of the Revolution SDK (RVL_SDK) from the Wii Menu.  

The build dates refer to when the program was built as they were recompiled.

List of libraries that are linked (in alphabetical order):

|     Name     |                          Description                        |      Matched?      |
|--------------|-------------------------------------------------------------|--------------------|
| **AI**       | Audio Inerface Library                                      | :x: |
| **ARC**      | Archive Library; for reading "U8 files"                     | :heavy_check_mark: |
| **AX**       | Audio Mixing Library                                        | :x: |
| **AXFX**     | Auxillary Effects Library for AX                            | :x: |
| **BASE**     | PowerPC Architecture Library                                | :heavy_check_mark: |
| **BTE**      | Bluetooth Driver Library; written by BroadCom               | :x: |
| **CARD**     | GameCube Memory Card Library                                | :x: |
| **CNT**      | Content API Library for Channel Titles                      | :x: |
| **CNTCACHE** | Unknown; Provides a file with commands to do                | :x: |
| **CX**       | Compression Library; for LZ, Huffman and RunLength          | :x: |
| **DB**       | Debug Interface Library                                     | :x: |
| **DSP**      | Digital Signal Processor Driver Library                     | :x: |
| **DVD**      | DVD Drive Library                                           | :x: |
| **ENC**      | Character Encoding Library                                  | :x: |
| **ES**       | Private eTicket Services Library                            | :x: |
| **ESP**      | Public eTicket Services Library; for use from the SDK       | :x: |
| **EUART**    | Externel Interface Bus UART Library; written by Hudson Soft | :heavy_check_mark: |
| **EXI**      | Externel Interface Bus Library                              | :heavy_check_mark: |
| **FA**       | File Allocation Library; for SD Card and possibly USB       | :x: |
| **FS**       | ISFS Library; File System for IOS                           | :heavy_check_mark: |
| **GX**       | Graphics Library                                            | :heavy_check_mark: |
| **IPC**      | Hollywood IPC Library; for communicating with IOS           | :heavy_check_mark: |
| **KBD**      | Keyboard Driver Library                                     | :x: |
| **KPAD**     | High Level Wii Remote Library                               | :x: |
| **KPR**      | Key Procesor Library                                        | :x: |
| **MEM**      | Memory Management Library                                   | :x: |
| **MTX**      | Matrix and Vector Library                                   | :heavy_check_mark: |
| **NAND**     | NAND Library; Small wrapper of FS                           | :heavy_check_mark: |
| **NUP**      | Wii NUS Library; *N**intendo **UP**dater?                   | :x: |
| **OS**       | Main Operating System library                               | :heavy_check_mark: |
| **PAD**      | GameCube Controller Library                                 | :x: |
| **RSO**      | Relocated Static Object Library                             | :x: |
| **SC**       | System Configuration Library                                | :x: |
| **SCUTIL**   | Small Utilities Library for System Configuration            | :heavy_check_mark: |
| **SDI**      | SD Card Driver API                                          | :x: |
| **SI**       | Serial Interface Library; for PAD                           | :x: |
| **TPL**      | Texture Palette File Library                                | :heavy_check_mark: |
| **USB**      | IUSB Input/Output API; written by Hudson Soft               | :x: |
| **USBCMN**   | Small utilities for USB?                                    | :x: |
| **USBKBD**   | USB Keyboard Driver Library                                 | :x: |
| **VI**       | Video Interface Library                                     | :x: |
| **WAD**      | WAD Package Library                                         | :x: |
| **WENC**     | Wii Remote Speaker Encoding Library                         | :x: |
| **WPAD**     | Low Level Wii Remote Library                                | :x: |
| **WUD**      | Wireless Driver Library                                     | :x: |

Thanks to
---------
[kiwi515/ogws](https://github.com/kiwi515/ogws)  
[doldecomp/dolsdk2004](https://github.com/doldecomp/dolsdk2004)  
[SMGCommunity/Petari](https://github.com/SMGCommunity/Petari)  
[wiibrew.org](https://wiibrew.org)  
[Yet Another GameCube Documentation](https://www.gc-forever.com/yagcd)  
