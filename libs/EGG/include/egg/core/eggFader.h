#ifndef EGG_CORE_FADER_H
#define EGG_CORE_FADER_H

namespace EGG {
    class Fader {
        public:
            typedef enum EStatus {
                PREPARE_IN = 0,
                PREPARE_OUT,
                FADE_IN,
                FADE_OUT
            } EStatus;
            
            virtual void    setStatus(EStatus newStatus) = 0;
            virtual EStatus getStatus() const = 0;
            
            virtual bool    fadeIn() = 0;
            virtual bool    fadeOut() = 0;
            
            virtual bool    calc() = 0;
            virtual void    draw() = 0;
    };
}

#endif // EGG_CORE_FADER_H
