.include "macros.inc"
.file "iplAnmController.cpp"

# 0x813A6F04..0x813A763C | size: 0x738
.text
.balign 4

# .text:0x0 | 0x813A6F04 | size: 0x60
# ipl::scene::AnmPane::calc()
.fn calc__Q33ipl5scene7AnmPaneFv, global
/* 813A6F04 00075304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6F08 00075308  7C 08 02 A6 */	mflr r0
/* 813A6F0C 0007530C  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6F10 00075310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6F14 00075314  7C 7F 1B 78 */	mr r31, r3
/* 813A6F18 00075318  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 813A6F1C 0007531C  2C 04 00 00 */	cmpwi r4, 0x0
/* 813A6F20 00075320  41 82 00 24 */	beq .L_813A6F44
/* 813A6F24 00075324  80 84 00 00 */	lwz r4, 0x0(r4)
/* 813A6F28 00075328  80 04 00 14 */	lwz r0, 0x14(r4)
/* 813A6F2C 0007532C  2C 00 00 01 */	cmpwi r0, 0x1
/* 813A6F30 00075330  41 82 00 14 */	beq .L_813A6F44
/* 813A6F34 00075334  38 00 00 00 */	li r0, 0x0
/* 813A6F38 00075338  38 80 00 03 */	li r4, 0x3
/* 813A6F3C 0007533C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 813A6F40 00075340  48 00 00 25 */	bl on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand
.L_813A6F44:
/* 813A6F44 00075344  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 813A6F48 00075348  7F E3 FB 78 */	mr r3, r31
/* 813A6F4C 0007534C  48 00 00 19 */	bl on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand
/* 813A6F50 00075350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A6F54 00075354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A6F58 00075358  7C 08 03 A6 */	mtlr r0
/* 813A6F5C 0007535C  38 21 00 10 */	addi r1, r1, 0x10
/* 813A6F60 00075360  4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene7AnmPaneFv

# .text:0x60 | 0x813A6F64 | size: 0x130
# ipl::scene::AnmPane::on_cmd_recv(ipl::scene::AnmPane::AnimCommand)
.fn on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand, global
/* 813A6F64 00075364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A6F68 00075368  7C 08 02 A6 */	mflr r0
/* 813A6F6C 0007536C  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A6F70 00075370  38 04 FF FF */	subi r0, r4, 0x1
/* 813A6F74 00075374  28 00 00 01 */	cmplwi r0, 0x1
/* 813A6F78 00075378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A6F7C 0007537C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A6F80 00075380  7C 7E 1B 78 */	mr r30, r3
/* 813A6F84 00075384  41 81 00 08 */	bgt .L_813A6F8C
/* 813A6F88 00075388  90 83 00 18 */	stw r4, 0x18(r3)
.L_813A6F8C:
/* 813A6F8C 0007538C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 813A6F90 00075390  2C 00 00 01 */	cmpwi r0, 0x1
/* 813A6F94 00075394  41 82 00 8C */	beq .L_813A7020
/* 813A6F98 00075398  40 80 00 10 */	bge .L_813A6FA8
/* 813A6F9C 0007539C  2C 00 00 00 */	cmpwi r0, 0x0
/* 813A6FA0 000753A0  40 80 00 14 */	bge .L_813A6FB4
/* 813A6FA4 000753A4  48 00 00 D8 */	b .L_813A707C
.L_813A6FA8:
/* 813A6FA8 000753A8  2C 00 00 03 */	cmpwi r0, 0x3
/* 813A6FAC 000753AC  40 80 00 D0 */	bge .L_813A707C
/* 813A6FB0 000753B0  48 00 00 A0 */	b .L_813A7050
.L_813A6FB4:
/* 813A6FB4 000753B4  2C 04 00 01 */	cmpwi r4, 0x1
/* 813A6FB8 000753B8  40 82 00 30 */	bne .L_813A6FE8
/* 813A6FBC 000753BC  80 83 00 20 */	lwz r4, 0x20(r3)
/* 813A6FC0 000753C0  90 83 00 1C */	stw r4, 0x1c(r3)
/* 813A6FC4 000753C4  83 E4 00 00 */	lwz r31, 0x0(r4)
/* 813A6FC8 000753C8  7F E3 FB 78 */	mr r3, r31
/* 813A6FCC 000753CC  4B FB B8 A5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813A6FD0 000753D0  38 60 00 01 */	li r3, 0x1
/* 813A6FD4 000753D4  90 7F 00 14 */	stw r3, 0x14(r31)
/* 813A6FD8 000753D8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 813A6FDC 000753DC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 813A6FE0 000753E0  90 7E 00 0C */	stw r3, 0xc(r30)
/* 813A6FE4 000753E4  48 00 00 98 */	b .L_813A707C
.L_813A6FE8:
/* 813A6FE8 000753E8  2C 04 00 02 */	cmpwi r4, 0x2
/* 813A6FEC 000753EC  40 82 00 90 */	bne .L_813A707C
/* 813A6FF0 000753F0  80 83 00 24 */	lwz r4, 0x24(r3)
/* 813A6FF4 000753F4  90 83 00 1C */	stw r4, 0x1c(r3)
/* 813A6FF8 000753F8  83 E4 00 00 */	lwz r31, 0x0(r4)
/* 813A6FFC 000753FC  7F E3 FB 78 */	mr r3, r31
/* 813A7000 00075400  4B FB B8 71 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813A7004 00075404  38 60 00 01 */	li r3, 0x1
/* 813A7008 00075408  38 00 00 02 */	li r0, 0x2
/* 813A700C 0007540C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 813A7010 00075410  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 813A7014 00075414  90 7E 00 10 */	stw r3, 0x10(r30)
/* 813A7018 00075418  90 1E 00 0C */	stw r0, 0xc(r30)
/* 813A701C 0007541C  48 00 00 60 */	b .L_813A707C
.L_813A7020:
/* 813A7020 00075420  2C 04 00 03 */	cmpwi r4, 0x3
/* 813A7024 00075424  40 82 00 58 */	bne .L_813A707C
/* 813A7028 00075428  80 03 00 18 */	lwz r0, 0x18(r3)
/* 813A702C 0007542C  2C 00 00 01 */	cmpwi r0, 0x1
/* 813A7030 00075430  40 82 00 0C */	bne .L_813A703C
/* 813A7034 00075434  38 00 00 00 */	li r0, 0x0
/* 813A7038 00075438  90 03 00 18 */	stw r0, 0x18(r3)
.L_813A703C:
/* 813A703C 0007543C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 813A7040 00075440  38 00 00 00 */	li r0, 0x0
/* 813A7044 00075444  90 83 00 10 */	stw r4, 0x10(r3)
/* 813A7048 00075448  90 03 00 0C */	stw r0, 0xc(r3)
/* 813A704C 0007544C  48 00 00 30 */	b .L_813A707C
.L_813A7050:
/* 813A7050 00075450  2C 04 00 03 */	cmpwi r4, 0x3
/* 813A7054 00075454  40 82 00 28 */	bne .L_813A707C
/* 813A7058 00075458  80 03 00 18 */	lwz r0, 0x18(r3)
/* 813A705C 0007545C  2C 00 00 02 */	cmpwi r0, 0x2
/* 813A7060 00075460  40 82 00 0C */	bne .L_813A706C
/* 813A7064 00075464  38 00 00 00 */	li r0, 0x0
/* 813A7068 00075468  90 03 00 18 */	stw r0, 0x18(r3)
.L_813A706C:
/* 813A706C 0007546C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 813A7070 00075470  38 00 00 00 */	li r0, 0x0
/* 813A7074 00075474  90 83 00 10 */	stw r4, 0x10(r3)
/* 813A7078 00075478  90 03 00 0C */	stw r0, 0xc(r3)
.L_813A707C:
/* 813A707C 0007547C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A7080 00075480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A7084 00075484  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A7088 00075488  7C 08 03 A6 */	mtlr r0
/* 813A708C 0007548C  38 21 00 10 */	addi r1, r1, 0x10
/* 813A7090 00075490  4E 80 00 20 */	blr
.endfn on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand

