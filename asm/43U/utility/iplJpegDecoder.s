.include "macros.inc"
.file "iplJpegDecoder.cpp"

# 0x81364E04..0x81365704 | size: 0x900
.text
.balign 4

# .text:0x0 | 0x81364E04 | size: 0x90
# ipl::utility::JpegDecoder::JpegDecoder(EGG::Heap*)
.fn __ct__Q33ipl7utility11JpegDecoderFPQ23EGG4Heap, global
/* 81364E04 00033204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364E08 00033208  7C 08 02 A6 */	mflr r0
/* 81364E0C 0003320C  38 A0 00 20 */	li r5, 0x20
/* 81364E10 00033210  90 01 00 14 */	stw r0, 0x14(r1)
/* 81364E14 00033214  38 00 00 00 */	li r0, 0x0
/* 81364E18 00033218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81364E1C 0003321C  7C 9F 23 78 */	mr r31, r4
/* 81364E20 00033220  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81364E24 00033224  7C 7E 1B 78 */	mr r30, r3
/* 81364E28 00033228  90 03 00 08 */	stw r0, 0x8(r3)
/* 81364E2C 0003322C  90 03 00 0C */	stw r0, 0xc(r3)
/* 81364E30 00033230  90 03 00 10 */	stw r0, 0x10(r3)
/* 81364E34 00033234  90 03 00 20 */	stw r0, 0x20(r3)
/* 81364E38 00033238  90 03 00 24 */	stw r0, 0x24(r3)
/* 81364E3C 0003323C  90 03 07 08 */	stw r0, 0x708(r3)
/* 81364E40 00033240  38 60 1C 00 */	li r3, 0x1c00
/* 81364E44 00033244  48 29 32 91 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81364E48 00033248  90 7E 00 00 */	stw r3, 0x0(r30)
/* 81364E4C 0003324C  3C 60 00 01 */	lis r3, 0x1
/* 81364E50 00033250  7F E4 FB 78 */	mr r4, r31
/* 81364E54 00033254  38 A0 00 20 */	li r5, 0x20
/* 81364E58 00033258  38 63 00 40 */	addi r3, r3, 0x40
/* 81364E5C 0003325C  48 29 32 79 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81364E60 00033260  90 7E 00 04 */	stw r3, 0x4(r30)
/* 81364E64 00033264  7F C3 F3 78 */	mr r3, r30
/* 81364E68 00033268  48 00 05 35 */	bl clear__Q33ipl7utility11JpegDecoderFv
/* 81364E6C 0003326C  38 7E 06 FC */	addi r3, r30, 0x6fc
/* 81364E70 00033270  38 80 00 00 */	li r4, 0x0
/* 81364E74 00033274  48 1C EC 3D */	bl fn_81533AB0
/* 81364E78 00033278  7F C3 F3 78 */	mr r3, r30
/* 81364E7C 0003327C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81364E80 00033280  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81364E84 00033284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364E88 00033288  7C 08 03 A6 */	mtlr r0
/* 81364E8C 0003328C  38 21 00 10 */	addi r1, r1, 0x10
/* 81364E90 00033290  4E 80 00 20 */	blr
.endfn __ct__Q33ipl7utility11JpegDecoderFPQ23EGG4Heap

