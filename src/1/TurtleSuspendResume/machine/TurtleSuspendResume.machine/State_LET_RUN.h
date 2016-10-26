//
//State_LET_RUN.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__TurtleSuspendResume_State_LET_RUN_h__
#define __clfsm__TurtleSuspendResume_State_LET_RUN_h__

#include "CLState.h"
#include "CLAction.h"
#include "CLTransition.h"

namespace FSM
{
	namespace CLM
	{
		namespace FSMTurtleSuspendResume
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
						Transition_0(int toState = 1): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wzero-length-array"
				CLTransition *_transitions[1];
				public:
					LET_RUN(const char *name = "LET_RUN");
					virtual ~LET_RUN();

					virtual CLTransition * const *transitions() const { return _transitions; }
					virtual int numberOfTransitions() const { return 1; }

#					include "State_LET_RUN_Variables.h"
#pragma clang diagnostic pop
				};
			}
		}
	}
}
#endif // defined(__gufsm__TurtleSuspendResume_State_LET_RUN__)