# .text:0x190 | 0x813A7094 | size: 0x6C
# ipl::scene::AnmController::add_animation(const char*, const char*)
.fn add_animation__Q33ipl5scene13AnmControllerFPCcPCc, global
/* 813A7094 00075494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7098 00075498  7C 08 02 A6 */	mflr r0
/* 813A709C 0007549C  38 C0 00 00 */	li r6, 0x0
/* 813A70A0 000754A0  38 E0 00 01 */	li r7, 0x1
/* 813A70A4 000754A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A70A8 000754A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A70AC 000754AC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A70B0 000754B0  7C 7E 1B 78 */	mr r30, r3
/* 813A70B4 000754B4  80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A70B8 000754B8  4B FC 34 29 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813A70BC 000754BC  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813A70C0 000754C0  7C 7F 1B 78 */	mr r31, r3
/* 813A70C4 000754C4  38 60 00 0C */	li r3, 0xc
/* 813A70C8 000754C8  38 A0 00 04 */	li r5, 0x4
/* 813A70CC 000754CC  48 25 0F E5 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A70D0 000754D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813A70D4 000754D4  41 82 00 08 */	beq .L_813A70DC
/* 813A70D8 000754D8  93 E3 00 00 */	stw r31, 0x0(r3)
.L_813A70DC:
/* 813A70DC 000754DC  7C 64 1B 78 */	mr r4, r3
/* 813A70E0 000754E0  38 7E 00 0C */	addi r3, r30, 0xc
/* 813A70E4 000754E4  48 16 AF 91 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A70E8 000754E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A70EC 000754EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A70F0 000754F0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A70F4 000754F4  7C 08 03 A6 */	mtlr r0
/* 813A70F8 000754F8  38 21 00 10 */	addi r1, r1, 0x10
/* 813A70FC 000754FC  4E 80 00 20 */	blr
.endfn add_animation__Q33ipl5scene13AnmControllerFPCcPCc

