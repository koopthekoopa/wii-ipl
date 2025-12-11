#ifndef IPL_SCENE_LETTER_WRITER_H
#define IPL_SCENE_LETTER_WRITER_H

#include "scene/textWriter/iplTextWriter.h"

namespace ipl {
    namespace scene {
        class Board;
        class LetterWriter : public TextWriter {
            public:
                enum {
                    MAIL_ADDRESS_SEL = textinput::extend::letter::InputForm::T_MailAddressSel,
                    ADDRESS = textinput::extend::letter::InputForm::T_Address,
                    PICTURE = textinput::extend::letter::InputForm::T_Picture,
                    REPLY = textinput::extend::letter::InputForm::T_Reply,
                };

                LetterWriter(EGG::Heap* heap, int type);
                ~LetterWriter();

                virtual void                    create();
                virtual void                    destroy();

                virtual void                    initCalcNormal();
                virtual void                    initCalcFadeout();

                virtual void                    calcCommon() {}

                virtual SceneCommand            calcFadein();
                virtual SceneCommand            calcNormal();
                virtual SceneCommand            calcFadeout();

                virtual void                    onEventDerived(u32 compId, u32 event, const controller::Interface* con);

                virtual void                    onSend();
                virtual int                     sendMessageByNWC24(NWC24UserId userId, const wchar_t* wcString);

                virtual void                    setFriendInfo(const NWC24FriendInfo& info);
                virtual void                    setPhoto(const GXTexObj& texObj);

                virtual int                     sendToWii(NWC24UserId userId, const wchar_t* wcString);
                virtual int                     sendToPC(NWC24UserId userId, const wchar_t* wcString);

                virtual wchar_t*                makeHeaderCaption(const wchar_t* headerCaption);

                virtual BOOL                    getFriendInfo();

                textinput::MemoManager*         getLetterManager(); /* i just thought it would be nice idk */
                textinput::LetterInputForm*     getLetterInputForm();

                Board*                          getBoard();

            private:
                enum {
                    LETTER_STATE_NORMAL = 0,
                    LETTER_STATE_DISABLE_UI,
                    LETTER_STATE_ENABLE_UI,
                    LETTER_STATE_SEND,
                    LETTER_STATE_EXIT_ON_ERROR,
                };

                NWC24FriendInfo                             mFriendInfo;            // 0xA0
                bool                                        mbToFriend;             // 0x1E0

                int                                         mLetterState;           // 0x1E4

                textinput::extend::letter::InputForm::Type  mLetterType;            // 0x1E8

                u8*                                         mpTextSubjectWork;      // 0x1EC
                static const int                            mTextSubjectWorkSize = 0x2000;

                textinput::tistring::StringBase*            mpCaptionString;        // 0x1F0
                EGG::Allocator*                             mpCaptionAllocator;     // 0x1F4

                u32                                         mNwc24ErrCountdown2;    // 0x1F8

                u8                                          unused_0x1FC[4];
        };
    }
}

#endif // IPL_SCENE_LETTER_WRITER_H
