#include "system/iplErrorHandler.h"

#include <revolution/sc.h>

#include <cstring>

#include "system/rvl_dec.h"
#include "system/iplSystem.h"

#include "utility/iplGraphics.h"

/** These declarations are auto generated **/

extern u8 fatalDlg_ash[];

extern u8 ipl_error_jpn_bmg[];
extern u8 ipl_error_eng_bmg[];
extern u8 ipl_error_ger_bmg[];
extern u8 ipl_error_fra_bmg[];
extern u8 ipl_error_spa_bmg[];
extern u8 ipl_error_ita_bmg[];
extern u8 ipl_error_ned_bmg[];
extern u8 ipl_error_chn_bmg[];
extern u8 ipl_error_kor_bmg[];

extern void NANDLoggingAddMessageAsync(int type, const char* format, ...); // here for now

namespace ipl {
    /**
     * @note Address: 0x81356458 (4.3U)
     * @note Size: 0xBC
     */
    ErrorHandler::ErrorHandler(EGG::Heap* pHeap)
    : mReady(FALSE), mType(IPL_ERROR_GENERIC), mMessageID(0), mpArcData(NULL) {

        // Decompress the archive file.
        mArcSize = Rvl_decode_ash_size(fatalDlg_ash);
        mpArcData = new(pHeap, DOLPHIN_ALIGNMENT) u8[mArcSize];

        Rvl_decode(mpArcData, fatalDlg_ash);

        // Create the layout from archive.
        mpLayout = new(pHeap, 4) layout::Object(pHeap, mpArcData, "arc", "my_Fatal.brlyt");
    }

    /**
     * @note Address: 0x81356514 (4.3U)
     * @note Size: 0x98
     */
    void ErrorHandler::set(Type type, u32 msgId, const char* arg1, int arg2, int arg3) {
        OSThread* curThread;

        // Type and message ID.
        mType = type;
        mMessageID = msgId;

        // Debug related?
        unk_0x0C = arg2;
        unk_0x10 = arg3;
        if (arg1) {
            strncpy(unk_0x14, arg1, sizeof(unk_0x14));
            unk_0x14[sizeof(unk_0x14) - 1] = 0;
        }
        else {
            memset(unk_0x14, 0, sizeof(unk_0x14));
        }

        curThread = OSGetCurrentThread();
        if (curThread == System::getUnkStruct0()->getThread()) {
            check();
        }
        else {
            OSCancelThread(curThread);
        }
    }

    /**
     * @note Address: 0x813565AC (4.3U)
     * @note Size: 0x14C
     */
    void ErrorHandler::check() {
        if (mType != 0) {
            message::Message pErrorMsg = message::Message();
            u8* pMsg;

            // Get the message data by language.
            switch(System::getLanguage()) {
                case SC_LANG_FRENCH: {
                    pMsg = ipl_error_fra_bmg;
                    break;
                }
                case SC_LANG_GERMAN: {
                    pMsg = ipl_error_ger_bmg;
                    break;
                }
                case SC_LANG_ITALIAN: {
                    pMsg = ipl_error_ita_bmg;
                    break;
                }
                case SC_LANG_JAPANESE: {
                    pMsg = ipl_error_jpn_bmg;
                    break;
                }
                case SC_LANG_DUTCH: {
                    pMsg = ipl_error_ned_bmg;
                    break;
                }
                case SC_LANG_SPANISH: {
                    pMsg = ipl_error_spa_bmg;
                    break;
                }
                case SC_LANG_SIMPLE_CHINESE: {
                    pMsg = ipl_error_chn_bmg;
                    break;
                }
                case SC_LANG_KOREAN: {
                    pMsg = ipl_error_kor_bmg;
                    break;
                }
                default: {
                    pMsg = ipl_error_eng_bmg;
                    break;
                }
            }
            pErrorMsg.setResource(pMsg);

            // Get the text box pane from the layout.
            nw4r::lyt::TextBox* pTextBox = (nw4r::lyt::TextBox*)mpLayout->GetRootPane()->FindPaneByName("TextBox_00");
            pTextBox->SetString(pErrorMsg.getMessage(mMessageID));

            // Fade out to display error screen.
            System::getArg()->getFader()->fadeOut();
            System::err_run();
        }
    }

    /**
     * @note Address: 0x813566F8 (4.3U)
     * @note Size: 0x30
     */
    void ErrorHandler::log(const char* type, int code, const char* file, int line) {
        NANDLoggingAddMessageAsync(NULL, "%s error. [%d] %s line: %d", type, code, file, line);
    }

    /**
     * @note Address: 0x81356728 (4.3U)
     * @note Size: 0x90
     */
    void ErrorHandler::calc() {
        if (mReady == FALSE && System::getArg()->getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
            System::getArg()->getFader()->fadeIn();
            mReady = TRUE;
        }

        if (mReady == TRUE) {
            mpLayout->calc();
        }
    }

    /**
     * @note Address: 0x813567B8 (4.3U)
     * @note Size: 0x44
     */
    void ErrorHandler::draw() {
        if (mReady == TRUE) {
            utility::Graphics::setDefaultOrtho(0);
            mpLayout->draw();
        }
    }
}


