#ifndef EGG_CORE_FADER_H
#define EGG_CORE_FADER_H

namespace EGG {
    class Fader {
        public:
            typedef enum EStatus {
                STATUS_PREPARE_IN = 0,
                STATUS_PREPARE_OUT,
                STATUS_FADE_IN,
                STATUS_FADE_OUT
            } EStatus;
            
            virtual void setStatus(EStatus newStatus) = 0;
            virtual EStatus getStatus() const = 0;
            
            virtual bool fadeIn() = 0;
            virtual bool fadeOut() = 0;
            
            virtual bool calc() = 0;
            virtual void draw() = 0;
    };
}

#endif // EGG_CORE_FADER_H
