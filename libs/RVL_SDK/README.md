Revolution SDK
==============
A decompilation of the Revolution SDK (RVL_SDK) from the Wii Menu.  

The build dates refer to when the program was built as they were recompiled.
If I were to guess, the actual version is likely from around early 2008.

List of libraries that are linked (in alphabetical order):

✔️ = Matching  
⚠️ = Equivalent  
❌ = Not matching  

|     Name     |                          Description                                |    |
|--------------|---------------------------------------------------------------------|----|
| **AI**       | Audio Interface Library                                             | ✔️ |
| **ARC**      | Archive Library; for reading "U8 files"                             | ✔️ |
| **AX**       | Audio Mixing Library                                                | ✔️ |
| **AXFX**     | Auxillary Effects Library for AX                                    | ❌ |
| **BASE**     | PowerPC Architecture Library                                        | ✔️ |
| **BTE**      | Bluetooth Driver Library; written by BroadCom                       | ✔️ |
| **CARD**     | GameCube Memory Card Library                                        | ⚠️ |
| **CNT**      | Content API Library for Channel Titles                              | ✔️ |
| **CNTCACHE** | Library that automatically delete temporary titles?                 | ❌ |
| **CX**       | Compression Library; for Lempel-Ziv (LZ77), Huffman, RunLength etc. | ✔️ |
| **DB**       | Debugging Interface Library                                         | ✔️ |
| **DSP**      | Digital Signal Processor Driver Library                             | ✔️ |
| **DVD**      | DVD Drive Library                                                   | ✔️ |
| **ENC**      | Character Encoding Library                                          | ✔️ |
| **ES**       | Private eTicket Services Library                                    | ✔️ |
| **ESP**      | Public eTicket Services Library; for use by RVL_SDK                 | ✔️ |
| **EUART**    | Externel Interface Bus UART Library; written by Hudson Soft         | ✔️ |
| **EXI**      | Externel Interface Bus Library                                      | ✔️ |
| **FA**       | File Allocation Library; for SD Card, USB drive (unusable) and NAND | ❌ |
| **FS**       | ISFS Library; File System for IOS                                   | ✔️ |
| **GX**       | Graphics Library                                                    | ✔️ |
| **IPC**      | Hollywood IPC Library; for communicating with IOS                   | ✔️ |
| **KBD**      | Keyboard Driver Library                                             | ❌ |
| **KPAD**     | High Level Wii Remote Library                                       | ❌ |
| **KPR**      | Key Processor Library                                               | ❌ |
| **MEM**      | Memory Management Library                                           | ✔️ |
| **MTX**      | Matrix and Vector Library                                           | ✔️ |
| **NAND**     | NAND Library; Public wrapper for **FS** library                     | ✔️ |
| **NUP**      | Nintendo Wii NUS Library; **N**intendo **UP**dater?                 | ❌ |
| **OS**       | Main Operating System library                                       | ✔️ |
| **PAD**      | GameCube Controller Library                                         | ✔️ |
| **RSO**      | Relocated Static Object Library                                     | ✔️ |
| **SC**       | System Configuration Library                                        | ✔️ |
| **SCUTIL**   | Small Utilities Library for System Configuration                    | ✔️ |
| **SDI**      | SD Card Driver API                                                  | ❌ |
| **SI**       | Serial Interface Library; for **PAD** and **VI** library            | ✔️ |
| **TPL**      | Texture Palette File Library                                        | ✔️ |
| **USB**      | IUSB Input/Output API; written by Hudson Soft                       | ✔️ |
| **USBCMN**   | Small utilities for **FA** library                                  | ✔️ |
| **USBKBD**   | USB Keyboard Driver Library                                         | ✔️ |
| **VI**       | Video Interface Library                                             | ❌ |
| **WAD**      | WAD Package Library                                                 | ❌ |
| **WENC**     | Wii Remote Speaker Encoding Library                                 | ✔️ |
| **WPAD**     | Low Level Wii Remote Library                                        | ❌ |
| **WUD**      | Wireless Driver Library                                             | ✔️ |

Thanks to
---------
**Decompilation projects:**  
[doldecomp/ogws](https://github.com/doldecomp/ogws)  
[doldecomp/sdk_2009-12-11](https://github.com/doldecomp/sdk_2009-12-11)  
[doldecomp/dolsdk2004](https://github.com/doldecomp/dolsdk2004)  
[SMGCommunity/Petari](https://github.com/SMGCommunity/Petari)  
[riidef/mkw](https://github.com/riidefi/mkw)  
[vabold/bba-wd](https://github.com/vabold/bba-wd)  


**Websites:**  
[WiiBrew](https://wiibrew.org)  
[Yet Another GameCube Documentation](https://www.gc-forever.com/yagcd)  