# .text:0x90 | 0x81364E94 | size: 0x1E0
# ipl::utility::JpegDecoder::decodeJpg(EGG::Heap*, unsigned char*, unsigned long)
.fn decodeJpg__Q33ipl7utility11JpegDecoderFPQ23EGG4HeapPUcUl, global
/* 81364E94 00033294  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81364E98 00033298  7C 08 02 A6 */	mflr r0
/* 81364E9C 0003329C  90 01 00 54 */	stw r0, 0x54(r1)
/* 81364EA0 000332A0  39 61 00 50 */	addi r11, r1, 0x50
/* 81364EA4 000332A4  48 29 46 21 */	bl _savegpr_28
/* 81364EA8 000332A8  80 03 07 08 */	lwz r0, 0x708(r3)
/* 81364EAC 000332AC  7C 7E 1B 78 */	mr r30, r3
/* 81364EB0 000332B0  7C 9F 23 78 */	mr r31, r4
/* 81364EB4 000332B4  3B A0 00 00 */	li r29, 0x0
/* 81364EB8 000332B8  2C 00 00 00 */	cmpwi r0, 0x0
/* 81364EBC 000332BC  40 82 01 9C */	bne .L_81365058
/* 81364EC0 000332C0  38 E0 00 00 */	li r7, 0x0
/* 81364EC4 000332C4  90 A3 00 08 */	stw r5, 0x8(r3)
/* 81364EC8 000332C8  3C 80 00 01 */	lis r4, 0x1
/* 81364ECC 000332CC  3C A0 81 36 */	lis r5, readStreamCallback__Q33ipl7utility11JpegDecoderFPvPUcUi@ha
/* 81364ED0 000332D0  90 C3 00 0C */	stw r6, 0xc(r3)
/* 81364ED4 000332D4  38 04 00 40 */	addi r0, r4, 0x40
/* 81364ED8 000332D8  38 A5 54 24 */	addi r5, r5, readStreamCallback__Q33ipl7utility11JpegDecoderFPvPUcUi@l
/* 81364EDC 000332DC  38 81 00 08 */	addi r4, r1, 0x8
/* 81364EE0 000332E0  90 E3 00 10 */	stw r7, 0x10(r3)
/* 81364EE4 000332E4  98 E1 00 2C */	stb r7, 0x2c(r1)
/* 81364EE8 000332E8  98 E1 00 34 */	stb r7, 0x34(r1)
/* 81364EEC 000332EC  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 81364EF0 000332F0  90 E1 00 30 */	stw r7, 0x30(r1)
/* 81364EF4 000332F4  80 E3 00 04 */	lwz r7, 0x4(r3)
/* 81364EF8 000332F8  90 61 00 28 */	stw r3, 0x28(r1)
/* 81364EFC 000332FC  38 63 00 28 */	addi r3, r3, 0x28
/* 81364F00 00033300  90 E1 00 18 */	stw r7, 0x18(r1)
/* 81364F04 00033304  90 01 00 1C */	stw r0, 0x1c(r1)
/* 81364F08 00033308  90 C1 00 20 */	stw r6, 0x20(r1)
/* 81364F0C 0003330C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 81364F10 00033310  48 18 6F E9 */	bl fn_814EBEF8
/* 81364F14 00033314  2C 03 00 00 */	cmpwi r3, 0x0
/* 81364F18 00033318  90 7E 00 24 */	stw r3, 0x24(r30)
/* 81364F1C 0003331C  40 81 01 3C */	ble .L_81365058
/* 81364F20 00033320  A3 BE 00 4C */	lhz r29, 0x4c(r30)
/* 81364F24 00033324  7F C3 F3 78 */	mr r3, r30
/* 81364F28 00033328  A3 9E 00 4E */	lhz r28, 0x4e(r30)
/* 81364F2C 0003332C  7F A4 EB 78 */	mr r4, r29
/* 81364F30 00033330  7F 85 E3 78 */	mr r5, r28
/* 81364F34 00033334  48 00 06 5D */	bl get_resolution__Q33ipl7utility11JpegDecoderFii
/* 81364F38 00033338  2C 03 00 00 */	cmpwi r3, 0x0
/* 81364F3C 0003333C  7C 60 1B 78 */	mr r0, r3
/* 81364F40 00033340  40 80 00 14 */	bge .L_81364F54
/* 81364F44 00033344  7F C3 F3 78 */	mr r3, r30
/* 81364F48 00033348  48 00 04 55 */	bl clear__Q33ipl7utility11JpegDecoderFv
/* 81364F4C 0003334C  38 60 00 00 */	li r3, 0x0
/* 81364F50 00033350  48 00 01 0C */	b .L_8136505C
.L_81364F54:
/* 81364F54 00033354  40 81 00 28 */	ble .L_81364F7C
/* 81364F58 00033358  38 7E 00 28 */	addi r3, r30, 0x28
/* 81364F5C 0003335C  54 04 06 3E */	clrlwi r4, r0, 24
/* 81364F60 00033360  48 18 73 05 */	bl fn_814EC264
/* 81364F64 00033364  2C 03 00 00 */	cmpwi r3, 0x0
/* 81364F68 00033368  40 80 00 14 */	bge .L_81364F7C
/* 81364F6C 0003336C  7F C3 F3 78 */	mr r3, r30
/* 81364F70 00033370  48 00 04 2D */	bl clear__Q33ipl7utility11JpegDecoderFv
/* 81364F74 00033374  38 60 00 00 */	li r3, 0x0
/* 81364F78 00033378  48 00 00 E4 */	b .L_8136505C
.L_81364F7C:
/* 81364F7C 0003337C  A0 DE 00 4C */	lhz r6, 0x4c(r30)
/* 81364F80 00033380  7F E4 FB 78 */	mr r4, r31
/* 81364F84 00033384  A0 7E 00 4E */	lhz r3, 0x4e(r30)
/* 81364F88 00033388  38 A0 00 20 */	li r5, 0x20
/* 81364F8C 0003338C  38 C6 00 07 */	addi r6, r6, 0x7
/* 81364F90 00033390  38 03 00 07 */	addi r0, r3, 0x7
/* 81364F94 00033394  54 C3 04 38 */	rlwinm r3, r6, 0, 16, 28
/* 81364F98 00033398  54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 81364F9C 0003339C  7C 03 01 D6 */	mullw r0, r3, r0
/* 81364FA0 000333A0  54 03 08 3C */	slwi r3, r0, 1
/* 81364FA4 000333A4  90 7E 00 18 */	stw r3, 0x18(r30)
/* 81364FA8 000333A8  48 29 31 2D */	bl __nwa__FUlPQ23EGG4Heapi
/* 81364FAC 000333AC  90 7E 00 14 */	stw r3, 0x14(r30)
/* 81364FB0 000333B0  7C 65 1B 78 */	mr r5, r3
/* 81364FB4 000333B4  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 81364FB8 000333B8  38 7E 00 28 */	addi r3, r30, 0x28
/* 81364FBC 000333BC  48 18 71 49 */	bl fn_814EC104
/* 81364FC0 000333C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 81364FC4 000333C4  40 82 00 74 */	bne .L_81365038
/* 81364FC8 000333C8  7F C3 F3 78 */	mr r3, r30
/* 81364FCC 000333CC  48 00 04 B1 */	bl get_orientation__Q33ipl7utility11JpegDecoderFv
/* 81364FD0 000333D0  90 7E 07 0C */	stw r3, 0x70c(r30)
/* 81364FD4 000333D4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 81364FD8 000333D8  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 81364FDC 000333DC  48 1C 89 89 */	bl DCStoreRange
/* 81364FE0 000333E0  7F C3 F3 78 */	mr r3, r30
/* 81364FE4 000333E4  7F A4 EB 78 */	mr r4, r29
/* 81364FE8 000333E8  7F 85 E3 78 */	mr r5, r28
/* 81364FEC 000333EC  48 00 06 35 */	bl calc_capture_size__Q33ipl7utility11JpegDecoderFii
/* 81364FF0 000333F0  7F E4 FB 78 */	mr r4, r31
/* 81364FF4 000333F4  38 60 00 34 */	li r3, 0x34
/* 81364FF8 000333F8  38 A0 00 20 */	li r5, 0x20
/* 81364FFC 000333FC  48 29 30 B5 */	bl __nw__FUlPQ23EGG4Heapi
/* 81365000 00033400  2C 03 00 00 */	cmpwi r3, 0x0
/* 81365004 00033404  41 82 00 20 */	beq .L_81365024
/* 81365008 00033408  A0 FE 00 1C */	lhz r7, 0x1c(r30)
/* 8136500C 0003340C  7F E4 FB 78 */	mr r4, r31
/* 81365010 00033410  A1 1E 00 1E */	lhz r8, 0x1e(r30)
/* 81365014 00033414  38 A0 00 00 */	li r5, 0x0
/* 81365018 00033418  38 C0 00 00 */	li r6, 0x0
/* 8136501C 0003341C  39 20 00 04 */	li r9, 0x4
/* 81365020 00033420  4B FF E2 89 */	bl __ct__Q33ipl7utility7CaptureFPQ23EGG4Heapiiii9_GXTexFmt
.L_81365024:
/* 81365024 00033424  38 00 00 01 */	li r0, 0x1
/* 81365028 00033428  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8136502C 0003342C  3B A0 00 01 */	li r29, 0x1
/* 81365030 00033430  90 1E 07 08 */	stw r0, 0x708(r30)
/* 81365034 00033434  48 00 00 24 */	b .L_81365058
.L_81365038:
/* 81365038 00033438  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8136503C 0003343C  48 29 30 B1 */	bl __dla__FPv
/* 81365040 00033440  38 00 00 00 */	li r0, 0x0
/* 81365044 00033444  7F C3 F3 78 */	mr r3, r30
/* 81365048 00033448  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8136504C 0003344C  48 00 03 51 */	bl clear__Q33ipl7utility11JpegDecoderFv
/* 81365050 00033450  38 60 00 00 */	li r3, 0x0
/* 81365054 00033454  48 00 00 08 */	b .L_8136505C
.L_81365058:
/* 81365058 00033458  7F A3 EB 78 */	mr r3, r29
.L_8136505C:
/* 8136505C 0003345C  39 61 00 50 */	addi r11, r1, 0x50
/* 81365060 00033460  48 29 44 B1 */	bl _restgpr_28
/* 81365064 00033464  80 01 00 54 */	lwz r0, 0x54(r1)
/* 81365068 00033468  7C 08 03 A6 */	mtlr r0
/* 8136506C 0003346C  38 21 00 50 */	addi r1, r1, 0x50
/* 81365070 00033470  4E 80 00 20 */	blr
.endfn decodeJpg__Q33ipl7utility11JpegDecoderFPQ23EGG4HeapPUcUl

