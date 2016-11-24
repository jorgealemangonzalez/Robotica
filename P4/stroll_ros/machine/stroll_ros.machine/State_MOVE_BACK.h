//
// State_MOVE_BACK.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef clfsm_stroll_ros_State_MOVE_BACK_h
#define clfsm_stroll_ros_State_MOVE_BACK_h

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
            class MOVE_BACK: public CLState
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
                    MOVE_BACK(const char *name = "MOVE_BACK");
                    virtual ~MOVE_BACK();

                    virtual CLTransition * const *transitions() const { return _transitions; }
                    virtual int numberOfTransitions() const { return 1; }

#                   include "State_MOVE_BACK_Variables.h"
            };
        }
      }
    }
}

#endif
