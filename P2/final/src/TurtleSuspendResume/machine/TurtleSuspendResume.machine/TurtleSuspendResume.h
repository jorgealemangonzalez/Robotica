//
// TurtleSuspendResume.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef __clfsm__TurtleSuspendResume__
#define __clfsm__TurtleSuspendResume__

#include "CLMachine.h"

namespace FSM
{
    class CLState;

    namespace CLM
    {
        class TurtleSuspendResume: public CLMachine
        {
            CLState *_states[5];
        public:
            TurtleSuspendResume(int mid  = 0, const char *name = "TurtleSuspendResume");
            virtual ~TurtleSuspendResume();
            virtual CLState * const * states() const { return _states; }
            virtual int numberOfStates() const { return 5; }
#           include "TurtleSuspendResume_Variables.h"
        };
    }
}

extern "C"
{
    FSM::CLM::TurtleSuspendResume *CLM_Create_TurtleSuspendResume(int mid, const char *name);
}

#endif // defined(__gufsm__TurtleSuspendResume__)