# .text:0x1FC | 0x813A7100 | size: 0x70
# ipl::scene::AnmController::do_animation(int, int, bool)
.fn do_animation__Q33ipl5scene13AnmControllerFiib, global
/* 813A7100 00075500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A7104 00075504  7C 08 02 A6 */	mflr r0
/* 813A7108 00075508  90 01 00 24 */	stw r0, 0x24(r1)
/* 813A710C 0007550C  39 61 00 20 */	addi r11, r1, 0x20
/* 813A7110 00075510  48 25 23 B9 */	bl _savegpr_29
/* 813A7114 00075514  7C 7D 1B 78 */	mr r29, r3
/* 813A7118 00075518  7C BF 2B 78 */	mr r31, r5
/* 813A711C 0007551C  7C DE 33 78 */	mr r30, r6
/* 813A7120 00075520  54 84 04 3E */	clrlwi r4, r4, 16
/* 813A7124 00075524  38 63 00 0C */	addi r3, r3, 0xc
/* 813A7128 00075528  48 16 B1 F1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A712C 0007552C  80 83 00 00 */	lwz r4, 0x0(r3)
/* 813A7130 00075530  93 E4 00 18 */	stw r31, 0x18(r4)
/* 813A7134 00075534  83 E3 00 00 */	lwz r31, 0x0(r3)
/* 813A7138 00075538  7F E3 FB 78 */	mr r3, r31
/* 813A713C 0007553C  4B FB B7 35 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813A7140 00075540  38 00 00 01 */	li r0, 0x1
/* 813A7144 00075544  2C 1E 00 00 */	cmpwi r30, 0x0
/* 813A7148 00075548  90 1F 00 14 */	stw r0, 0x14(r31)
/* 813A714C 0007554C  41 82 00 0C */	beq .L_813A7158
/* 813A7150 00075550  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 813A7154 00075554  4B FC 35 B1 */	bl calc__Q33ipl6layout6ObjectFv
.L_813A7158:
/* 813A7158 00075558  39 61 00 20 */	addi r11, r1, 0x20
/* 813A715C 0007555C  48 25 23 B9 */	bl _restgpr_29
/* 813A7160 00075560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A7164 00075564  7C 08 03 A6 */	mtlr r0
/* 813A7168 00075568  38 21 00 20 */	addi r1, r1, 0x20
/* 813A716C 0007556C  4E 80 00 20 */	blr
.endfn do_animation__Q33ipl5scene13AnmControllerFiib

# .text:0x26C | 0x813A7170 | size: 0x34
# ipl::scene::AnmController::stop_animation(int)
.fn stop_animation__Q33ipl5scene13AnmControllerFi, global
/* 813A7170 00075570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7174 00075574  7C 08 02 A6 */	mflr r0
/* 813A7178 00075578  54 84 04 3E */	clrlwi r4, r4, 16
/* 813A717C 0007557C  38 63 00 0C */	addi r3, r3, 0xc
/* 813A7180 00075580  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7184 00075584  48 16 B1 95 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A7188 00075588  80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A718C 0007558C  38 00 00 00 */	li r0, 0x0
/* 813A7190 00075590  90 03 00 14 */	stw r0, 0x14(r3)
/* 813A7194 00075594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A7198 00075598  7C 08 03 A6 */	mtlr r0
/* 813A719C 0007559C  38 21 00 10 */	addi r1, r1, 0x10
/* 813A71A0 000755A0  4E 80 00 20 */	blr
.endfn stop_animation__Q33ipl5scene13AnmControllerFi