# .text:0x270 | 0x81365074 | size: 0x9C
# ipl::utility::JpegDecoder::encodeOdh(EGG::Heap*, unsigned char*, unsigned long)
.fn encodeOdh__Q33ipl7utility11JpegDecoderFPQ23EGG4HeapPUcUl, global
/* 81365074 00033474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81365078 00033478  7C 08 02 A6 */	mflr r0
/* 8136507C 0003347C  90 01 00 24 */	stw r0, 0x24(r1)
/* 81365080 00033480  39 61 00 20 */	addi r11, r1, 0x20
/* 81365084 00033484  48 29 44 41 */	bl _savegpr_28
/* 81365088 00033488  80 E3 00 20 */	lwz r7, 0x20(r3)
/* 8136508C 0003348C  7C 7C 1B 78 */	mr r28, r3
/* 81365090 00033490  7C BD 2B 78 */	mr r29, r5
/* 81365094 00033494  7C DE 33 78 */	mr r30, r6
/* 81365098 00033498  A0 67 00 04 */	lhz r3, 0x4(r7)
/* 8136509C 0003349C  38 A0 00 20 */	li r5, 0x20
/* 813650A0 000334A0  A0 07 00 06 */	lhz r0, 0x6(r7)
/* 813650A4 000334A4  7C 03 01 D6 */	mullw r0, r3, r0
/* 813650A8 000334A8  1C 60 00 03 */	mulli r3, r0, 0x3
/* 813650AC 000334AC  48 29 30 29 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813650B0 000334B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813650B4 000334B4  7C 7F 1B 78 */	mr r31, r3
/* 813650B8 000334B8  40 82 00 0C */	bne .L_813650C4
/* 813650BC 000334BC  38 60 00 00 */	li r3, 0x0
/* 813650C0 000334C0  48 00 00 38 */	b .L_813650F8
.L_813650C4:
/* 813650C4 000334C4  80 DC 00 20 */	lwz r6, 0x20(r28)
/* 813650C8 000334C8  7F A4 EB 78 */	mr r4, r29
/* 813650CC 000334CC  7F C7 F3 78 */	mr r7, r30
/* 813650D0 000334D0  7F E9 FB 78 */	mr r9, r31
/* 813650D4 000334D4  80 66 00 10 */	lwz r3, 0x10(r6)
/* 813650D8 000334D8  39 00 00 64 */	li r8, 0x64
/* 813650DC 000334DC  A0 A6 00 04 */	lhz r5, 0x4(r6)
/* 813650E0 000334E0  A0 C6 00 06 */	lhz r6, 0x6(r6)
/* 813650E4 000334E4  4B FF 64 59 */	bl ODHEncodeRGB565
/* 813650E8 000334E8  7C 7E 1B 78 */	mr r30, r3
/* 813650EC 000334EC  7F E3 FB 78 */	mr r3, r31
/* 813650F0 000334F0  48 29 2F FD */	bl __dla__FPv
/* 813650F4 000334F4  7F C3 F3 78 */	mr r3, r30
.L_813650F8:
/* 813650F8 000334F8  39 61 00 20 */	addi r11, r1, 0x20
/* 813650FC 000334FC  48 29 44 15 */	bl _restgpr_28
/* 81365100 00033500  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81365104 00033504  7C 08 03 A6 */	mtlr r0
/* 81365108 00033508  38 21 00 20 */	addi r1, r1, 0x20
/* 8136510C 0003350C  4E 80 00 20 */	blr
.endfn encodeOdh__Q33ipl7utility11JpegDecoderFPQ23EGG4HeapPUcUl

