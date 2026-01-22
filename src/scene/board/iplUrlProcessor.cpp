#include "scene/board/iplUrlProcessor.h"

#include <stddef.h>

#include "iplMath.h"
#include "iplSystem.h"

#include "utility/iplCharacterCode.h"

namespace ipl {
    namespace scene {
        UrlProcessor::UrlProcessor() :
        nw4r::ut::WideTagProcessor() {
            nw4r::ut::List_Init(&mUrlCollisions, offsetof(url_collision, mLinkList));
            init();
        }

        void UrlProcessor::init() {
            unk_0x52 = 0;
            unk_0x51 = 0;
            unk_0x50 = 0;
            unk_0x53 = 1;

            unk_0x40 = 0.0f;
            unk_0x44 = 0.0f;

            unk_0x48 = 0;
            unk_0x4C = -1;

            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                mConData[i].valid = false;
                mConData[i].pos.x = 0.0f;
                mConData[i].pos.y = 0.0f;
            }

            destroy();
        }

        void UrlProcessor::update() {
            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                controller::Interface* con = System::getController(i);

                mConData[i].valid = con != NULL && con->isValidDpd();

                if (mConData[i].valid) {
                    mConData[i].pos = con->getDpdProjectionPos();
                }
                else {
                    mConData[i].pos.x = 0.0f;
                    mConData[i].pos.y = 0.0f;
                }
            }
        }

        void UrlProcessor::destroy() {
            url_collision* col;

            while (col = (url_collision*)nw4r::ut::List_GetNext(&mUrlCollisions, NULL), col != NULL) {
                nw4r::ut::List_Remove(&mUrlCollisions, col);
                delete col;
            }
        }

        void UrlProcessor::clear_prev_drawing() {
            unk_0x48 = 0;
            unk_0x52 = 0;
            unk_0x51 = 0;
        }

        nw4r::ut::Operation UrlProcessor::Process(u16 code, nw4r::ut::PrintContext<wchar_t>* context) {
              if (code == (u16)0x1A || code == (u16)'\n') {
                if (unk_0x50 == 0) {
                    make_collision(context, code);
                }
                else if (code == 0x1A) {
                    parse(context);
                }
            }
            return nw4r::ut::WideTagProcessor::Process(code, context);
        }

        void UrlProcessor::make_collision(nw4r::ut::PrintContext<wchar_t>* context, u16 code) {
            if (code == 0x1A) {
                if (unk_0x51 == 0) {
                    url_collision* url_col = new(System::getMem2App(), 4) url_collision();
                    line_collision* line_col = new(System::getMem2App(), 4) line_collision();

                    url_col->unk_0x00 = unk_0x48;
                    url_col->unk_0x04 = (wchar_t*)context->str;

                    line_col->unk_0x00 = context->writer->GetCursorX();
                    nw4r::ut::List_Append(&url_col->mLineCollisions, line_col);
                    nw4r::ut::List_Append(&mUrlCollisions, url_col);

                    unk_0x51 = 1;
                }
                else {
                    url_collision* url_col = (url_collision*)nw4r::ut::List_GetPrev(&mUrlCollisions, NULL);
                    line_collision* line_col = (line_collision*)nw4r::ut::List_GetPrev(&url_col->mLineCollisions, NULL);

                    line_col->unk_0x04 = context->writer->GetCursorX();
                    line_col->unk_0x08 = context->writer->GetCursorY();

                    url_col->unk_0x08 = (wchar_t*)context->str;

                    unk_0x51 = 0;
                    unk_0x48++;
                }
            }
            else {
                if (unk_0x51 != 0) {
                    url_collision* url_col = (url_collision*)nw4r::ut::List_GetPrev(&mUrlCollisions, NULL);
                    line_collision* line_col = (line_collision*)nw4r::ut::List_GetPrev(&url_col->mLineCollisions, NULL);

                    line_col->unk_0x04 = context->writer->GetCursorX();
                    line_col->unk_0x08 = context->writer->GetCursorY();

                    line_col = new(System::getMem2App(), 4) line_collision();
                    line_col->unk_0x00 = -208.0f;

                    nw4r::ut::List_Append(&url_col->mLineCollisions, line_col);
                }
            }
        }

        void UrlProcessor::parse(nw4r::ut::PrintContext<wchar_t>* context) {
            f32 curY = context->writer->GetCursorY();
            if (unk_0x51 == 0) {
                if (unk_0x4C == unk_0x48) {
                    context->writer->SetTextColor(0xFFE664FF);
                }
                else if (unk_0x53 != 0 && is_focused()) {
                    context->writer->SetCursorY(curY - 2.0f);
                    context->writer->SetTextColor(0xF06E28FF);
                    unk_0x52 = 1;
                }
                else {
                    context->writer->SetTextColor(0x34BEEDFF);
                }
                    unk_0x51 = 1;
            }
            else {
                if (unk_0x52 != 0) {
                    context->writer->SetCursorY(2.0f + curY);
                    unk_0x52 = 0;
                }

                context->writer->SetTextColor(0x646464FF);

                unk_0x51 = 0;
                unk_0x48++;
            }
        }

        BOOL UrlProcessor::is_focused() const {
            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                if (unk_0x48 == get_focused_tagno(i)) {
                    return TRUE;
                }
            }
            return FALSE;
        }

        void UrlProcessor::select(int unk) {
            unk_0x4C = unk;
        }

        int UrlProcessor::get_focused_tagno(int chan) const {
            if (mConData[chan].valid) {
                url_collision* url_col = NULL;
                line_collision* line_col = NULL;

                nw4r::math::VEC2 pos(mConData[chan].pos);

                f32 var_f31, var_f30, var_f29, var_f28;
                var_f28 = 6.0f;
                var_f29 = 25.0f;
                var_f30 = 50.0f;
                var_f31 = pos.x;

                while (url_col = (url_collision*)nw4r::ut::List_GetNext(&mUrlCollisions, url_col), url_col != NULL) {
                    while (line_col = (line_collision*)nw4r::ut::List_GetNext(&url_col->mLineCollisions, line_col), line_col != NULL) {
                        f32 temp_f0 = ((unk_0x44 + unk_0x40) - line_col->unk_0x08);
                        f32 a = (var_f29 + temp_f0);
                        f32 b = (var_f30 + temp_f0);
                        if ((line_col->unk_0x00 - var_f28) <= var_f31) {
                            if (var_f31 <= (var_f28 + line_col->unk_0x04)) {
                                if ((a - var_f28) <= -pos.y) {
                                    if (-pos.y <= (var_f28 + b)) {
                                        return url_col->unk_0x00;
                                    }
                                }
                            }
                        }
                    }
                }
            }

            return -1;
        }

        UrlProcessor::url_collision* UrlProcessor::get_selected_col() {
            url_collision* got = NULL;
            url_collision* url_col = NULL;

            while (got = (url_collision*)nw4r::ut::List_GetNext(&mUrlCollisions, url_col), got != NULL) {
                if (got->unk_0x00 == unk_0x4C) {
                    url_col = got;
                    break;
                }
            }
            return url_col;
        }

        void UrlProcessor::get_url(char* urlOut, u32 urlLen) {
            url_collision* url_col = get_selected_col();
            if (url_col != NULL) {
                wchar_t url[0x200+sizeof(wchar_t)];
                memset(url, 0, sizeof(url));

                int chIdx2 = 0;
                int chIdx = 0;
                for (int i = ((int)url_col->unk_0x08 - (int)url_col->unk_0x04) / sizeof(wchar_t); i > 0; i--) {
                    wchar_t wch = url_col->unk_0x04[chIdx];
                    if (wch != 0x1A && chIdx2 < 0x200) {
                        url[chIdx2++] = wch;
                    }
                    chIdx++;
                }

                utility::CharacterCode::UTF16ToUTF8(urlOut, url, urlLen);
                urlOut[urlLen-1] = 0;
            }
        }

        UrlProcessor::url_collision::url_collision() {
            unk_0x00 = 0;
            unk_0x04 = NULL;
            unk_0x08 = NULL;
            nw4r::ut::List_Init(&mLineCollisions, offsetof(line_collision, mLinkList));
        }

        UrlProcessor::url_collision::~url_collision() {
            line_collision* col;

            while (col = (line_collision*)nw4r::ut::List_GetNext(&mLineCollisions, NULL), col != NULL) {
                nw4r::ut::List_Remove(&mLineCollisions, col);
                delete col;
            }
        }
    }
}