# .text:0x2A0 | 0x813A71A4 | size: 0x3C
# ipl::scene::AnmController::is_animation(int)
.fn is_animation__Q33ipl5scene13AnmControllerFi, global
/* 813A71A4 000755A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A71A8 000755A8  7C 08 02 A6 */	mflr r0
/* 813A71AC 000755AC  54 84 04 3E */	clrlwi r4, r4, 16
/* 813A71B0 000755B0  38 63 00 0C */	addi r3, r3, 0xc
/* 813A71B4 000755B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A71B8 000755B8  48 16 B1 61 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 813A71BC 000755BC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A71C0 000755C0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A71C4 000755C4  38 03 FF FF */	subi r0, r3, 0x1
/* 813A71C8 000755C8  7C 00 00 34 */	cntlzw r0, r0
/* 813A71CC 000755CC  54 03 D9 7E */	srwi r3, r0, 5
/* 813A71D0 000755D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A71D4 000755D4  7C 08 03 A6 */	mtlr r0
/* 813A71D8 000755D8  38 21 00 10 */	addi r1, r1, 0x10
/* 813A71DC 000755DC  4E 80 00 20 */	blr
.endfn is_animation__Q33ipl5scene13AnmControllerFi

# .text:0x2DC | 0x813A71E0 | size: 0xC
# ipl::scene::AnmController::get_animation(int)
.fn get_animation__Q33ipl5scene13AnmControllerFi, global
/* 813A71E0 000755E0  54 84 04 3E */	clrlwi r4, r4, 16
/* 813A71E4 000755E4  38 63 00 0C */	addi r3, r3, 0xc
/* 813A71E8 000755E8  48 16 B1 30 */	b List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
.endfn get_animation__Q33ipl5scene13AnmControllerFi

# .text:0x2E8 | 0x813A71EC | size: 0x84
# ipl::scene::AnmController::add_anmpane(const char*, ipl::scene::Anm*, ipl::scene::Anm*)
.fn add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm, global
/* 813A71EC 000755EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A71F0 000755F0  7C 08 02 A6 */	mflr r0
/* 813A71F4 000755F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 813A71F8 000755F8  39 61 00 20 */	addi r11, r1, 0x20
/* 813A71FC 000755FC  48 25 22 C9 */	bl _savegpr_28
/* 813A7200 00075600  7C 9D 23 78 */	mr r29, r4
/* 813A7204 00075604  80 83 00 24 */	lwz r4, 0x24(r3)
/* 813A7208 00075608  7C 7C 1B 78 */	mr r28, r3
/* 813A720C 0007560C  7C BE 2B 78 */	mr r30, r5
/* 813A7210 00075610  7C DF 33 78 */	mr r31, r6
/* 813A7214 00075614  38 60 00 28 */	li r3, 0x28
/* 813A7218 00075618  38 A0 00 04 */	li r5, 0x4
/* 813A721C 0007561C  48 25 0E 95 */	bl __nw__FUlPQ23EGG4Heapi
/* 813A7220 00075620  2C 03 00 00 */	cmpwi r3, 0x0
/* 813A7224 00075624  41 82 00 28 */	beq .L_813A724C
/* 813A7228 00075628  93 A3 00 08 */	stw r29, 0x8(r3)
/* 813A722C 0007562C  38 00 00 00 */	li r0, 0x0
/* 813A7230 00075630  90 03 00 0C */	stw r0, 0xc(r3)
/* 813A7234 00075634  90 03 00 10 */	stw r0, 0x10(r3)
/* 813A7238 00075638  90 03 00 14 */	stw r0, 0x14(r3)
/* 813A723C 0007563C  90 03 00 18 */	stw r0, 0x18(r3)
/* 813A7240 00075640  90 03 00 1C */	stw r0, 0x1c(r3)
/* 813A7244 00075644  93 C3 00 20 */	stw r30, 0x20(r3)
/* 813A7248 00075648  93 E3 00 24 */	stw r31, 0x24(r3)
.L_813A724C:
/* 813A724C 0007564C  7C 64 1B 78 */	mr r4, r3
/* 813A7250 00075650  38 7C 00 18 */	addi r3, r28, 0x18
/* 813A7254 00075654  48 16 AE 21 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 813A7258 00075658  39 61 00 20 */	addi r11, r1, 0x20
/* 813A725C 0007565C  48 25 22 B5 */	bl _restgpr_28
/* 813A7260 00075660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A7264 00075664  7C 08 03 A6 */	mtlr r0
/* 813A7268 00075668  38 21 00 20 */	addi r1, r1, 0x20
/* 813A726C 0007566C  4E 80 00 20 */	blr
.endfn add_anmpane__Q33ipl5scene13AnmControllerFPCcPQ33ipl5scene3AnmPQ33ipl5scene3Anm