# .text:0x30C | 0x81365110 | size: 0x24C
# ipl::utility::JpegDecoder::makeRawData()
.fn makeRawData__Q33ipl7utility11JpegDecoderFv, global
/* 81365110 00033510  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 81365114 00033514  7C 08 02 A6 */	mflr r0
/* 81365118 00033518  3C 80 43 30 */	lis r4, 0x4330
/* 8136511C 0003351C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 81365120 00033520  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 81365124 00033524  7C 7F 1B 78 */	mr r31, r3
/* 81365128 00033528  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 8136512C 0003352C  80 03 07 08 */	lwz r0, 0x708(r3)
/* 81365130 00033530  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 81365134 00033534  2C 00 00 01 */	cmpwi r0, 0x1
/* 81365138 00033538  90 81 00 B8 */	stw r4, 0xb8(r1)
/* 8136513C 0003353C  40 82 02 08 */	bne .L_81365344
/* 81365140 00033540  38 61 00 54 */	addi r3, r1, 0x54
/* 81365144 00033544  48 1E 2E 15 */	bl GXGetViewportv
/* 81365148 00033548  A0 7F 00 1C */	lhz r3, 0x1c(r31)
/* 8136514C 0003354C  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 81365150 00033550  90 61 00 B4 */	stw r3, 0xb4(r1)
/* 81365154 00033554  C0 22 82 5C */	lfs f1, lbl_8169465C@sda21(r0)
/* 81365158 00033558  90 01 00 BC */	stw r0, 0xbc(r1)
/* 8136515C 0003355C  C8 82 82 70 */	lfd f4, lbl_81694670@sda21(r0)
/* 81365160 00033560  FC 40 08 90 */	fmr f2, f1
/* 81365164 00033564  C8 61 00 B0 */	lfd f3, 0xb0(r1)
/* 81365168 00033568  FC A0 08 90 */	fmr f5, f1
/* 8136516C 0003356C  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 81365170 00033570  EC 63 20 28 */	fsubs f3, f3, f4
/* 81365174 00033574  C0 C2 82 60 */	lfs f6, lbl_81694660@sda21(r0)
/* 81365178 00033578  EC 80 20 28 */	fsubs f4, f0, f4
/* 8136517C 0003357C  48 1E 2D B1 */	bl GXSetViewport
/* 81365180 00033580  C0 02 82 5C */	lfs f0, lbl_8169465C@sda21(r0)
/* 81365184 00033584  38 61 00 24 */	addi r3, r1, 0x24
/* 81365188 00033588  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8136518C 0003358C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 81365190 00033590  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 81365194 00033594  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 81365198 00033598  4B FD 07 B5 */	bl getProjectionRect4x3__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 8136519C 0003359C  A0 9F 00 1C */	lhz r4, 0x1c(r31)
/* 813651A0 000335A0  38 61 00 6C */	addi r3, r1, 0x6c
/* 813651A4 000335A4  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 813651A8 000335A8  90 81 00 B4 */	stw r4, 0xb4(r1)
/* 813651AC 000335AC  C0 22 82 5C */	lfs f1, lbl_8169465C@sda21(r0)
/* 813651B0 000335B0  90 01 00 BC */	stw r0, 0xbc(r1)
/* 813651B4 000335B4  C8 C2 82 70 */	lfd f6, lbl_81694670@sda21(r0)
/* 813651B8 000335B8  FC 60 08 90 */	fmr f3, f1
/* 813651BC 000335BC  C8 41 00 B0 */	lfd f2, 0xb0(r1)
/* 813651C0 000335C0  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 813651C4 000335C4  EC 82 30 28 */	fsubs f4, f2, f6
/* 813651C8 000335C8  C0 A2 82 64 */	lfs f5, lbl_81694664@sda21(r0)
/* 813651CC 000335CC  EC 40 30 28 */	fsubs f2, f0, f6
/* 813651D0 000335D0  C0 C2 82 68 */	lfs f6, lbl_81694668@sda21(r0)
/* 813651D4 000335D4  48 1D C4 29 */	bl fn_815415FC
/* 813651D8 000335D8  38 61 00 6C */	addi r3, r1, 0x6c
/* 813651DC 000335DC  38 80 00 01 */	li r4, 0x1
/* 813651E0 000335E0  48 1E 2A 51 */	bl GXSetProjection
/* 813651E4 000335E4  4B FF DB 05 */	bl calcOrthoCamera__Q33ipl7utility8GraphicsFv
/* 813651E8 000335E8  38 60 00 00 */	li r3, 0x0
/* 813651EC 000335EC  4B FF DB 0D */	bl setCamera__Q33ipl7utility8GraphicsFUl
/* 813651F0 000335F0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 813651F4 000335F4  38 61 00 34 */	addi r3, r1, 0x34
/* 813651F8 000335F8  A0 BF 00 4C */	lhz r5, 0x4c(r31)
/* 813651FC 000335FC  38 E0 00 04 */	li r7, 0x4
/* 81365200 00033600  A0 DF 00 4E */	lhz r6, 0x4e(r31)
/* 81365204 00033604  39 00 00 00 */	li r8, 0x0
/* 81365208 00033608  39 20 00 00 */	li r9, 0x0
/* 8136520C 0003360C  39 40 00 00 */	li r10, 0x0
/* 81365210 00033610  48 1E 0A 61 */	bl GXInitTexObj
/* 81365214 00033614  A0 7F 00 1E */	lhz r3, 0x1e(r31)
/* 81365218 00033618  38 E0 00 00 */	li r7, 0x0
/* 8136521C 0003361C  A0 1F 00 1C */	lhz r0, 0x1c(r31)
/* 81365220 00033620  90 61 00 B4 */	stw r3, 0xb4(r1)
/* 81365224 00033624  C0 02 82 5C */	lfs f0, lbl_8169465C@sda21(r0)
/* 81365228 00033628  90 01 00 BC */	stw r0, 0xbc(r1)
/* 8136522C 0003362C  C8 62 82 70 */	lfd f3, lbl_81694670@sda21(r0)
/* 81365230 00033630  C8 41 00 B0 */	lfd f2, 0xb0(r1)
/* 81365234 00033634  C8 21 00 B8 */	lfd f1, 0xb8(r1)
/* 81365238 00033638  EC 42 18 28 */	fsubs f2, f2, f3
/* 8136523C 0003363C  88 C2 82 58 */	lbz r6, lbl_81694658@sda21(r0)
/* 81365240 00033640  EC 21 18 28 */	fsubs f1, f1, f3
/* 81365244 00033644  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 81365248 00033648  88 A2 82 59 */	lbz r5, lbl_81694659@sda21(r0)
/* 8136524C 0003364C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 81365250 00033650  88 82 82 5A */	lbz r4, lbl_8169465A@sda21(r0)
/* 81365254 00033654  88 62 82 5B */	lbz r3, lbl_8169465B@sda21(r0)
/* 81365258 00033658  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8136525C 0003365C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 81365260 00033660  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 81365264 00033664  98 C1 00 10 */	stb r6, 0x10(r1)
/* 81365268 00033668  2C 00 00 02 */	cmpwi r0, 0x2
/* 8136526C 0003366C  98 A1 00 11 */	stb r5, 0x11(r1)
/* 81365270 00033670  98 81 00 12 */	stb r4, 0x12(r1)
/* 81365274 00033674  98 61 00 13 */	stb r3, 0x13(r1)
/* 81365278 00033678  41 82 00 1C */	beq .L_81365294
/* 8136527C 0003367C  40 80 00 1C */	bge .L_81365298
/* 81365280 00033680  2C 00 00 01 */	cmpwi r0, 0x1
/* 81365284 00033684  40 80 00 08 */	bge .L_8136528C
/* 81365288 00033688  48 00 00 10 */	b .L_81365298
.L_8136528C:
/* 8136528C 0003368C  38 E0 00 01 */	li r7, 0x1
/* 81365290 00033690  48 00 00 08 */	b .L_81365298
.L_81365294:
/* 81365294 00033694  38 E0 00 02 */	li r7, 0x2
.L_81365298:
/* 81365298 00033698  88 C1 00 10 */	lbz r6, 0x10(r1)
/* 8136529C 0003369C  38 61 00 14 */	addi r3, r1, 0x14
/* 813652A0 000336A0  89 21 00 11 */	lbz r9, 0x11(r1)
/* 813652A4 000336A4  38 81 00 34 */	addi r4, r1, 0x34
/* 813652A8 000336A8  89 01 00 12 */	lbz r8, 0x12(r1)
/* 813652AC 000336AC  38 A1 00 0C */	addi r5, r1, 0xc
/* 813652B0 000336B0  88 01 00 13 */	lbz r0, 0x13(r1)
/* 813652B4 000336B4  98 C1 00 0C */	stb r6, 0xc(r1)
/* 813652B8 000336B8  38 C0 00 01 */	li r6, 0x1
/* 813652BC 000336BC  99 21 00 0D */	stb r9, 0xd(r1)
/* 813652C0 000336C0  99 01 00 0E */	stb r8, 0xe(r1)
/* 813652C4 000336C4  98 01 00 0F */	stb r0, 0xf(r1)
/* 813652C8 000336C8  4B FF DC F5 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
/* 813652CC 000336CC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 813652D0 000336D0  38 80 00 01 */	li r4, 0x1
/* 813652D4 000336D4  4B FF E0 C9 */	bl capture__Q33ipl7utility7CaptureFi
/* 813652D8 000336D8  88 01 00 13 */	lbz r0, 0x13(r1)
/* 813652DC 000336DC  3B C0 00 00 */	li r30, 0x0
/* 813652E0 000336E0  9B C1 00 12 */	stb r30, 0x12(r1)
/* 813652E4 000336E4  38 61 00 14 */	addi r3, r1, 0x14
/* 813652E8 000336E8  38 81 00 08 */	addi r4, r1, 0x8
/* 813652EC 000336EC  9B C1 00 11 */	stb r30, 0x11(r1)
/* 813652F0 000336F0  9B C1 00 10 */	stb r30, 0x10(r1)
/* 813652F4 000336F4  9B C1 00 08 */	stb r30, 0x8(r1)
/* 813652F8 000336F8  9B C1 00 09 */	stb r30, 0x9(r1)
/* 813652FC 000336FC  9B C1 00 0A */	stb r30, 0xa(r1)
/* 81365300 00033700  98 01 00 0B */	stb r0, 0xb(r1)
/* 81365304 00033704  4B FF DA 39 */	bl drawPolygon__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4Rect8_GXColor
/* 81365308 00033708  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8136530C 0003370C  48 29 2D E1 */	bl __dla__FPv
/* 81365310 00033710  38 00 00 02 */	li r0, 0x2
/* 81365314 00033714  93 DF 00 14 */	stw r30, 0x14(r31)
/* 81365318 00033718  93 DF 00 18 */	stw r30, 0x18(r31)
/* 8136531C 0003371C  90 1F 07 08 */	stw r0, 0x708(r31)
/* 81365320 00033720  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 81365324 00033724  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 81365328 00033728  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 8136532C 0003372C  C0 81 00 60 */	lfs f4, 0x60(r1)
/* 81365330 00033730  C0 A1 00 64 */	lfs f5, 0x64(r1)
/* 81365334 00033734  C0 C1 00 68 */	lfs f6, 0x68(r1)
/* 81365338 00033738  48 1E 2B F5 */	bl GXSetViewport
/* 8136533C 0003373C  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 81365340 00033740  48 1C E8 39 */	bl fn_81533B78
.L_81365344:
/* 81365344 00033744  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 81365348 00033748  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 8136534C 0003374C  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 81365350 00033750  7C 08 03 A6 */	mtlr r0
/* 81365354 00033754  38 21 00 D0 */	addi r1, r1, 0xd0
/* 81365358 00033758  4E 80 00 20 */	blr
.endfn makeRawData__Q33ipl7utility11JpegDecoderFv

