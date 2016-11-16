//
// State_MOTOR_OFF.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef clfsm_motorTest_State_MOTOR_OFF_h
#define clfsm_motorTest_State_MOTOR_OFF_h

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
            class MOTOR_OFF: public CLState
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
                    Transition_0(int toState = 3): CLTransition(toState) {}

                    virtual bool check(CLMachine *, CLState *) const;
                };

                class Transition_1: public CLTransition
                {
                public:
                    Transition_1(int toState = 4): CLTransition(toState) {}

                    virtual bool check(CLMachine *, CLState *) const;
                };

                CLTransition *_transitions[2];

                public:
                    MOTOR_OFF(const char *name = "MOTOR_OFF");
                    virtual ~MOTOR_OFF();

                    virtual CLTransition * const *transitions() const { return _transitions; }
                    virtual int numberOfTransitions() const { return 2; }

#                   include "State_MOTOR_OFF_Variables.h"
            };
        }
      }
    }
}

#endif
