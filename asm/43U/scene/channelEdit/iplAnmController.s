.include "macros.inc"
.file "iplAnmController.cpp"

# 0x813A6F04..0x813A763C | size: 0x738
.text
.balign 4

# .text:0x0 | 0x813A6F04 | size: 0x60
# ipl::scene::AnmPane::calc()
.fn calc__Q33ipl5scene7AnmPaneFv, global
/* 813A6F04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6F08 | 7C 08 02 A6 */	mflr r0
/* 813A6F0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6F10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6F14 | 7C 7F 1B 78 */	mr r31, r3
/* 813A6F18 | 80 83 00 1C */	lwz r4, 0x1c(r3)
/* 813A6F1C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813A6F20 | 41 82 00 24 */	beq .L_813A6F44
/* 813A6F24 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 813A6F28 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813A6F2C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A6F30 | 41 82 00 14 */	beq .L_813A6F44
/* 813A6F34 | 38 00 00 00 */	li r0, 0x0
/* 813A6F38 | 38 80 00 03 */	li r4, 0x3
/* 813A6F3C | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 813A6F40 | 48 00 00 25 */	bl on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand
.L_813A6F44:
/* 813A6F44 | 80 9F 00 18 */	lwz r4, 0x18(r31)
/* 813A6F48 | 7F E3 FB 78 */	mr r3, r31
/* 813A6F4C | 48 00 00 19 */	bl on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand
/* 813A6F50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6F54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6F58 | 7C 08 03 A6 */	mtlr r0
/* 813A6F5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A6F60 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene7AnmPaneFv

# .text:0x60 | 0x813A6F64 | size: 0x130
# ipl::scene::AnmPane::on_cmd_recv(ipl::scene::AnmPane::AnimCommand)
.fn on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand, global
/* 813A6F64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6F68 | 7C 08 02 A6 */	mflr r0
/* 813A6F6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6F70 | 38 04 FF FF */	subi r0, r4, 0x1
/* 813A6F74 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813A6F78 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6F7C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A6F80 | 7C 7E 1B 78 */	mr r30, r3
/* 813A6F84 | 41 81 00 08 */	bgt .L_813A6F8C
/* 813A6F88 | 90 83 00 18 */	stw r4, 0x18(r3)
.L_813A6F8C:
/* 813A6F8C | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 813A6F90 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A6F94 | 41 82 00 8C */	beq .L_813A7020
/* 813A6F98 | 40 80 00 10 */	bge .L_813A6FA8
/* 813A6F9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813A6FA0 | 40 80 00 14 */	bge .L_813A6FB4
/* 813A6FA4 | 48 00 00 D8 */	b .L_813A707C
.L_813A6FA8:
/* 813A6FA8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813A6FAC | 40 80 00 D0 */	bge .L_813A707C
/* 813A6FB0 | 48 00 00 A0 */	b .L_813A7050
.L_813A6FB4:
/* 813A6FB4 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813A6FB8 | 40 82 00 30 */	bne .L_813A6FE8
/* 813A6FBC | 80 83 00 20 */	lwz r4, 0x20(r3)
/* 813A6FC0 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 813A6FC4 | 83 E4 00 00 */	lwz r31, 0x0(r4)
/* 813A6FC8 | 7F E3 FB 78 */	mr r3, r31
/* 813A6FCC | 4B FB B8 A5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813A6FD0 | 38 60 00 01 */	li r3, 0x1
/* 813A6FD4 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813A6FD8 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 813A6FDC | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 813A6FE0 | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 813A6FE4 | 48 00 00 98 */	b .L_813A707C
.L_813A6FE8:
/* 813A6FE8 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 813A6FEC | 40 82 00 90 */	bne .L_813A707C
/* 813A6FF0 | 80 83 00 24 */	lwz r4, 0x24(r3)
/* 813A6FF4 | 90 83 00 1C */	stw r4, 0x1c(r3)
/* 813A6FF8 | 83 E4 00 00 */	lwz r31, 0x0(r4)
/* 813A6FFC | 7F E3 FB 78 */	mr r3, r31
/* 813A7000 | 4B FB B8 71 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813A7004 | 38 60 00 01 */	li r3, 0x1
/* 813A7008 | 38 00 00 02 */	li r0, 0x2
/* 813A700C | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813A7010 | 80 7E 00 0C */	lwz r3, 0xc(r30)
/* 813A7014 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 813A7018 | 90 1E 00 0C */	stw r0, 0xc(r30)
/* 813A701C | 48 00 00 60 */	b .L_813A707C
.L_813A7020:
/* 813A7020 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813A7024 | 40 82 00 58 */	bne .L_813A707C
/* 813A7028 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813A702C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A7030 | 40 82 00 0C */	bne .L_813A703C
/* 813A7034 | 38 00 00 00 */	li r0, 0x0
/* 813A7038 | 90 03 00 18 */	stw r0, 0x18(r3)
.L_813A703C:
/* 813A703C | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 813A7040 | 38 00 00 00 */	li r0, 0x0
/* 813A7044 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 813A7048 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 813A704C | 48 00 00 30 */	b .L_813A707C
.L_813A7050:
/* 813A7050 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 813A7054 | 40 82 00 28 */	bne .L_813A707C
/* 813A7058 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813A705C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813A7060 | 40 82 00 0C */	bne .L_813A706C
/* 813A7064 | 38 00 00 00 */	li r0, 0x0
/* 813A7068 | 90 03 00 18 */	stw r0, 0x18(r3)
.L_813A706C:
/* 813A706C | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 813A7070 | 38 00 00 00 */	li r0, 0x0
/* 813A7074 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 813A7078 | 90 03 00 0C */	stw r0, 0xc(r3)
.L_813A707C:
/* 813A707C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A7080 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A7084 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A7088 | 7C 08 03 A6 */	mtlr r0
/* 813A708C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A7090 | 4E 80 00 20 */	blr
.endfn on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand

# .text:0x190 | 0x813A7094 | size: 0x6C
# ipl::scene::AnmController::add_animation(const char*, const char*)
.fn add_animation__Q33ipl5scene13AnmControllerFPCcPCc, global
/* 813A7094 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7098 | 7C 08 02 A6 */	mflr r0
/* 813A709C | 38 C0 00 00 */	li r6, 0x0
/* 813A70A0 | 38 E0 00 01 */	li r7, 0x1
/* 813A70A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A70A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A70AC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A70B0 | 7C 7E 1B 78 */	mr r30, r3
/* 813A70B4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A70B8 | 4B FC 34 29 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813A70BC | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813A70C0 | 7C 7F 1B 78 */	mr r31, r3
/* 813A70C4 | 38 60 00 0C */	li r3, 0xc
/* 813A70C8 | 38 A0 00 04 */	li r5, 0x4
/* 813A70CC | 48 25 0F E5 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A70D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A70D4 | 41 82 00 08 */	beq .L_813A70DC
/* 813A70D8 | 93 E3 00 00 */	stw r31, 0x0(r3)
.L_813A70DC:
/* 813A70DC | 7C 64 1B 78 */	mr r4, r3
/* 813A70E0 | 38 7E 00 0C */	addi r3, r30, 0xc
/* 813A70E4 | 48 16 AF 91 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A70E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A70EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A70F0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A70F4 | 7C 08 03 A6 */	mtlr r0
/* 813A70F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A70FC | 4E 80 00 20 */	blr
.endfn add_animation__Q33ipl5scene13AnmControllerFPCcPCc

# .text:0x1FC | 0x813A7100 | size: 0x70
# ipl::scene::AnmController::do_animation(int, int, bool)
.fn do_animation__Q33ipl5scene13AnmControllerFiib, global
/* 813A7100 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A7104 | 7C 08 02 A6 */	mflr r0
/* 813A7108 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A710C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A7110 | 48 25 23 B9 */	bl _savegpr_29
/* 813A7114 | 7C 7D 1B 78 */	mr r29, r3
/* 813A7118 | 7C BF 2B 78 */	mr r31, r5
/* 813A711C | 7C DE 33 78 */	mr r30, r6
/* 813A7120 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813A7124 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813A7128 | 48 16 B1 F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A712C | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 813A7130 | 93 E4 00 18 */	stw r31, 0x18(r4)
/* 813A7134 | 83 E3 00 00 */	lwz r31, 0x0(r3)
/* 813A7138 | 7F E3 FB 78 */	mr r3, r31
/* 813A713C | 4B FB B7 35 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813A7140 | 38 00 00 01 */	li r0, 0x1
/* 813A7144 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813A7148 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813A714C | 41 82 00 0C */	beq .L_813A7158
/* 813A7150 | 80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813A7154 | 4B FC 35 B1 */	bl calc__Q33ipl6layout6ObjectFv
.L_813A7158:
/* 813A7158 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A715C | 48 25 23 B9 */	bl _restgpr_29
/* 813A7160 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A7164 | 7C 08 03 A6 */	mtlr r0
/* 813A7168 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A716C | 4E 80 00 20 */	blr
.endfn do_animation__Q33ipl5scene13AnmControllerFiib