# .text:0x558 | 0x8136535C | size: 0x40
# ipl::utility::JpegDecoder::waitCaptured()
.fn waitCaptured__Q33ipl7utility11JpegDecoderFv, global
/* 8136535C 0003375C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81365360 00033760  7C 08 02 A6 */	mflr r0
/* 81365364 00033764  90 01 00 14 */	stw r0, 0x14(r1)
/* 81365368 00033768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136536C 0003376C  7C 7F 1B 78 */	mr r31, r3
/* 81365370 00033770  38 63 06 FC */	addi r3, r3, 0x6fc
/* 81365374 00033774  48 1C E7 95 */	bl fn_81533B08
/* 81365378 00033778  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 8136537C 0003377C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81365380 00033780  38 03 FF FE */	subi r0, r3, 0x2
/* 81365384 00033784  7C 00 00 34 */	cntlzw r0, r0
/* 81365388 00033788  54 03 D9 7E */	srwi r3, r0, 5
/* 8136538C 0003378C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81365390 00033790  7C 08 03 A6 */	mtlr r0
/* 81365394 00033794  38 21 00 10 */	addi r1, r1, 0x10
/* 81365398 00033798  4E 80 00 20 */	blr
.endfn waitCaptured__Q33ipl7utility11JpegDecoderFv

