#ifndef HOME_BUTTON_MINI_LIB_RES_H
#define HOME_BUTTON_MINI_LIB_RES_H

namespace homebutton {
namespace res {

/******************************************************************************
 *
 * Cursor
 *
 ******************************************************************************/
#define HBM_CURSOR_LYT_NAME_LIST                                               \
    X(P1_Def)                                                                  \
    X(P2_Def)                                                                  \
    X(P3_Def)                                                                  \
    X(P4_Def)

#define X(Y) eCursorLyt_##Y,
enum eCursorLyt { HBM_CURSOR_LYT_NAME_LIST eCursorLyt_Max };
#undef X

/******************************************************************************
 *
 * Panes
 *
 ******************************************************************************/
#define HBM_BTN_PANE_LIST                                                      \
    X(B_btnL_00)                                                               \
    X(B_btnL_01)                                                               \
    X(B_btnL_10)                                                               \
    X(B_btnL_11)

#define HBM_TXT_PANE_LIST                                                      \
    X(T_btnL_00)                                                               \
    X(T_btnL_01)                                                               \
    X(T_btnL_10)                                                               \
    X(T_btnL_11)

#define HBM_GROUP_LIST                                                         \
    X(btnL_00_inOut)                                                           \
    X(btnL_01_inOut)                                                           \
    X(btnL_10_inOut)                                                           \
    X(btnL_11_inOut)                                                           \
    X(btnL_00_psh)                                                             \
    X(btnL_01_psh)                                                             \
    X(btnL_10_psh)                                                             \
    X(btnL_11_psh)

#define HBM_ANIM_NAME_LIST                                                     \
    X(cntBtn_in)                                                               \
    X(cntBtn_psh)                                                              \
    X(cntBtn_out)

#define X(Y) eBtn_##Y,
enum eBtn { HBM_BTN_PANE_LIST eBtn_Max };
#undef X

#define X(Y) eTxt_##Y,
enum eTxt { HBM_TXT_PANE_LIST eTxt_Max };
#undef X

#define X(Y) eGroup_##Y,
enum eGroup { HBM_GROUP_LIST eGroup_Max };
#undef X

#define X(Y) eAnim_##Y,
enum eAnim { HBM_ANIM_NAME_LIST eAnim_Max };
#undef X

/******************************************************************************
 *
 * Pairing
 *
 ******************************************************************************/
#define HBM_PAIR_ANM_NAME_LIST                                                 \
    X(ltrIcn_on)                                                               \
    X(optn_bar_psh)                                                            \
    X(close_bar_psh)                                                           \
    X(hmMenu_bar_in)                                                           \
    X(hmMenu_bar_psh)                                                          \
    X(link_msg_in)                                                             \
    X(link_msg_out)                                                            \
    X(cmn_msg_in)                                                              \
    X(cmn_msg_out)                                                             \
    X(cntrl_up)                                                                \
    X(cntrl_wndw_opn)                                                          \
    X(cntrl_dwn)                                                               \
    X(hmMenu_bar_out)                                                          \
    X(cmn_msg_rtrn)                                                            \
    X(12btn_on)

#define X(Y) ePairAnm_##Y,
enum ePairAnm { HBM_PAIR_ANM_NAME_LIST ePairAnm_Max };
#undef X

/******************************************************************************
 * Group panes
 ******************************************************************************/
#define HBM_GROUP_PANE_NAME_LIST                                               \
    X(hmMenu_strt)                                                             \
    X(hmMenu_fnsh)                                                             \
    X(hmMenuBck_strt)                                                          \
    X(hmMenuBck_fnsh)                                                          \
    X(optn_bar_in)                                                             \
    X(optn_bar_out)                                                            \
    X(optnBtn_00_inOut)                                                        \
    X(optnBtn_01_inOut)                                                        \
    X(optnBtn_10_inOut)                                                        \
    X(optnBtn_11_inOut)                                                        \
    X(optnBtn_20_inOut)                                                        \
    X(optnBtn_00_psh)                                                          \
    X(optnBtn_01_psh)                                                          \
    X(optnBtn_10_psh)                                                          \
    X(optnBtn_11_psh)                                                          \
    X(optnBtn_20_psh)                                                          \
    X(optnBtn_10_cntrl)                                                        \
    X(msgBtn_00_inOut)                                                         \
    X(msgBtn_01_inOut)                                                         \
    X(msgBtn_00_psh)                                                           \
    X(msgBtn_01_psh)                                                           \
    X(vol_00)                                                                  \
    X(vol_01)                                                                  \
    X(vol_02)                                                                  \
    X(vol_03)                                                                  \
    X(vol_04)                                                                  \
    X(vol_05)                                                                  \
    X(vol_06)                                                                  \
    X(vol_07)                                                                  \
    X(vol_08)                                                                  \
    X(vol_09)                                                                  \
    X(plyr_00)                                                                 \
    X(plyr_01)                                                                 \
    X(plyr_02)                                                                 \
    X(plyr_03)

#define HBM_GROUP_ANIM_NAME_LIST                                               \
    X(hmMenu_strt)                                                             \
    X(hmMenu_fnsh)                                                             \
    X(optn_bar_in)                                                             \
    X(optn_bar_out)                                                            \
    X(optn_btn_in)                                                             \
    X(optn_btn_psh)                                                            \
    X(vb_btn_wht_psh)                                                          \
    X(optn_btn_out)                                                            \
    X(vb_btn_ylw_psh)                                                          \
    X(sound_gry)                                                               \
    X(sound_ylw)                                                               \
    X(cmn_msg_btn_in)                                                          \
    X(cmn_msg_btn_out)                                                         \
    X(cmn_msg_btn_psh)                                                         \
    X(vb_btn_ylw_ylw)                                                          \
    X(btry_wink)                                                               \
    X(btry_gry)                                                                \
    X(btry_wht)                                                                \
    X(btry_wink_gry)                                                           \
    X(close_bar_in)                                                            \
    X(close_bar_out)                                                           \
    X(btry_red)

#define X(Y) eGrPane_##Y,
enum eGrPane { HBM_GROUP_PANE_NAME_LIST eGrPane_Max };
#undef X

#define X(Y) eGrAnim_##Y,
enum eGrAnim { HBM_GROUP_ANIM_NAME_LIST eGrAnim_Max };
#undef X

/******************************************************************************
 *
 * Function/touch panes
 *
 ******************************************************************************/
#define HBM_FUNC_PANE_NAME_LIST                                                \
    X(let_icn_00)                                                              \
    X(N_plyr_00)                                                               \
    X(N_plyr_01)                                                               \
    X(N_plyr_02)                                                               \
    X(N_plyr_03)

#define HBM_FUNC_TOUCH_PANE_NAME_LIST                                          \
    X(B_btn_00)                                                                \
    X(B_bar_10)                                                                \
    X(B_optnBtn_00)                                                            \
    X(B_optnBtn_01)                                                            \
    X(B_optnBtn_10)                                                            \
    X(B_optnBtn_11)                                                            \
    X(B_optnBtn_20)                                                            \
    X(B_BtnA)                                                                  \
    X(B_BtnB)                                                                  \
    X(cntrl_00)

#define HBM_FUNC_TEXT_PANE_NAME_LIST                                           \
    X(T_msg_00)                                                                \
    X(T_msg_01)                                                                \
    X(T_Dialog)

#define X(Y) eFuncPane_##Y,
enum eFuncPane { HBM_FUNC_PANE_NAME_LIST eFuncPane_Max };
#undef X

#define X(Y) eFuncTouchPane_##Y,
enum eFuncTouchPane { HBM_FUNC_TOUCH_PANE_NAME_LIST eFuncTouchPane_Max };
#undef X

#define X(Y) eFuncTextPane_##Y,
enum eFuncTextPane { HBM_FUNC_TEXT_PANE_NAME_LIST eFuncTextPane_Max };
#undef X

/******************************************************************************
 *
 * Battery
 *
 ******************************************************************************/
#define HBM_BATTERY_PANE_NAME_LIST(Y)                                          \
    X(btryPwr_##Y##0)                                                          \
    X(btryPwr_##Y##1)                                                          \
    X(btryPwr_##Y##2)                                                          \
    X(btryPwr_##Y##3)

#define X(Y) eBatteryPane_##Y,
enum eBatteryPane { HBM_BATTERY_PANE_NAME_LIST() eBatteryPane_Max };
#undef X

/******************************************************************************
 *
 * Animation controller
 *
 ******************************************************************************/
#define HBM_ANIM_TABLE                                                         \
    X(btnL_00_inOut, cntBtn_in)                                                \
    X(btnL_00_inOut, cntBtn_out)                                               \
    X(btnL_00_psh, cntBtn_psh)                                                 \
    X(btnL_01_inOut, cntBtn_in)                                                \
    X(btnL_01_inOut, cntBtn_out)                                               \
    X(btnL_01_psh, cntBtn_psh)                                                 \
    X(btnL_10_inOut, cntBtn_in)                                                \
    X(btnL_10_inOut, cntBtn_out)                                               \
    X(btnL_10_psh, cntBtn_psh)                                                 \
    X(btnL_11_inOut, cntBtn_in)                                                \
    X(btnL_11_inOut, cntBtn_out)                                               \
    X(btnL_11_psh, cntBtn_psh)

#define HBM_GROUP_ANIM_TABLE                                                   \
    X(hmMenu_strt, hmMenu_strt)                                                \
    X(hmMenu_fnsh, hmMenu_fnsh)                                                \
    X(hmMenuBck_strt, hmMenu_strt)                                             \
    X(hmMenuBck_fnsh, hmMenu_fnsh)                                             \
    X(optn_bar_in, optn_bar_in)                                                \
    X(optn_bar_in, close_bar_in)                                               \
    X(optn_bar_out, optn_bar_out)                                              \
    X(optn_bar_out, close_bar_out)                                             \
    X(optnBtn_00_inOut, optn_btn_in)                                           \
    X(optnBtn_00_inOut, optn_btn_out)                                          \
    X(optnBtn_01_inOut, optn_btn_in)                                           \
    X(optnBtn_01_inOut, optn_btn_out)                                          \
    X(optnBtn_10_inOut, optn_btn_in)                                           \
    X(optnBtn_10_inOut, optn_btn_out)                                          \
    X(optnBtn_11_inOut, optn_btn_in)                                           \
    X(optnBtn_11_inOut, optn_btn_out)                                          \
    X(optnBtn_20_inOut, optn_btn_in)                                           \
    X(optnBtn_20_inOut, optn_btn_out)                                          \
    X(optnBtn_00_psh, optn_btn_psh)                                            \
    X(optnBtn_01_psh, optn_btn_psh)                                            \
    X(optnBtn_10_psh, vb_btn_wht_psh)                                          \
    X(optnBtn_10_psh, vb_btn_ylw_psh)                                          \
    X(optnBtn_11_psh, vb_btn_ylw_ylw)                                          \
    X(optnBtn_11_psh, vb_btn_wht_psh)                                          \
    X(optnBtn_11_psh, vb_btn_ylw_psh)                                          \
    X(optnBtn_20_psh, optn_btn_psh)                                            \
    X(optnBtn_10_cntrl, vb_btn_wht_psh)                                        \
    X(optnBtn_10_cntrl, vb_btn_ylw_ylw)                                        \
    X(msgBtn_00_inOut, cmn_msg_btn_in)                                         \
    X(msgBtn_00_inOut, cmn_msg_btn_out)                                        \
    X(msgBtn_01_inOut, cmn_msg_btn_in)                                         \
    X(msgBtn_01_inOut, cmn_msg_btn_out)                                        \
    X(msgBtn_00_psh, cmn_msg_btn_psh)                                          \
    X(msgBtn_01_psh, cmn_msg_btn_psh)                                          \
    X(vol_00, sound_gry)                                                       \
    X(vol_00, sound_ylw)                                                       \
    X(vol_01, sound_gry)                                                       \
    X(vol_01, sound_ylw)                                                       \
    X(vol_02, sound_gry)                                                       \
    X(vol_02, sound_ylw)                                                       \
    X(vol_03, sound_gry)                                                       \
    X(vol_03, sound_ylw)                                                       \
    X(vol_04, sound_gry)                                                       \
    X(vol_04, sound_ylw)                                                       \
    X(vol_05, sound_gry)                                                       \
    X(vol_05, sound_ylw)                                                       \
    X(vol_06, sound_gry)                                                       \
    X(vol_06, sound_ylw)                                                       \
    X(vol_07, sound_gry)                                                       \
    X(vol_07, sound_ylw)                                                       \
    X(vol_08, sound_gry)                                                       \
    X(vol_08, sound_ylw)                                                       \
    X(vol_09, sound_gry)                                                       \
    X(vol_09, sound_ylw)                                                       \
    X(plyr_00, btry_wink)                                                      \
    X(plyr_00, btry_gry)                                                       \
    X(plyr_00, btry_wht)                                                       \
    X(plyr_00, btry_wink_gry)                                                  \
    X(plyr_00, btry_red)                                                       \
    X(plyr_01, btry_wink)                                                      \
    X(plyr_01, btry_gry)                                                       \
    X(plyr_01, btry_wht)                                                       \
    X(plyr_01, btry_wink_gry)                                                  \
    X(plyr_01, btry_red)                                                       \
    X(plyr_02, btry_wink)                                                      \
    X(plyr_02, btry_gry)                                                       \
    X(plyr_02, btry_wht)                                                       \
    X(plyr_02, btry_wink_gry)                                                  \
    X(plyr_02, btry_red)                                                       \
    X(plyr_03, btry_wink)                                                      \
    X(plyr_03, btry_gry)                                                       \
    X(plyr_03, btry_wht)                                                       \
    X(plyr_03, btry_wink_gry)                                                  \
    X(plyr_03, btry_red)

#define X(Y, Z) eAnimator_##Y##__##Z,
enum eAnimator {
    HBM_ANIM_TABLE eAnimator_Max //
};
#undef X

#define X(Y, Z) eGrAnimator_##Y##__##Z,
enum eGrAnimator {
    HBM_GROUP_ANIM_TABLE eGrAnimator_Max //
};
#undef X

} // namespace res
} // namespace homebutton

#endif