# .text:0x36C | 0x813A7270 | size: 0x80
# ipl::scene::AnmController::get_anmpane(const char*)
.fn get_anmpane__Q33ipl5scene13AnmControllerFPCc, global
/* 813A7270 00075670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A7274 00075674  7C 08 02 A6 */	mflr r0
/* 813A7278 00075678  90 01 00 24 */	stw r0, 0x24(r1)
/* 813A727C 0007567C  39 61 00 20 */	addi r11, r1, 0x20
/* 813A7280 00075680  48 25 22 49 */	bl _savegpr_29
/* 813A7284 00075684  7C 7D 1B 78 */	mr r29, r3
/* 813A7288 00075688  7C 9E 23 78 */	mr r30, r4
/* 813A728C 0007568C  38 80 00 00 */	li r4, 0x0
/* 813A7290 00075690  38 63 00 18 */	addi r3, r3, 0x18
/* 813A7294 00075694  48 16 B0 49 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A7298 00075698  7C 7F 1B 78 */	mr r31, r3
/* 813A729C 0007569C  48 00 00 30 */	b .L_813A72CC
.L_813A72A0:
/* 813A72A0 000756A0  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 813A72A4 000756A4  7F C4 F3 78 */	mr r4, r30
/* 813A72A8 000756A8  48 25 B1 D9 */	bl strcmp
/* 813A72AC 000756AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813A72B0 000756B0  40 82 00 0C */	bne .L_813A72BC
/* 813A72B4 000756B4  7F E3 FB 78 */	mr r3, r31
/* 813A72B8 000756B8  48 00 00 20 */	b .L_813A72D8
.L_813A72BC:
/* 813A72BC 000756BC  7F E4 FB 78 */	mr r4, r31
/* 813A72C0 000756C0  38 7D 00 18 */	addi r3, r29, 0x18
/* 813A72C4 000756C4  48 16 B0 19 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 813A72C8 000756C8  7C 7F 1B 78 */	mr r31, r3
.L_813A72CC:
/* 813A72CC 000756CC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 813A72D0 000756D0  40 82 FF D0 */	bne .L_813A72A0
/* 813A72D4 000756D4  7F E3 FB 78 */	mr r3, r31
.L_813A72D8:
/* 813A72D8 000756D8  39 61 00 20 */	addi r11, r1, 0x20
/* 813A72DC 000756DC  48 25 22 39 */	bl _restgpr_29
/* 813A72E0 000756E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A72E4 000756E4  7C 08 03 A6 */	mtlr r0
/* 813A72E8 000756E8  38 21 00 20 */	addi r1, r1, 0x20
/* 813A72EC 000756EC  4E 80 00 20 */	blr
.endfn get_anmpane__Q33ipl5scene13AnmControllerFPCc