# .text:0x598 | 0x8136539C | size: 0x88
# ipl::utility::JpegDecoder::clear()
.fn clear__Q33ipl7utility11JpegDecoderFv, global
/* 8136539C 0003379C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813653A0 000337A0  7C 08 02 A6 */	mflr r0
/* 813653A4 000337A4  38 80 00 00 */	li r4, 0x0
/* 813653A8 000337A8  38 A0 06 D4 */	li r5, 0x6d4
/* 813653AC 000337AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 813653B0 000337B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813653B4 000337B4  3B E0 00 00 */	li r31, 0x0
/* 813653B8 000337B8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 813653BC 000337BC  7C 7E 1B 78 */	mr r30, r3
/* 813653C0 000337C0  93 E3 07 08 */	stw r31, 0x708(r3)
/* 813653C4 000337C4  93 E3 00 24 */	stw r31, 0x24(r3)
/* 813653C8 000337C8  93 E3 00 08 */	stw r31, 0x8(r3)
/* 813653CC 000337CC  93 E3 00 0C */	stw r31, 0xc(r3)
/* 813653D0 000337D0  93 E3 00 10 */	stw r31, 0x10(r3)
/* 813653D4 000337D4  93 E3 00 14 */	stw r31, 0x14(r3)
/* 813653D8 000337D8  93 E3 00 18 */	stw r31, 0x18(r3)
/* 813653DC 000337DC  B3 E3 00 1C */	sth r31, 0x1c(r3)
/* 813653E0 000337E0  B3 E3 00 1E */	sth r31, 0x1e(r3)
/* 813653E4 000337E4  38 63 00 28 */	addi r3, r3, 0x28
/* 813653E8 000337E8  4B FC AF 4D */	bl memset
/* 813653EC 000337EC  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 813653F0 000337F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813653F4 000337F4  41 82 00 10 */	beq .L_81365404
/* 813653F8 000337F8  38 80 00 01 */	li r4, 0x1
/* 813653FC 000337FC  4B FF DF 49 */	bl __dt__Q33ipl7utility7CaptureFv
/* 81365400 00033800  93 FE 00 20 */	stw r31, 0x20(r30)
.L_81365404:
/* 81365404 00033804  38 00 00 00 */	li r0, 0x0
/* 81365408 00033808  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 8136540C 0003380C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81365410 00033810  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81365414 00033814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81365418 00033818  7C 08 03 A6 */	mtlr r0
/* 8136541C 0003381C  38 21 00 10 */	addi r1, r1, 0x10
/* 81365420 00033820  4E 80 00 20 */	blr
.endfn clear__Q33ipl7utility11JpegDecoderFv

# .text:0x620 | 0x81365424 | size: 0x58
# ipl::utility::JpegDecoder::readStreamCallback(void*, unsigned char*, unsigned int)
.fn readStreamCallback__Q33ipl7utility11JpegDecoderFPvPUcUi, global
/* 81365424 00033824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81365428 00033828  7C 08 02 A6 */	mflr r0
/* 8136542C 0003382C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81365430 00033830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81365434 00033834  7C BF 2B 78 */	mr r31, r5
/* 81365438 00033838  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136543C 0003383C  7C 7E 1B 78 */	mr r30, r3
/* 81365440 00033840  7C 83 23 78 */	mr r3, r4
/* 81365444 00033844  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 81365448 00033848  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8136544C 0003384C  7C 84 02 14 */	add r4, r4, r0
/* 81365450 00033850  4B FC AD E1 */	bl memcpy
/* 81365454 00033854  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 81365458 00033858  38 60 00 00 */	li r3, 0x0
/* 8136545C 0003385C  7C 00 FA 14 */	add r0, r0, r31
/* 81365460 00033860  90 1E 00 10 */	stw r0, 0x10(r30)
/* 81365464 00033864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81365468 00033868  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136546C 0003386C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81365470 00033870  7C 08 03 A6 */	mtlr r0
/* 81365474 00033874  38 21 00 10 */	addi r1, r1, 0x10
/* 81365478 00033878  4E 80 00 20 */	blr
.endfn readStreamCallback__Q33ipl7utility11JpegDecoderFPvPUcUi

# .text:0x678 | 0x8136547C | size: 0x114
# ipl::utility::JpegDecoder::get_orientation()
.fn get_orientation__Q33ipl7utility11JpegDecoderFv, global
/* 8136547C 0003387C  94 21 F8 E0 */	stwu r1, -0x720(r1)
/* 81365480 00033880  7C 08 02 A6 */	mflr r0
/* 81365484 00033884  3C C0 81 36 */	lis r6, readStreamCallback__Q33ipl7utility11JpegDecoderFPvPUcUi@ha
/* 81365488 00033888  3C 80 00 01 */	lis r4, 0x1
/* 8136548C 0003388C  90 01 07 24 */	stw r0, 0x724(r1)
/* 81365490 00033890  38 04 00 40 */	addi r0, r4, 0x40
/* 81365494 00033894  38 C6 54 24 */	addi r6, r6, readStreamCallback__Q33ipl7utility11JpegDecoderFPvPUcUi@l
/* 81365498 00033898  38 81 00 08 */	addi r4, r1, 0x8
/* 8136549C 0003389C  93 E1 07 1C */	stw r31, 0x71c(r1)
/* 813654A0 000338A0  3B E0 00 00 */	li r31, 0x0
/* 813654A4 000338A4  38 A1 00 10 */	addi r5, r1, 0x10
/* 813654A8 000338A8  93 C1 07 18 */	stw r30, 0x718(r1)
/* 813654AC 000338AC  7C 7E 1B 78 */	mr r30, r3
/* 813654B0 000338B0  9B E1 00 34 */	stb r31, 0x34(r1)
/* 813654B4 000338B4  9B E1 00 3C */	stb r31, 0x3c(r1)
/* 813654B8 000338B8  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 813654BC 000338BC  90 E1 00 38 */	stw r7, 0x38(r1)
/* 813654C0 000338C0  80 E3 00 04 */	lwz r7, 0x4(r3)
/* 813654C4 000338C4  90 E1 00 20 */	stw r7, 0x20(r1)
/* 813654C8 000338C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 813654CC 000338CC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 813654D0 000338D0  90 01 00 28 */	stw r0, 0x28(r1)
/* 813654D4 000338D4  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 813654D8 000338D8  90 61 00 30 */	stw r3, 0x30(r1)
/* 813654DC 000338DC  93 E3 00 10 */	stw r31, 0x10(r3)
/* 813654E0 000338E0  38 61 00 0C */	addi r3, r1, 0xc
/* 813654E4 000338E4  48 18 88 41 */	bl fn_814EDD24
/* 813654E8 000338E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813654EC 000338EC  40 82 00 88 */	bne .L_81365574
/* 813654F0 000338F0  38 E0 00 00 */	li r7, 0x0
/* 813654F4 000338F4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 813654F8 000338F8  98 E1 00 34 */	stb r7, 0x34(r1)
/* 813654FC 000338FC  38 61 00 40 */	addi r3, r1, 0x40
/* 81365500 00033900  80 01 00 08 */	lwz r0, 0x8(r1)
/* 81365504 00033904  38 81 00 10 */	addi r4, r1, 0x10
/* 81365508 00033908  98 E1 00 3C */	stb r7, 0x3c(r1)
/* 8136550C 0003390C  80 DE 00 00 */	lwz r6, 0x0(r30)
/* 81365510 00033910  90 C1 00 38 */	stw r6, 0x38(r1)
/* 81365514 00033914  80 DE 00 08 */	lwz r6, 0x8(r30)
/* 81365518 00033918  7C A6 2A 14 */	add r5, r6, r5
/* 8136551C 0003391C  90 01 00 24 */	stw r0, 0x24(r1)
/* 81365520 00033920  90 A1 00 20 */	stw r5, 0x20(r1)
/* 81365524 00033924  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 81365528 00033928  90 01 00 28 */	stw r0, 0x28(r1)
/* 8136552C 0003392C  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 81365530 00033930  90 E1 00 30 */	stw r7, 0x30(r1)
/* 81365534 00033934  48 18 8A 5D */	bl fn_814EDF90
/* 81365538 00033938  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136553C 0003393C  40 82 00 38 */	bne .L_81365574
/* 81365540 00033940  A0 01 00 98 */	lhz r0, 0x98(r1)
/* 81365544 00033944  2C 00 00 07 */	cmpwi r0, 0x7
/* 81365548 00033948  41 82 00 2C */	beq .L_81365574
/* 8136554C 0003394C  40 80 00 10 */	bge .L_8136555C
/* 81365550 00033950  2C 00 00 06 */	cmpwi r0, 0x6
/* 81365554 00033954  40 80 00 14 */	bge .L_81365568
/* 81365558 00033958  48 00 00 1C */	b .L_81365574
.L_8136555C:
/* 8136555C 0003395C  2C 00 00 09 */	cmpwi r0, 0x9
/* 81365560 00033960  40 80 00 14 */	bge .L_81365574
/* 81365564 00033964  48 00 00 0C */	b .L_81365570
.L_81365568:
/* 81365568 00033968  3B E0 00 01 */	li r31, 0x1
/* 8136556C 0003396C  48 00 00 08 */	b .L_81365574
.L_81365570:
/* 81365570 00033970  3B E0 00 02 */	li r31, 0x2
.L_81365574:
/* 81365574 00033974  7F E3 FB 78 */	mr r3, r31
/* 81365578 00033978  83 E1 07 1C */	lwz r31, 0x71c(r1)
/* 8136557C 0003397C  83 C1 07 18 */	lwz r30, 0x718(r1)
/* 81365580 00033980  80 01 07 24 */	lwz r0, 0x724(r1)
/* 81365584 00033984  7C 08 03 A6 */	mtlr r0
/* 81365588 00033988  38 21 07 20 */	addi r1, r1, 0x720
/* 8136558C 0003398C  4E 80 00 20 */	blr
.endfn get_orientation__Q33ipl7utility11JpegDecoderFv

