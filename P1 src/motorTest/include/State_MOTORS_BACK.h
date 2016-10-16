//
// State_MOTORS_BACK.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef clfsm_motorTest_State_MOTORS_BACK_h
#define clfsm_motorTest_State_MOTORS_BACK_h

#include "CLState.h"
#include "CLAction.h"
#include "CLTransition.h"

namespace FSM
{
    namespace CLM
    {
      namespace FSMmotorTest
      {
        namespace State
        {
            class MOTORS_BACK: public CLState
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
                    Transition_0(int toState = 6): CLTransition(toState) {}

                    virtual bool check(CLMachine *, CLState *) const;
                };

                CLTransition *_transitions[1];

                public:
                    MOTORS_BACK(const char *name = "MOTORS_BACK");
                    virtual ~MOTORS_BACK();

                    virtual CLTransition * const *transitions() const { return _transitions; }
                    virtual int numberOfTransitions() const { return 1; }

#                   include "State_MOTORS_BACK_Variables.h"
            };
        }
      }
    }
}

#endif