# .text:0x3EC | 0x813A72F0 | size: 0x88
# ipl::scene::AnmController::clear_anmpane(const char*)
.fn clear_anmpane__Q33ipl5scene13AnmControllerFPCc, global
/* 813A72F0 000756F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813A72F4 000756F4  7C 08 02 A6 */	mflr r0
/* 813A72F8 000756F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 813A72FC 000756FC  39 61 00 20 */	addi r11, r1, 0x20
/* 813A7300 00075700  48 25 21 C9 */	bl _savegpr_29
/* 813A7304 00075704  7C 7D 1B 78 */	mr r29, r3
/* 813A7308 00075708  7C 9E 23 78 */	mr r30, r4
/* 813A730C 0007570C  4B FF FF 65 */	bl get_anmpane__Q33ipl5scene13AnmControllerFPCc
/* 813A7310 00075710  80 DD 00 04 */	lwz r6, 0x4(r29)
/* 813A7314 00075714  7C 7F 1B 78 */	mr r31, r3
/* 813A7318 00075718  7F C4 F3 78 */	mr r4, r30
/* 813A731C 0007571C  38 A0 00 01 */	li r5, 0x1
/* 813A7320 00075720  80 66 00 14 */	lwz r3, 0x14(r6)
/* 813A7324 00075724  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7328 00075728  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A732C 0007572C  7D 89 03 A6 */	mtctr r12
/* 813A7330 00075730  4E 80 04 21 */	bctrl
/* 813A7334 00075734  7C 64 1B 78 */	mr r4, r3
/* 813A7338 00075738  80 7D 00 08 */	lwz r3, 0x8(r29)
/* 813A733C 0007573C  4B FC 3E DD */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813A7340 00075740  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 813A7344 00075744  2C 00 00 01 */	cmpwi r0, 0x1
/* 813A7348 00075748  41 80 00 10 */	blt .L_813A7358
/* 813A734C 0007574C  7F E3 FB 78 */	mr r3, r31
/* 813A7350 00075750  38 80 00 02 */	li r4, 0x2
/* 813A7354 00075754  4B FF FC 11 */	bl on_cmd_recv__Q33ipl5scene7AnmPaneFQ43ipl5scene7AnmPane11AnimCommand
.L_813A7358:
/* 813A7358 00075758  38 00 00 00 */	li r0, 0x0
/* 813A735C 0007575C  39 61 00 20 */	addi r11, r1, 0x20
/* 813A7360 00075760  90 1F 00 14 */	stw r0, 0x14(r31)
/* 813A7364 00075764  48 25 21 B1 */	bl _restgpr_29
/* 813A7368 00075768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813A736C 0007576C  7C 08 03 A6 */	mtlr r0
/* 813A7370 00075770  38 21 00 20 */	addi r1, r1, 0x20
/* 813A7374 00075774  4E 80 00 20 */	blr
.endfn clear_anmpane__Q33ipl5scene13AnmControllerFPCc

# .text:0x474 | 0x813A7378 | size: 0x88
# ipl::scene::AnmController::set_textbox(const char*, unsigned long)
.fn set_textbox__Q33ipl5scene13AnmControllerFPCcUl, global
/* 813A7378 00075778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A737C 0007577C  7C 08 02 A6 */	mflr r0
/* 813A7380 00075780  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7384 00075784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7388 00075788  93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A738C 0007578C  7C BE 2B 78 */	mr r30, r5
/* 813A7390 00075790  38 A0 00 01 */	li r5, 0x1
/* 813A7394 00075794  80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A7398 00075798  80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A739C 0007579C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A73A0 000757A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A73A4 000757A4  7D 89 03 A6 */	mtctr r12
/* 813A73A8 000757A8  4E 80 04 21 */	bctrl
/* 813A73AC 000757AC  4B F9 EA B9 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813A73B0 000757B0  3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813A73B4 000757B4  7C 7F 1B 78 */	mr r31, r3
/* 813A73B8 000757B8  38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813A73BC 000757BC  7F C4 F3 78 */	mr r4, r30
/* 813A73C0 000757C0  80 65 00 80 */	lwz r3, 0x80(r5)
/* 813A73C4 000757C4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 813A73C8 000757C8  4B F9 73 F5 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813A73CC 000757CC  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813A73D0 000757D0  7C 64 1B 78 */	mr r4, r3
/* 813A73D4 000757D4  7F E3 FB 78 */	mr r3, r31
/* 813A73D8 000757D8  38 A0 00 00 */	li r5, 0x0
/* 813A73DC 000757DC  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813A73E0 000757E0  7D 89 03 A6 */	mtctr r12
/* 813A73E4 000757E4  4E 80 04 21 */	bctrl
/* 813A73E8 000757E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A73EC 000757EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A73F0 000757F0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A73F4 000757F4  7C 08 03 A6 */	mtlr r0
/* 813A73F8 000757F8  38 21 00 10 */	addi r1, r1, 0x10
/* 813A73FC 000757FC  4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene13AnmControllerFPCcUl

# .text:0x4FC | 0x813A7400 | size: 0x60
# ipl::scene::AnmController::set_textbox(const char*, const wchar_t*)
.fn set_textbox__Q33ipl5scene13AnmControllerFPCcPCw, global
/* 813A7400 00075800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7404 00075804  7C 08 02 A6 */	mflr r0
/* 813A7408 00075808  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A740C 0007580C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7410 00075810  7C BF 2B 78 */	mr r31, r5
/* 813A7414 00075814  38 A0 00 01 */	li r5, 0x1
/* 813A7418 00075818  80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A741C 0007581C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A7420 00075820  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7424 00075824  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A7428 00075828  7D 89 03 A6 */	mtctr r12
/* 813A742C 0007582C  4E 80 04 21 */	bctrl
/* 813A7430 00075830  4B F9 EA 35 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813A7434 00075834  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7438 00075838  7F E4 FB 78 */	mr r4, r31
/* 813A743C 0007583C  38 A0 00 00 */	li r5, 0x0
/* 813A7440 00075840  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813A7444 00075844  7D 89 03 A6 */	mtctr r12
/* 813A7448 00075848  4E 80 04 21 */	bctrl
/* 813A744C 0007584C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A7450 00075850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A7454 00075854  7C 08 03 A6 */	mtlr r0
/* 813A7458 00075858  38 21 00 10 */	addi r1, r1, 0x10
/* 813A745C 0007585C  4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene13AnmControllerFPCcPCw

# .text:0x55C | 0x813A7460 | size: 0x74
# ipl::scene::AnmController::set_texture(const char*, const _GXTexObj&)
.fn set_texture__Q33ipl5scene13AnmControllerFPCcRC9_GXTexObj, global
/* 813A7460 00075860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7464 00075864  7C 08 02 A6 */	mflr r0
/* 813A7468 00075868  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A746C 0007586C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7470 00075870  7C BF 2B 78 */	mr r31, r5
/* 813A7474 00075874  38 A0 00 01 */	li r5, 0x1
/* 813A7478 00075878  93 C1 00 08 */	stw r30, 0x8(r1)
/* 813A747C 0007587C  7C 9E 23 78 */	mr r30, r4
/* 813A7480 00075880  80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A7484 00075884  80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A7488 00075888  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A748C 0007588C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A7490 00075890  7D 89 03 A6 */	mtctr r12
/* 813A7494 00075894  4E 80 04 21 */	bctrl
/* 813A7498 00075898  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A749C 0007589C  7F C4 F3 78 */	mr r4, r30
/* 813A74A0 000758A0  38 A0 00 01 */	li r5, 0x1
/* 813A74A4 000758A4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 813A74A8 000758A8  7D 89 03 A6 */	mtctr r12
/* 813A74AC 000758AC  4E 80 04 21 */	bctrl
/* 813A74B0 000758B0  7F E5 FB 78 */	mr r5, r31
/* 813A74B4 000758B4  38 80 00 00 */	li r4, 0x0
/* 813A74B8 000758B8  48 18 09 65 */	bl fn_81527E1C
/* 813A74BC 000758BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A74C0 000758C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A74C4 000758C4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813A74C8 000758C8  7C 08 03 A6 */	mtlr r0
/* 813A74CC 000758CC  38 21 00 10 */	addi r1, r1, 0x10
/* 813A74D0 000758D0  4E 80 00 20 */	blr
.endfn set_texture__Q33ipl5scene13AnmControllerFPCcRC9_GXTexObj

