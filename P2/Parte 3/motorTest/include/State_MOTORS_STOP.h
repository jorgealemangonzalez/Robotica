//
//State_MOTORS_STOP.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__motorTest_State_MOTORS_STOP_h__
#define __clfsm__motorTest_State_MOTORS_STOP_h__

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
				class MOTORS_STOP: public CLState
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


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wzero-length-array"
				CLTransition *_transitions[1];
				public:
					MOTORS_STOP(const char *name = "MOTORS_STOP");
					virtual ~MOTORS_STOP();

					virtual CLTransition * const *transitions() const { return _transitions; }
					virtual int numberOfTransitions() const { return 1; }

#					include "State_MOTORS_STOP_Variables.h"
#pragma clang diagnostic pop
				};
			}
		}
	}
}
#endif // defined(__gufsm__motorTest_State_MOTORS_STOP__)
