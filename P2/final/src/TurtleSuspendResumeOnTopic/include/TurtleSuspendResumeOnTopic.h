//
// TurtleSuspendResumeOnTopic.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef clfsm_machine_TurtleSuspendResumeOnTopic_
#define clfsm_machine_TurtleSuspendResumeOnTopic_

#include "CLMachine.h"

namespace FSM
{
    class CLState;

    namespace CLM
    {
        class TurtleSuspendResumeOnTopic: public CLMachine
        {
            CLState *_states[8];
        public:
            TurtleSuspendResumeOnTopic(int mid  = 0, const char *name = "TurtleSuspendResumeOnTopic");
            virtual ~TurtleSuspendResumeOnTopic();
            virtual CLState * const * states() const { return _states; }
            virtual int numberOfStates() const { return 8; }
#           include "TurtleSuspendResumeOnTopic_Variables.h"
        };
    }
}

extern "C"
{
    FSM::CLM::TurtleSuspendResumeOnTopic *CLM_Create_TurtleSuspendResumeOnTopic(int mid, const char *name);
}

#endif // defined(clfsm_machine_TurtleSuspendResumeOnTopic_)
