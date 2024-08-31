.include "macros.inc"
.file "iplArrow.cpp"

# 0x8139DA5C..0x8139DBB0 | size: 0x154
.text
.balign 4

# .text:0x0 | 0x8139DA5C | size: 0xEC
# ipl::scene::Arrow::draw()
.fn draw__Q33ipl5scene5ArrowFv, global
/* 8139DA5C 0006BE5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139DA60 0006BE60  7C 08 02 A6 */	mflr r0
/* 8139DA64 0006BE64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8139DA68 0006BE68  39 61 00 20 */	addi r11, r1, 0x20
/* 8139DA6C 0006BE6C  48 25 BA 51 */	bl _savegpr_26
/* 8139DA70 0006BE70  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139DA74 0006BE74  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139DA78 0006BE78  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139DA7C 0006BE7C  80 03 01 00 */	lwz r0, 0x100(r3)
/* 8139DA80 0006BE80  2C 00 00 01 */	cmpwi r0, 0x1
/* 8139DA84 0006BE84  40 82 00 AC */	bne .L_8139DB30
/* 8139DA88 0006BE88  38 80 00 05 */	li r4, 0x5
/* 8139DA8C 0006BE8C  48 06 D6 AD */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139DA90 0006BE90  2C 03 00 00 */	cmpwi r3, 0x0
/* 8139DA94 0006BE94  7C 7B 1B 78 */	mr r27, r3
/* 8139DA98 0006BE98  41 82 00 98 */	beq .L_8139DB30
/* 8139DA9C 0006BE9C  38 60 00 00 */	li r3, 0x0
/* 8139DAA0 0006BEA0  4B FC 50 2D */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 8139DAA4 0006BEA4  3B 40 00 00 */	li r26, 0x0
/* 8139DAA8 0006BEA8  3B E0 00 00 */	li r31, 0x0
/* 8139DAAC 0006BEAC  3B CD 87 3C */	li r30, lbl_8169677C@sda21
.L_8139DAB0:
/* 8139DAB0 0006BEB0  83 BB 00 58 */	lwz r29, 0x58(r27)
/* 8139DAB4 0006BEB4  38 A0 00 01 */	li r5, 0x1
/* 8139DAB8 0006BEB8  7C 9E F8 2E */	lwzx r4, r30, r31
/* 8139DABC 0006BEBC  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8139DAC0 0006BEC0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139DAC4 0006BEC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139DAC8 0006BEC8  7D 89 03 A6 */	mtctr r12
/* 8139DACC 0006BECC  4E 80 04 21 */	bctrl
/* 8139DAD0 0006BED0  88 03 00 CF */	lbz r0, 0xcf(r3)
/* 8139DAD4 0006BED4  7C 7C 1B 78 */	mr r28, r3
/* 8139DAD8 0006BED8  7F 84 E3 78 */	mr r4, r28
/* 8139DADC 0006BEDC  54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8139DAE0 0006BEE0  60 00 00 01 */	ori r0, r0, 0x1
/* 8139DAE4 0006BEE4  98 03 00 CF */	stb r0, 0xcf(r3)
/* 8139DAE8 0006BEE8  7F A3 EB 78 */	mr r3, r29
/* 8139DAEC 0006BEEC  4B FC CD A1 */	bl draw__Q33ipl6layout6ObjectFPQ34nw4r3lyt4Pane
/* 8139DAF0 0006BEF0  88 1C 00 CF */	lbz r0, 0xcf(r28)
/* 8139DAF4 0006BEF4  3B 5A 00 01 */	addi r26, r26, 0x1
/* 8139DAF8 0006BEF8  2C 1A 00 02 */	cmpwi r26, 0x2
/* 8139DAFC 0006BEFC  3B FF 00 04 */	addi r31, r31, 0x4
/* 8139DB00 0006BF00  54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8139DB04 0006BF04  98 1C 00 CF */	stb r0, 0xcf(r28)
/* 8139DB08 0006BF08  41 80 FF A8 */	blt .L_8139DAB0
/* 8139DB0C 0006BF0C  7F 63 DB 78 */	mr r3, r27
/* 8139DB10 0006BF10  4B FF EA 01 */	bl drawBalloon__Q33ipl5scene6ButtonFv
/* 8139DB14 0006BF14  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139DB18 0006BF18  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139DB1C 0006BF1C  88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8139DB20 0006BF20  2C 00 00 00 */	cmpwi r0, 0x0
/* 8139DB24 0006BF24  40 82 00 0C */	bne .L_8139DB30
/* 8139DB28 0006BF28  38 7B 00 70 */	addi r3, r27, 0x70
/* 8139DB2C 0006BF2C  48 04 D2 B1 */	bl fn_813EADDC
.L_8139DB30:
/* 8139DB30 0006BF30  39 61 00 20 */	addi r11, r1, 0x20
/* 8139DB34 0006BF34  48 25 B9 D5 */	bl _restgpr_26
/* 8139DB38 0006BF38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139DB3C 0006BF3C  7C 08 03 A6 */	mtlr r0
/* 8139DB40 0006BF40  38 21 00 20 */	addi r1, r1, 0x20
/* 8139DB44 0006BF44  4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene5ArrowFv

# .text:0xEC | 0x8139DB48 | size: 0x4
# ipl::scene::Base::calc()
.fn calc__Q33ipl5scene4BaseFv, global
/* 8139DB48 0006BF48  4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene4BaseFv

# .text:0xF0 | 0x8139DB4C | size: 0x4
# ipl::scene::Base::create()
.fn create__Q33ipl5scene4BaseFv, global
/* 8139DB4C 0006BF4C  4E 80 00 20 */	blr
.endfn create__Q33ipl5scene4BaseFv

