//
// State_MOVE_FORWARD.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef clfsm_stroll_ros_State_MOVE_FORWARD_h
#define clfsm_stroll_ros_State_MOVE_FORWARD_h

#include "CLState.h"
#include "CLAction.h"
#include "CLTransition.h"

namespace FSM
{
    namespace CLM
    {
      namespace FSMstroll_ros
      {
        namespace State
        {
            class MOVE_FORWARD: public CLState
            {
                class OnEntry: public CLAction
                {
                    virtual void perform(CLMachine *, CLState *) const;
                };

                class OnExit: public CLAction
                {
                    virtual void perform(CLMachine *, CLState *) const;
                };

                class Internal: public CLAction
                {
                    virtual void perform(CLMachine *, CLState *) const;
                };

                class Transition_0: public CLTransition
                {
                public:
                    Transition_0(int toState = 2): CLTransition(toState) {}

                    virtual bool check(CLMachine *, CLState *) const;
                };

                CLTransition *_transitions[1];

                public:
                    MOVE_FORWARD(const char *name = "MOVE_FORWARD");
                    virtual ~MOVE_FORWARD();

                    virtual CLTransition * const *transitions() const { return _transitions; }
                    virtual int numberOfTransitions() const { return 1; }

#                   include "State_MOVE_FORWARD_Variables.h"
            };
        }
      }
    }
}

#endif