# .text:0x26C | 0x813A7170 | size: 0x34
# ipl::scene::AnmController::stop_animation(int)
.fn stop_animation__Q33ipl5scene13AnmControllerFi, global
/* 813A7170 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7174 | 7C 08 02 A6 */	mflr r0
/* 813A7178 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813A717C | 38 63 00 0C */	addi r3, r3, 0xc
/* 813A7180 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7184 | 48 16 B1 95 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A7188 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A718C | 38 00 00 00 */	li r0, 0x0
/* 813A7190 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813A7194 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A7198 | 7C 08 03 A6 */	mtlr r0
/* 813A719C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A71A0 | 4E 80 00 20 */	blr
.endfn stop_animation__Q33ipl5scene13AnmControllerFi

# .text:0x2A0 | 0x813A71A4 | size: 0x3C
# ipl::scene::AnmController::is_animation(int)
.fn is_animation__Q33ipl5scene13AnmControllerFi, global
/* 813A71A4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A71A8 | 7C 08 02 A6 */	mflr r0
/* 813A71AC | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813A71B0 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813A71B4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A71B8 | 48 16 B1 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A71BC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A71C0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A71C4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813A71C8 | 7C 00 00 34 */	cntlzw r0, r0
/* 813A71CC | 54 03 D9 7E */	srwi r3, r0, 5
/* 813A71D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A71D4 | 7C 08 03 A6 */	mtlr r0
/* 813A71D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A71DC | 4E 80 00 20 */	blr
.endfn is_animation__Q33ipl5scene13AnmControllerFi

# .text:0x2DC | 0x813A71E0 | size: 0xC
# ipl::scene::AnmController::get_animation(int)
.fn get_animation__Q33ipl5scene13AnmControllerFi, global
/* 813A71E0 | 54 84 04 3E */	clrlwi r4, r4, 16
/* 813A71E4 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813A71E8 | 48 16 B1 30 */	b List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
.endfn get_animation__Q33ipl5scene13AnmControllerFi

# .text:0x2E8 | 0x813A71EC | size: 0x84
# ipl::scene::AnmController::add_anmpane(const char*, ipl::scene::Anm*, ipl::scene::Anm*)
.fn add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm, global
/* 813A71EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A71F0 | 7C 08 02 A6 */	mflr r0
/* 813A71F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A71F8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A71FC | 48 25 22 C9 */	bl _savegpr_28
/* 813A7200 | 7C 9D 23 78 */	mr r29, r4
/* 813A7204 | 80 83 00 24 */	lwz r4, 0x24(r3)
/* 813A7208 | 7C 7C 1B 78 */	mr r28, r3
/* 813A720C | 7C BE 2B 78 */	mr r30, r5
/* 813A7210 | 7C DF 33 78 */	mr r31, r6
/* 813A7214 | 38 60 00 28 */	li r3, 0x28
/* 813A7218 | 38 A0 00 04 */	li r5, 0x4
/* 813A721C | 48 25 0E 95 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A7220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7224 | 41 82 00 28 */	beq .L_813A724C
/* 813A7228 | 93 A3 00 08 */	stw r29, 0x8(r3)
/* 813A722C | 38 00 00 00 */	li r0, 0x0
/* 813A7230 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 813A7234 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 813A7238 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813A723C | 90 03 00 18 */	stw r0, 0x18(r3)
/* 813A7240 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 813A7244 | 93 C3 00 20 */	stw r30, 0x20(r3)
/* 813A7248 | 93 E3 00 24 */	stw r31, 0x24(r3)
.L_813A724C:
/* 813A724C | 7C 64 1B 78 */	mr r4, r3
/* 813A7250 | 38 7C 00 18 */	addi r3, r28, 0x18
/* 813A7254 | 48 16 AE 21 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A7258 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A725C | 48 25 22 B5 */	bl _restgpr_28
/* 813A7260 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A7264 | 7C 08 03 A6 */	mtlr r0
/* 813A7268 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A726C | 4E 80 00 20 */	blr
.endfn add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm

