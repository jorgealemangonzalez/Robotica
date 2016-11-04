//
// RosBlindTurttleBotWithSuspend.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef clfsm_machine_RosBlindTurttleBotWithSuspend_
#define clfsm_machine_RosBlindTurttleBotWithSuspend_

#include "CLMachine.h"

namespace FSM
{
    class CLState;

    namespace CLM
    {
        class RosBlindTurttleBotWithSuspend: public CLMachine
        {
            CLState *_states[5];
        public:
            RosBlindTurttleBotWithSuspend(int mid  = 0, const char *name = "RosBlindTurttleBotWithSuspend");
            virtual ~RosBlindTurttleBotWithSuspend();
            virtual CLState * const * states() const { return _states; }
            virtual int numberOfStates() const { return 5; }
#           include "RosBlindTurttleBotWithSuspend_Variables.h"
        };
    }
}

extern "C"
{
    FSM::CLM::RosBlindTurttleBotWithSuspend *CLM_Create_RosBlindTurttleBotWithSuspend(int mid, const char *name);
}

#endif // defined(clfsm_machine_RosBlindTurttleBotWithSuspend_)
