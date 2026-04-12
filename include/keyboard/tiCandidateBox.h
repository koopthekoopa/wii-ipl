#ifndef TEXTINPUT_CANDIDATE_BOX_H
#define TEXTINPUT_CANDIDATE_BOX_H

#include "tiNw4rManager.h"
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

        class Base : public CommandSender {
        public:
            virtual ~Base();
            virtual void create(MEMAllocator* allocator);
            virtual void init();
            virtual void setCommandReceiver(textinput::CommandReceiver*);
            virtual void updateFromReceiver(u32, void*);
            virtual void resetCandidate();
            virtual void addCandiate(const wchar_t *);
            virtual void updateCandidate();
            virtual void draw();
            virtual void turnOn();
            virtual void turnOff();
            virtual void makeEmpty();
            virtual bool isOn() const;
            virtual void onClose();
            virtual void setOnOff(bool);
            virtual void setInvalid(bool);
            virtual bool isInvalid() const;
            virtual void setLanguage(Language);
        };

        // TODO
        class LayoutByNW4R : public Base, public nw4rmanager::Layout {
        public:
            virtual void create(MEMAllocator* allocator);
            virtual void init();
            virtual void updateCandidate();
            virtual void draw();
            virtual void turnOn();
            virtual void turnOff();
            virtual void makeEmpty();
            virtual void onClose();
            virtual void setOnOff(bool);
            virtual void setInvalid(bool);
            virtual void setLanguage(Language);

            // TODO

            void onPressedShift(bool shift);
            void onReleasedShift();
        };
}
}

#endif // TEXTINPUT_CANDIDATE_BOX_H