# .text:0x36C | 0x813A7270 | size: 0x80
# ipl::scene::AnmController::get_anmpane(const char*)
.fn get_anmpane__Q33ipl5scene13AnmControllerFPCc, global
/* 813A7270 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A7274 | 7C 08 02 A6 */	mflr r0
/* 813A7278 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A727C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A7280 | 48 25 22 49 */	bl _savegpr_29
/* 813A7284 | 7C 7D 1B 78 */	mr r29, r3
/* 813A7288 | 7C 9E 23 78 */	mr r30, r4
/* 813A728C | 38 80 00 00 */	li r4, 0x0
/* 813A7290 | 38 63 00 18 */	addi r3, r3, 0x18
/* 813A7294 | 48 16 B0 49 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A7298 | 7C 7F 1B 78 */	mr r31, r3
/* 813A729C | 48 00 00 30 */	b .L_813A72CC
.L_813A72A0:
/* 813A72A0 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A72A4 | 7F C4 F3 78 */	mr r4, r30
/* 813A72A8 | 48 25 B1 D9 */	bl strcmp
/* 813A72AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813A72B0 | 40 82 00 0C */	bne .L_813A72BC
/* 813A72B4 | 7F E3 FB 78 */	mr r3, r31
/* 813A72B8 | 48 00 00 20 */	b .L_813A72D8
.L_813A72BC:
/* 813A72BC | 7F E4 FB 78 */	mr r4, r31
/* 813A72C0 | 38 7D 00 18 */	addi r3, r29, 0x18
/* 813A72C4 | 48 16 B0 19 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A72C8 | 7C 7F 1B 78 */	mr r31, r3
.L_813A72CC:
/* 813A72CC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A72D0 | 40 82 FF D0 */	bne .L_813A72A0
/* 813A72D4 | 7F E3 FB 78 */	mr r3, r31
.L_813A72D8:
/* 813A72D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A72DC | 48 25 22 39 */	bl _restgpr_29
/* 813A72E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A72E4 | 7C 08 03 A6 */	mtlr r0
/* 813A72E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A72EC | 4E 80 00 20 */	blr
.endfn get_anmpane__Q33ipl5scene13AnmControllerFPCc

# .text:0x3EC | 0x813A72F0 | size: 0x88
# ipl::scene::AnmController::clear_anmpane(const char*)
.fn clear_anmpane__Q33ipl5scene13AnmControllerFPCc, global
/* 813A72F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A72F4 | 7C 08 02 A6 */	mflr r0
/* 813A72F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813A72FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A7300 | 48 25 21 C9 */	bl _savegpr_29
/* 813A7304 | 7C 7D 1B 78 */	mr r29, r3
/* 813A7308 | 7C 9E 23 78 */	mr r30, r4
/* 813A730C | 4B FF FF 65 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A7310 | 80 DD 00 04 */	lwz r6, 0x4(r29)
/* 813A7314 | 7C 7F 1B 78 */	mr r31, r3
/* 813A7318 | 7F C4 F3 78 */	mr r4, r30
/* 813A731C | 38 A0 00 01 */	li r5, 0x1
/* 813A7320 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813A7324 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7328 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A732C | 7D 89 03 A6 */	mtctr r12
/* 813A7330 | 4E 80 04 21 */	bctrl
/* 813A7334 | 7C 64 1B 78 */	mr r4, r3
/* 813A7338 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813A733C | 4B FC 3E DD */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813A7340 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 813A7344 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813A7348 | 41 80 00 10 */	blt .L_813A7358
/* 813A734C | 7F E3 FB 78 */	mr r3, r31
/* 813A7350 | 38 80 00 02 */	li r4, 0x2
/* 813A7354 | 4B FF FC 11 */	bl on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand
.L_813A7358:
/* 813A7358 | 38 00 00 00 */	li r0, 0x0
/* 813A735C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813A7360 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813A7364 | 48 25 21 B1 */	bl _restgpr_29
/* 813A7368 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A736C | 7C 08 03 A6 */	mtlr r0
/* 813A7370 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813A7374 | 4E 80 00 20 */	blr
.endfn clear_anmpane__Q33ipl5scene13AnmControllerFPCc