# .text:0x5D0 | 0x813A74D4 | size: 0x54
# ipl::scene::AnmController::set_visible(const char*, bool)
.fn set_visible__Q33ipl5scene13AnmControllerFPCcb, global
/* 813A74D4 000758D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A74D8 000758D8  7C 08 02 A6 */	mflr r0
/* 813A74DC 000758DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A74E0 000758E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A74E4 000758E4  7C BF 2B 78 */	mr r31, r5
/* 813A74E8 000758E8  38 A0 00 01 */	li r5, 0x1
/* 813A74EC 000758EC  80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A74F0 000758F0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A74F4 000758F4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A74F8 000758F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A74FC 000758FC  7D 89 03 A6 */	mtctr r12
/* 813A7500 00075900  4E 80 04 21 */	bctrl
/* 813A7504 00075904  88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813A7508 00075908  54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813A750C 0007590C  7C 00 FB 78 */	or r0, r0, r31
/* 813A7510 00075910  98 03 00 CF */	stb r0, 0xcf(r3)
/* 813A7514 00075914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A7518 00075918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A751C 0007591C  7C 08 03 A6 */	mtlr r0
/* 813A7520 00075920  38 21 00 10 */	addi r1, r1, 0x10
/* 813A7524 00075924  4E 80 00 20 */	blr
.endfn set_visible__Q33ipl5scene13AnmControllerFPCcb

