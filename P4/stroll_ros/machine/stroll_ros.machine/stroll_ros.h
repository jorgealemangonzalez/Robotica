//
// stroll_ros.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef clfsm_machine_stroll_ros_
#define clfsm_machine_stroll_ros_

#include "CLMachine.h"

namespace FSM
{
    class CLState;

    namespace CLM
    {
        class stroll_ros: public CLMachine
        {
            CLState *_states[6];
        public:
            stroll_ros(int mid  = 0, const char *name = "stroll_ros");
            virtual ~stroll_ros();
            virtual CLState * const * states() const { return _states; }
            virtual int numberOfStates() const { return 6; }
#           include "stroll_ros_Variables.h"
        };
    }
}

extern "C"
{
    FSM::CLM::stroll_ros *CLM_Create_stroll_ros(int mid, const char *name);
}

#endif // defined(clfsm_machine_stroll_ros_)