# .text:0x474 | 0x813A7378 | size: 0x88
# ipl::scene::AnmController::set_textbox(const char*, unsigned long)
.fn set_textbox__Q33ipl5scene13AnmControllerFPCcUl, global
/* 813A7378 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A737C | 7C 08 02 A6 */	mflr r0
/* 813A7380 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7384 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7388 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A738C | 7C BE 2B 78 */	mr r30, r5
/* 813A7390 | 38 A0 00 01 */	li r5, 0x1
/* 813A7394 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A7398 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A739C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A73A0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A73A4 | 7D 89 03 A6 */	mtctr r12
/* 813A73A8 | 4E 80 04 21 */	bctrl
/* 813A73AC | 4B F9 EA B9 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813A73B0 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813A73B4 | 7C 7F 1B 78 */	mr r31, r3
/* 813A73B8 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813A73BC | 7F C4 F3 78 */	mr r4, r30
/* 813A73C0 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 813A73C4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A73C8 | 4B F9 73 F5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813A73CC | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813A73D0 | 7C 64 1B 78 */	mr r4, r3
/* 813A73D4 | 7F E3 FB 78 */	mr r3, r31
/* 813A73D8 | 38 A0 00 00 */	li r5, 0x0
/* 813A73DC | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813A73E0 | 7D 89 03 A6 */	mtctr r12
/* 813A73E4 | 4E 80 04 21 */	bctrl
/* 813A73E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A73EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A73F0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A73F4 | 7C 08 03 A6 */	mtlr r0
/* 813A73F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A73FC | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene13AnmControllerFPCcUl

# .text:0x4FC | 0x813A7400 | size: 0x60
# ipl::scene::AnmController::set_textbox(const char*, const wchar_t*)
.fn set_textbox__Q33ipl5scene13AnmControllerFPCcPCw, global
/* 813A7400 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7404 | 7C 08 02 A6 */	mflr r0
/* 813A7408 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A740C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7410 | 7C BF 2B 78 */	mr r31, r5
/* 813A7414 | 38 A0 00 01 */	li r5, 0x1
/* 813A7418 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A741C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A7420 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7424 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A7428 | 7D 89 03 A6 */	mtctr r12
/* 813A742C | 4E 80 04 21 */	bctrl
/* 813A7430 | 4B F9 EA 35 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813A7434 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7438 | 7F E4 FB 78 */	mr r4, r31
/* 813A743C | 38 A0 00 00 */	li r5, 0x0
/* 813A7440 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813A7444 | 7D 89 03 A6 */	mtctr r12
/* 813A7448 | 4E 80 04 21 */	bctrl
/* 813A744C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A7450 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A7454 | 7C 08 03 A6 */	mtlr r0
/* 813A7458 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A745C | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene13AnmControllerFPCcPCw

# .text:0x55C | 0x813A7460 | size: 0x74
# ipl::scene::AnmController::set_texture(const char*, const _GXTexObj&)
.fn set_texture__Q33ipl5scene13AnmControllerFPCcRC9_GXTexObj, global
/* 813A7460 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7464 | 7C 08 02 A6 */	mflr r0
/* 813A7468 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A746C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7470 | 7C BF 2B 78 */	mr r31, r5
/* 813A7474 | 38 A0 00 01 */	li r5, 0x1
/* 813A7478 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A747C | 7C 9E 23 78 */	mr r30, r4
/* 813A7480 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A7484 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A7488 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A748C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A7490 | 7D 89 03 A6 */	mtctr r12
/* 813A7494 | 4E 80 04 21 */	bctrl
/* 813A7498 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A749C | 7F C4 F3 78 */	mr r4, r30
/* 813A74A0 | 38 A0 00 01 */	li r5, 0x1
/* 813A74A4 | 81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813A74A8 | 7D 89 03 A6 */	mtctr r12
/* 813A74AC | 4E 80 04 21 */	bctrl
/* 813A74B0 | 7F E5 FB 78 */	mr r5, r31
/* 813A74B4 | 38 80 00 00 */	li r4, 0x0
/* 813A74B8 | 48 18 09 65 */	bl fn_81527E1C
/* 813A74BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A74C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A74C4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A74C8 | 7C 08 03 A6 */	mtlr r0
/* 813A74CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A74D0 | 4E 80 00 20 */	blr
.endfn set_texture__Q33ipl5scene13AnmControllerFPCcRC9_GXTexObj