# .text:0x624 | 0x813A7528 | size: 0x40
# ipl::scene::AnmController::get_visible(const char*)
.fn get_visible__Q33ipl5scene13AnmControllerFPCc, global
/* 813A7528 00075928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A752C 0007592C  7C 08 02 A6 */	mflr r0
/* 813A7530 00075930  38 A0 00 01 */	li r5, 0x1
/* 813A7534 00075934  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7538 00075938  80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A753C 0007593C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A7540 00075940  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A7544 00075944  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A7548 00075948  7D 89 03 A6 */	mtctr r12
/* 813A754C 0007594C  4E 80 04 21 */	bctrl
/* 813A7550 00075950  88 03 00 CF */	lbz r0, 0xcf(r3)
/* 813A7554 00075954  54 03 07 FE */	clrlwi r3, r0, 31
/* 813A7558 00075958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A755C 0007595C  7C 08 03 A6 */	mtlr r0
/* 813A7560 00075960  38 21 00 10 */	addi r1, r1, 0x10
/* 813A7564 00075964  4E 80 00 20 */	blr
.endfn get_visible__Q33ipl5scene13AnmControllerFPCc

# .text:0x664 | 0x813A7568 | size: 0x5C
# ipl::scene::AnmController::set_translate(const char*, const nw4r::math::VEC3&)
.fn set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3, global
/* 813A7568 00075968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A756C 0007596C  7C 08 02 A6 */	mflr r0
/* 813A7570 00075970  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7574 00075974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813A7578 00075978  7C BF 2B 78 */	mr r31, r5
/* 813A757C 0007597C  38 A0 00 01 */	li r5, 0x1
/* 813A7580 00075980  80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A7584 00075984  80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A7588 00075988  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A758C 0007598C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A7590 00075990  7D 89 03 A6 */	mtctr r12
/* 813A7594 00075994  4E 80 04 21 */	bctrl
/* 813A7598 00075998  C0 1F 00 00 */	lfs f0, 0x0(r31)
/* 813A759C 0007599C  C0 3F 00 04 */	lfs f1, 0x4(r31)
/* 813A75A0 000759A0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 813A75A4 000759A4  C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 813A75A8 000759A8  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 813A75AC 000759AC  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 813A75B0 000759B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813A75B4 000759B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A75B8 000759B8  7C 08 03 A6 */	mtlr r0
/* 813A75BC 000759BC  38 21 00 10 */	addi r1, r1, 0x10
/* 813A75C0 000759C0  4E 80 00 20 */	blr
.endfn set_translate__Q33ipl5scene13AnmControllerFPCcRCQ34nw4r4math4VEC3

# .text:0x6C0 | 0x813A75C4 | size: 0x3C
# ipl::scene::AnmController::get_translate(const char*)
.fn get_translate__Q33ipl5scene13AnmControllerFPCc, global
/* 813A75C4 000759C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A75C8 000759C8  7C 08 02 A6 */	mflr r0
/* 813A75CC 000759CC  38 A0 00 01 */	li r5, 0x1
/* 813A75D0 000759D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A75D4 000759D4  80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A75D8 000759D8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A75DC 000759DC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A75E0 000759E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A75E4 000759E4  7D 89 03 A6 */	mtctr r12
/* 813A75E8 000759E8  4E 80 04 21 */	bctrl
/* 813A75EC 000759EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A75F0 000759F0  38 63 00 2C */	addi r3, r3, 0x2c
/* 813A75F4 000759F4  7C 08 03 A6 */	mtlr r0
/* 813A75F8 000759F8  38 21 00 10 */	addi r1, r1, 0x10
/* 813A75FC 000759FC  4E 80 00 20 */	blr
.endfn get_translate__Q33ipl5scene13AnmControllerFPCc

# .text:0x6FC | 0x813A7600 | size: 0x3C
# ipl::scene::AnmController::get_scale(const char*)
.fn get_scale__Q33ipl5scene13AnmControllerFPCc, global
/* 813A7600 00075A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813A7604 00075A04  7C 08 02 A6 */	mflr r0
/* 813A7608 00075A08  38 A0 00 01 */	li r5, 0x1
/* 813A760C 00075A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 813A7610 00075A10  80 63 00 04 */	lwz r3, 0x4(r3)
/* 813A7614 00075A14  80 63 00 14 */	lwz r3, 0x14(r3)
/* 813A7618 00075A18  81 83 00 00 */	lwz r12, 0x0(r3)
/* 813A761C 00075A1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813A7620 00075A20  7D 89 03 A6 */	mtctr r12
/* 813A7624 00075A24  4E 80 04 21 */	bctrl
/* 813A7628 00075A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813A762C 00075A2C  38 63 00 44 */	addi r3, r3, 0x44
/* 813A7630 00075A30  7C 08 03 A6 */	mtlr r0
/* 813A7634 00075A34  38 21 00 10 */	addi r1, r1, 0x10
/* 813A7638 00075A38  4E 80 00 20 */	blr
.endfn get_scale__Q33ipl5scene13AnmControllerFPCc
