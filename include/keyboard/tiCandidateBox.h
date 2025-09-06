#ifndef TEXTINPUT_CANDIDATE_BOX_H
#define TEXTINPUT_CANDIDATE_BOX_H

#include "tiTextInputBase.h"
#include "tiHKBManager.h"

namespace textinput {
    namespace candidatebox {
        class Base;
        class CandidateBoxCaller {
            public:
                virtual void resetCandidate();
                virtual void addCandidate(const wchar_t* wcString);
                virtual void setCandidateBox(textinput::candidatebox::Base* candidateBox);
                virtual void updateCandidate();
                virtual void makeEmptyCandidate();
                
            private:
                candidatebox::Base* mpCandidateBox; // 0x04
        };
    }
}

#endif // TEXTINPUT_CANDIDATE_BOX_H
