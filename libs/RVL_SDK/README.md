Revolution SDK
==============
A decompilation of the Revolution SDK (RVL_SDK) from the Wii Menu.  

The build dates refer to when the program was built as they were recompiled.
The actual version is likely from around 2008.

List of libraries that are linked (in alphabetical order):

✔️ = Matching  
⚠️ = Equivalent  
❌ = Not matching  

|     Name     |                          Description                        |    |
|--------------|-------------------------------------------------------------|----|
| **AI**       | Audio Interface Library                                     | ✔️ |
| **ARC**      | Archive Library; for reading "U8 files"                     | ✔️ |
| **AX**       | Audio Mixing Library                                        | ✔️ |
| **AXFX**     | Auxillary Effects Library for AX                            | ❌ |
| **BASE**     | PowerPC Architecture Library                                | ✔️ |
| **BTE**      | Bluetooth Driver Library; written by BroadCom               | ❌ |
| **CARD**     | GameCube Memory Card Library                                | ⚠️ |
| **CNT**      | Content API Library for Channel Titles                      | ✔️ |
| **CNTCACHE** | Library that automatically delete temporary titles?         | ❌ |
| **CX**       | Compression Library; for LZ, Huffman and RunLength          | ❌ |
| **DB**       | Debug Interface Library                                     | ✔️ |
| **DSP**      | Digital Signal Processor Driver Library                     | ✔️ |
| **DVD**      | DVD Drive Library                                           | ✔️ |
| **ENC**      | Character Encoding Library                                  | ❌ |
| **ES**       | Private eTicket Services Library                            | ✔️ |
| **ESP**      | Public eTicket Services Library; for use from the SDK       | ✔️ |
| **EUART**    | Externel Interface Bus UART Library; written by Hudson Soft | ✔️ |
| **EXI**      | Externel Interface Bus Library                              | ✔️ |
| **FA**       | File Allocation Library; SD Card, USB (unusable) and NAND   | ❌ |
| **FS**       | ISFS Library; File System for IOS                           | ✔️ |
| **GX**       | Graphics Library                                            | ✔️ |
| **IPC**      | Hollywood IPC Library; for communicating with IOS           | ✔️ |
| **KBD**      | Keyboard Driver Library                                     | ❌ |
| **KPAD**     | High Level Wii Remote Library                               | ❌ |
| **KPR**      | Key Procesor Library                                        | ❌ |
| **MEM**      | Memory Management Library                                   | ✔️ |
| **MTX**      | Matrix and Vector Library                                   | ✔️ |
| **NAND**     | NAND Library; Small wrapper of FS                           | ✔️ |
| **NUP**      | Wii NUS Library; **N**intendo **UP**dater?                  | ❌ |
| **OS**       | Main Operating System library                               | ✔️ |
| **PAD**      | GameCube Controller Library                                 | ✔️ |
| **RSO**      | Relocated Static Object Library                             | ❌ |
| **SC**       | System Configuration Library                                | ✔️ |
| **SCUTIL**   | Small Utilities Library for System Configuration            | ✔️ |
| **SDI**      | SD Card Driver API                                          | ❌ |
| **SI**       | Serial Interface Library; for PAD                           | ✔️ |
| **TPL**      | Texture Palette File Library                                | ✔️ |
| **USB**      | IUSB Input/Output API; written by Hudson Soft               | ✔️ |
| **USBCMN**   | Small utilities for USB?                                    | ❌ |
| **USBKBD**   | USB Keyboard Driver Library                                 | ❌ |
| **VI**       | Video Interface Library                                     | ❌ |
| **WAD**      | WAD Package Library                                         | ❌ |
| **WENC**     | Wii Remote Speaker Encoding Library                         | ✔️ |
| **WPAD**     | Low Level Wii Remote Library                                | ❌ |
| **WUD**      | Wireless Driver Library                                     | ❌ |

Thanks to
---------
[kiwi515/ogws](https://github.com/kiwi515/ogws)  
[riidef/mkw](https://github.com/riidefi/mkw)  
[vabold/bba-wd](https://github.com/vabold/bba-wd)  
[doldecomp/dolsdk2004](https://github.com/doldecomp/dolsdk2004)  
[SMGCommunity/Petari](https://github.com/SMGCommunity/Petari)  
[wiibrew.org](https://wiibrew.org)  
[Yet Another GameCube Documentation](https://www.gc-forever.com/yagcd)  