# .text:0x5D0 | 0x813A74D4 | size: 0x54
# ipl::scene::AnmController::set_visible(const char*, bool)
.fn set_visible__Q33ipl5scene13AnmControllerFPCcb, global
/* 813A74D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A74D8 | 7C 08 02 A6 */	mflr r0
/* 813A74DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A74E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A74E4 | 7C BF 2B 78 */	mr r31, r5
/* 813A74E8 | 38 A0 00 01 */	li r5, 0x1
/* 813A74EC | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A74F0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A74F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A74F8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A74FC | 7D 89 03 A6 */	mtctr r12
/* 813A7500 | 4E 80 04 21 */	bctrl
/* 813A7504 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813A7508 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813A750C | 7C 00 FB 78 */	or r0, r0, r31
/* 813A7510 | 98 03 00 CF */	stb r0, 0xcf(r3)
/* 813A7514 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A7518 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A751C | 7C 08 03 A6 */	mtlr r0
/* 813A7520 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A7524 | 4E 80 00 20 */	blr
.endfn set_visible__Q33ipl5scene13AnmControllerFPCcb

# .text:0x624 | 0x813A7528 | size: 0x40
# ipl::scene::AnmController::get_visible(const char*)
.fn get_visible__Q33ipl5scene13AnmControllerFPCc, global
/* 813A7528 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A752C | 7C 08 02 A6 */	mflr r0
/* 813A7530 | 38 A0 00 01 */	li r5, 0x1
/* 813A7534 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7538 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A753C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A7540 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7544 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A7548 | 7D 89 03 A6 */	mtctr r12
/* 813A754C | 4E 80 04 21 */	bctrl
/* 813A7550 | 88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813A7554 | 54 03 07 FE */	clrlwi r3, r0, 31
/* 813A7558 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A755C | 7C 08 03 A6 */	mtlr r0
/* 813A7560 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A7564 | 4E 80 00 20 */	blr
.endfn get_visible__Q33ipl5scene13AnmControllerFPCc

# .text:0x664 | 0x813A7568 | size: 0x5C
# ipl::scene::AnmController::set_translate(const char*, const nw4r::math::VEC3&)
.fn set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3, global
/* 813A7568 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A756C | 7C 08 02 A6 */	mflr r0
/* 813A7570 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7574 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7578 | 7C BF 2B 78 */	mr r31, r5
/* 813A757C | 38 A0 00 01 */	li r5, 0x1
/* 813A7580 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A7584 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A7588 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A758C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A7590 | 7D 89 03 A6 */	mtctr r12
/* 813A7594 | 4E 80 04 21 */	bctrl
/* 813A7598 | C0 1F 00 00 */	lfs f0, 0x0(r31)
/* 813A759C | C0 3F 00 04 */	lfs f1, 0x4(r31)
/* 813A75A0 | D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 813A75A4 | C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 813A75A8 | D0 23 00 30 */	stfs f1, 0x30(r3)
/* 813A75AC | D0 03 00 34 */	stfs f0, 0x34(r3)
/* 813A75B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A75B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A75B8 | 7C 08 03 A6 */	mtlr r0
/* 813A75BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A75C0 | 4E 80 00 20 */	blr
.endfn set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3

# .text:0x6C0 | 0x813A75C4 | size: 0x3C
# ipl::scene::AnmController::get_translate(const char*)
.fn get_translate__Q33ipl5scene13AnmControllerFPCc, global
/* 813A75C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A75C8 | 7C 08 02 A6 */	mflr r0
/* 813A75CC | 38 A0 00 01 */	li r5, 0x1
/* 813A75D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A75D4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A75D8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A75DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A75E0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A75E4 | 7D 89 03 A6 */	mtctr r12
/* 813A75E8 | 4E 80 04 21 */	bctrl
/* 813A75EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A75F0 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813A75F4 | 7C 08 03 A6 */	mtlr r0
/* 813A75F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A75FC | 4E 80 00 20 */	blr
.endfn get_translate__Q33ipl5scene13AnmControllerFPCc

# .text:0x6FC | 0x813A7600 | size: 0x3C
# ipl::scene::AnmController::get_scale(const char*)
.fn get_scale__Q33ipl5scene13AnmControllerFPCc, global
/* 813A7600 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7604 | 7C 08 02 A6 */	mflr r0
/* 813A7608 | 38 A0 00 01 */	li r5, 0x1
/* 813A760C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7610 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A7614 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A7618 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A761C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A7620 | 7D 89 03 A6 */	mtctr r12
/* 813A7624 | 4E 80 04 21 */	bctrl
/* 813A7628 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A762C | 38 63 00 44 */	addi r3, r3, 0x44
/* 813A7630 | 7C 08 03 A6 */	mtlr r0
/* 813A7634 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813A7638 | 4E 80 00 20 */	blr
.endfn get_scale__Q33ipl5scene13AnmControllerFPCc