# .text:0xF4 | 0x8139DB50 | size: 0x58
# ipl::scene::Arrow::~Arrow()
.fn __dt__Q33ipl5scene5ArrowFv, global
/* 8139DB50 0006BF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139DB54 0006BF54  7C 08 02 A6 */	mflr r0
/* 8139DB58 0006BF58  2C 03 00 00 */	cmpwi r3, 0x0
/* 8139DB5C 0006BF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8139DB60 0006BF60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139DB64 0006BF64  7C 9F 23 78 */	mr r31, r4
/* 8139DB68 0006BF68  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139DB6C 0006BF6C  7C 7E 1B 78 */	mr r30, r3
/* 8139DB70 0006BF70  41 82 00 1C */	beq .L_8139DB8C
/* 8139DB74 0006BF74  38 80 00 00 */	li r4, 0x0
/* 8139DB78 0006BF78  48 06 C0 ED */	bl fn_81409C64
/* 8139DB7C 0006BF7C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8139DB80 0006BF80  40 81 00 0C */	ble .L_8139DB8C
/* 8139DB84 0006BF84  7F C3 F3 78 */	mr r3, r30
/* 8139DB88 0006BF88  48 25 A5 5D */	bl __dl__FPv
.L_8139DB8C:
/* 8139DB8C 0006BF8C  7F C3 F3 78 */	mr r3, r30
/* 8139DB90 0006BF90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139DB94 0006BF94  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139DB98 0006BF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139DB9C 0006BF9C  7C 08 03 A6 */	mtlr r0
/* 8139DBA0 0006BFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8139DBA4 0006BFA4  4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene5ArrowFv

# .text:0x14C | 0x8139DBA8 | size: 0x8
.fn "@20@__dt__Q33ipl5scene5ArrowFv", global
/* 8139DBA8 0006BFA8  38 63 FF EC */	subi r3, r3, 0x14
/* 8139DBAC 0006BFAC  4B FF FF A4 */	b __dt__Q33ipl5scene5ArrowFv
.endfn "@20@__dt__Q33ipl5scene5ArrowFv"

# 0x8164C2F8..0x8164C348 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x8164C2F8 | size: 0x50
.obj lbl_8164C2F8, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene5ArrowFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene5ArrowFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene4BaseFv
	.4byte create__Q33ipl5scene4BaseFv
	.4byte calc__Q33ipl5scene4BaseFv
	.4byte draw__Q33ipl5scene5ArrowFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte 0x00000000
.endobj lbl_8164C2F8