# .text:0x78C | 0x81365590 | size: 0x90
# ipl::utility::JpegDecoder::get_resolution(int, int)
.fn get_resolution__Q33ipl7utility11JpegDecoderFii, global
/* 81365590 00033990  2C 04 19 00 */	cmpwi r4, 0x1900
/* 81365594 00033994  38 00 00 00 */	li r0, 0x0
/* 81365598 00033998  38 60 00 00 */	li r3, 0x0
/* 8136559C 0003399C  40 81 00 0C */	ble .L_813655A8
/* 813655A0 000339A0  38 60 FF FF */	li r3, -0x1
/* 813655A4 000339A4  4E 80 00 20 */	blr
.L_813655A8:
/* 813655A8 000339A8  2C 04 0C 80 */	cmpwi r4, 0xc80
/* 813655AC 000339AC  40 81 00 0C */	ble .L_813655B8
/* 813655B0 000339B0  38 00 00 08 */	li r0, 0x8
/* 813655B4 000339B4  48 00 00 20 */	b .L_813655D4
.L_813655B8:
/* 813655B8 000339B8  2C 04 06 40 */	cmpwi r4, 0x640
/* 813655BC 000339BC  40 81 00 0C */	ble .L_813655C8
/* 813655C0 000339C0  38 00 00 04 */	li r0, 0x4
/* 813655C4 000339C4  48 00 00 10 */	b .L_813655D4
.L_813655C8:
/* 813655C8 000339C8  2C 04 03 20 */	cmpwi r4, 0x320
/* 813655CC 000339CC  40 81 00 08 */	ble .L_813655D4
/* 813655D0 000339D0  38 00 00 02 */	li r0, 0x2
.L_813655D4:
/* 813655D4 000339D4  2C 05 12 C0 */	cmpwi r5, 0x12c0
/* 813655D8 000339D8  40 81 00 0C */	ble .L_813655E4
/* 813655DC 000339DC  38 60 FF FF */	li r3, -0x1
/* 813655E0 000339E0  4E 80 00 20 */	blr
.L_813655E4:
/* 813655E4 000339E4  2C 05 09 60 */	cmpwi r5, 0x960
/* 813655E8 000339E8  40 81 00 0C */	ble .L_813655F4
/* 813655EC 000339EC  38 60 00 08 */	li r3, 0x8
/* 813655F0 000339F0  48 00 00 20 */	b .L_81365610
.L_813655F4:
/* 813655F4 000339F4  2C 05 04 B0 */	cmpwi r5, 0x4b0
/* 813655F8 000339F8  40 81 00 0C */	ble .L_81365604
/* 813655FC 000339FC  38 60 00 04 */	li r3, 0x4
/* 81365600 00033A00  48 00 00 10 */	b .L_81365610
.L_81365604:
/* 81365604 00033A04  2C 05 02 58 */	cmpwi r5, 0x258
/* 81365608 00033A08  40 81 00 08 */	ble .L_81365610
/* 8136560C 00033A0C  38 60 00 02 */	li r3, 0x2
.L_81365610:
/* 81365610 00033A10  7C 00 18 00 */	cmpw r0, r3
/* 81365614 00033A14  4C 81 00 20 */	blelr
/* 81365618 00033A18  7C 03 03 78 */	mr r3, r0
/* 8136561C 00033A1C  4E 80 00 20 */	blr
.endfn get_resolution__Q33ipl7utility11JpegDecoderFii

