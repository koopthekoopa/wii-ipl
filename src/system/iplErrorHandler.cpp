#include "system/iplErrorHandler.h"

#include <revolution/nand.h>
#include <revolution/sc.h>
#include <revolution/gx.h>

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

namespace ipl {
    /**
     * @note Address: 0x81356458 (4.3U)
     * @note Size: 0xBC
     */
    ErrorHandler::ErrorHandler(EGG::Heap* pHeap) :
    mbReady(FALSE),
    mType(NONE),
    mMessageID(MESG_ERR_GENERIC),
    mpArcData(NULL) {
        // Decompress the archive file.
        mArcSize = Rvl_decode_ash_size(fatalDlg_ash);
        mpArcData = new(pHeap, BUFFER_HEAP) u8[mArcSize];

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

        // Debug related? (never used when calling this function and seems to be incomplete)
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
        if (curThread == System::getUnkThread()->getMessageQueue()->queueSend.tail) {
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
        if (mType != NONE) {
            message::Message ErrorMsg = message::Message();
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
                case SC_LANG_SIMP_CHINESE: {
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
            ErrorMsg.setResource(pMsg);

            // Set the on-screen text.
            nw4r::lyt::TextBox* pTextBox = (nw4r::lyt::TextBox*)mpLayout->GetRootPane()->FindPaneByName("TextBox_00");
            pTextBox->SetString(ErrorMsg.getMessage(mMessageID));

            // Prepare for error screen.
            System::getFader()->fadeOut();
            System::err_run();
        }
    }

    /**
     * @note Address: 0x813566F8 (4.3U)
     * @note Size: 0x30
     */
    void ErrorHandler::log(const char* type, int result, const char* file, int line) {
        NANDLoggingAddMessageAsync(NULL, "%s error. [%d] %s line: %d", type, result, file, line);
    }

    /**
     * @note Address: 0x81356728 (4.3U)
     * @note Size: 0x90
     */
    void ErrorHandler::calc() {
        if (mbReady == FALSE && System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
            System::getFader()->fadeIn();
            mbReady = TRUE;
        }

        if (mbReady == TRUE) {
            mpLayout->calc();
        }
    }

    /**
     * @note Address: 0x813567B8 (4.3U)
     * @note Size: 0x44
     */
    void ErrorHandler::draw() {
        if (mbReady == TRUE) {
            utility::Graphics::setDefaultOrtho();
            mpLayout->draw();
        }
    }
}


