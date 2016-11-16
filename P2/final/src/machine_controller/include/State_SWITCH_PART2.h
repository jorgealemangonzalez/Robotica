//
//State_SWITCH_PART2.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__machine_controller_State_SWITCH_PART2_h__
#define __clfsm__machine_controller_State_SWITCH_PART2_h__

#include "CLState.h"
#include "CLAction.h"
#include "CLTransition.h"

namespace FSM
{
	namespace CLM
	{
		namespace FSMmachine_controller
		{
			namespace State
			{
				class SWITCH_PART2: public CLState
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
					SWITCH_PART2(const char *name = "SWITCH_PART2");
					virtual ~SWITCH_PART2();

					virtual CLTransition * const *transitions() const { return _transitions; }
					virtual int numberOfTransitions() const { return 1; }

#					include "State_SWITCH_PART2_Variables.h"
#pragma clang diagnostic pop
				};
			}
		}
	}
}
#endif // defined(__gufsm__machine_controller_State_SWITCH_PART2__)