# .text:0x81C | 0x81365620 | size: 0xE4
# ipl::utility::JpegDecoder::calc_capture_size(int, int)
.fn calc_capture_size__Q33ipl7utility11JpegDecoderFii, global
/* 81365620 00033A20  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 81365624 00033A24  2C 00 00 02 */	cmpwi r0, 0x2
/* 81365628 00033A28  41 82 00 24 */	beq .L_8136564C
/* 8136562C 00033A2C  40 80 00 2C */	bge .L_81365658
/* 81365630 00033A30  2C 00 00 01 */	cmpwi r0, 0x1
/* 81365634 00033A34  40 80 00 08 */	bge .L_8136563C
/* 81365638 00033A38  48 00 00 20 */	b .L_81365658
.L_8136563C:
/* 8136563C 00033A3C  7C A0 2B 78 */	mr r0, r5
/* 81365640 00033A40  7C 85 23 78 */	mr r5, r4
/* 81365644 00033A44  7C 04 03 78 */	mr r4, r0
/* 81365648 00033A48  48 00 00 10 */	b .L_81365658
.L_8136564C:
/* 8136564C 00033A4C  7C A0 2B 78 */	mr r0, r5
/* 81365650 00033A50  7C 85 23 78 */	mr r5, r4
/* 81365654 00033A54  7C 04 03 78 */	mr r4, r0
.L_81365658:
/* 81365658 00033A58  2C 04 02 00 */	cmpwi r4, 0x200
/* 8136565C 00033A5C  40 81 00 3C */	ble .L_81365698
/* 81365660 00033A60  54 A5 48 2C */	slwi r5, r5, 9
/* 81365664 00033A64  38 00 02 00 */	li r0, 0x200
/* 81365668 00033A68  7C 85 23 D6 */	divw r4, r5, r4
/* 8136566C 00033A6C  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 81365670 00033A70  54 85 04 3E */	clrlwi r5, r4, 16
/* 81365674 00033A74  B0 83 00 1E */	sth r4, 0x1e(r3)
/* 81365678 00033A78  28 05 01 C8 */	cmplwi r5, 0x1c8
/* 8136567C 00033A7C  40 81 00 64 */	ble .L_813656E0
/* 81365680 00033A80  1C 80 01 C8 */	mulli r4, r0, 0x1c8
/* 81365684 00033A84  38 00 01 C8 */	li r0, 0x1c8
/* 81365688 00033A88  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 8136568C 00033A8C  7C 04 2B D6 */	divw r0, r4, r5
/* 81365690 00033A90  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 81365694 00033A94  48 00 00 4C */	b .L_813656E0
.L_81365698:
/* 81365698 00033A98  2C 05 01 C8 */	cmpwi r5, 0x1c8
/* 8136569C 00033A9C  40 81 00 3C */	ble .L_813656D8
/* 813656A0 00033AA0  1C 84 01 C8 */	mulli r4, r4, 0x1c8
/* 813656A4 00033AA4  38 00 01 C8 */	li r0, 0x1c8
/* 813656A8 00033AA8  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 813656AC 00033AAC  7C 84 2B D6 */	divw r4, r4, r5
/* 813656B0 00033AB0  54 85 04 3E */	clrlwi r5, r4, 16
/* 813656B4 00033AB4  B0 83 00 1C */	sth r4, 0x1c(r3)
/* 813656B8 00033AB8  28 05 02 00 */	cmplwi r5, 0x200
/* 813656BC 00033ABC  40 81 00 24 */	ble .L_813656E0
/* 813656C0 00033AC0  54 04 48 2C */	slwi r4, r0, 9
/* 813656C4 00033AC4  38 00 02 00 */	li r0, 0x200
/* 813656C8 00033AC8  7C 84 2B D6 */	divw r4, r4, r5
/* 813656CC 00033ACC  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 813656D0 00033AD0  B0 83 00 1E */	sth r4, 0x1e(r3)
/* 813656D4 00033AD4  48 00 00 0C */	b .L_813656E0
.L_813656D8:
/* 813656D8 00033AD8  B0 83 00 1C */	sth r4, 0x1c(r3)
/* 813656DC 00033ADC  B0 A3 00 1E */	sth r5, 0x1e(r3)
.L_813656E0:
/* 813656E0 00033AE0  A0 A3 00 1C */	lhz r5, 0x1c(r3)
/* 813656E4 00033AE4  A0 83 00 1E */	lhz r4, 0x1e(r3)
/* 813656E8 00033AE8  38 A5 00 07 */	addi r5, r5, 0x7
/* 813656EC 00033AEC  38 04 00 07 */	addi r0, r4, 0x7
/* 813656F0 00033AF0  54 A4 04 38 */	rlwinm r4, r5, 0, 16, 28
/* 813656F4 00033AF4  54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 813656F8 00033AF8  B0 83 00 1C */	sth r4, 0x1c(r3)
/* 813656FC 00033AFC  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 81365700 00033B00  4E 80 00 20 */	blr
.endfn calc_capture_size__Q33ipl7utility11JpegDecoderFii

# 0x81694658..0x81694678 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694658 | size: 0x1
.obj lbl_81694658, global
	.byte 0xFF
.endobj lbl_81694658

# .sdata2:0x1 | 0x81694659 | size: 0x1
.obj lbl_81694659, global
	.byte 0xFF
.endobj lbl_81694659

# .sdata2:0x2 | 0x8169465A | size: 0x1
.obj lbl_8169465A, global
	.byte 0xFF
.endobj lbl_8169465A

# .sdata2:0x3 | 0x8169465B | size: 0x1
.obj lbl_8169465B, global
	.byte 0xFF
.endobj lbl_8169465B

# .sdata2:0x4 | 0x8169465C | size: 0x4
.obj lbl_8169465C, global
	.float 0
.endobj lbl_8169465C

# .sdata2:0x8 | 0x81694660 | size: 0x4
.obj lbl_81694660, global
	.float 1
.endobj lbl_81694660

# .sdata2:0xC | 0x81694664 | size: 0x4
.obj lbl_81694664, global
	.float -100
.endobj lbl_81694664

# .sdata2:0x10 | 0x81694668 | size: 0x4
.obj lbl_81694668, global
	.float 100
.endobj lbl_81694668

# .sdata2:0x14 | 0x8169466C | size: 0x4
.obj gap_09_8169466C_sdata2, global
.hidden gap_09_8169466C_sdata2
	.4byte 0x00000000
.endobj gap_09_8169466C_sdata2

# .sdata2:0x18 | 0x81694670 | size: 0x8
.obj lbl_81694670, global
	.double 4503599627370496
.endobj lbl_81694670
