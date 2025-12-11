#include "system/iplErrorHandler.h"

#include <revolution/nand.h>
#include <revolution/sc.h>
#include <revolution/gx.h>

#include <cstring>

#include "system/rvl_dec.h"
#include "iplSystem.h"

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
    ErrorHandler::ErrorHandler(EGG::Heap* heap) :
    mbReady(FALSE),
    mType(NONE),
    mMessageID(0),
    mpArcData(NULL) {
        // Decompress the archive file.
        mArcSize = Rvl_decode_ash_size(fatalDlg_ash);
        mpArcData = new(heap, DEFAULT_ALIGN) u8[mArcSize];

        Rvl_decode(mpArcData, fatalDlg_ash);

        // Create the layout from archive.
        mpLayout = new(heap, 4) layout::Object(heap, mpArcData, "arc", "my_Fatal.brlyt");
    }

    void ErrorHandler::set(Type type, u32 msgId, const char* arg1, int arg2, int arg3) {
        OSThread* curThread;

        // Type and message ID.
        mType = type;
        mMessageID = msgId;

        // Debug related? (seems to be incomplete; unused)
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
        if (curThread == System::getMainThread()->getMessageQueue()->queueSend.tail) {
            check();
        }
        else {
            OSCancelThread(curThread);
        }
    }

    void ErrorHandler::check() {
        if (mType != NONE) {
            message::Message ErrorMsg = message::Message();
            u8* pMsg;

            // Get the message data by language.
            switch (System::getLanguage()) {
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
            nw4r::lyt::TextBox* pTextBox = (nw4r::lyt::TextBox*)mpLayout->FindPaneByName("TextBox_00");
            pTextBox->SetString(ErrorMsg.getMessage(mMessageID));

            // Prepare for error screen.
            System::getFader()->fadeOut();
            System::err_run();
        }
    }

    void ErrorHandler::log(const char* type, int result, const char* file, int line) {
    #ifdef NAND_LOG_TO_OSREPORT
        OSReport("ErrorHandler::log(%s error. [%d] %s line: %d)\n", type, result, file, line);
    #endif
        NANDLoggingAddMessageAsync(NULL, "%s error. [%d] %s line: %d", type, result, file, line);
    }

    void ErrorHandler::calc() {
        if (mbReady == FALSE && System::getFader()->getStatus() == EGG::Fader::PREPARE_IN) {
            System::getFader()->fadeIn();
            mbReady = TRUE;
        }

        if (mbReady == TRUE) {
            mpLayout->calc();
        }
    }

    void ErrorHandler::draw() {
        if (mbReady == TRUE) {
            layout::Object::setDefaultCamera();
            mpLayout->draw();
        }
    }
}
