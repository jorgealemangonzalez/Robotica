//
// State_LET_RUN.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef clfsm_TurtleSuspendResumeOnTopic_State_LET_RUN_h
#define clfsm_TurtleSuspendResumeOnTopic_State_LET_RUN_h

#include "CLState.h"
#include "CLAction.h"
#include "CLTransition.h"

namespace FSM
{
    namespace CLM
    {
      namespace FSMTurtleSuspendResumeOnTopic
      {
        namespace State
        {
            class LET_RUN: public CLState
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
                    Transition_0(int toState = 5): CLTransition(toState) {}

                    virtual bool check(CLMachine *, CLState *) const;
                };

                class Transition_1: public CLTransition
                {
                public:
                    Transition_1(int toState = 6): CLTransition(toState) {}

                    virtual bool check(CLMachine *, CLState *) const;
                };

                CLTransition *_transitions[2];

                public:
                    LET_RUN(const char *name = "LET_RUN");
                    virtual ~LET_RUN();

                    virtual CLTransition * const *transitions() const { return _transitions; }
                    virtual int numberOfTransitions() const { return 2; }

#                   include "State_LET_RUN_Variables.h"
            };
        }
      }
    }
}

#endif
