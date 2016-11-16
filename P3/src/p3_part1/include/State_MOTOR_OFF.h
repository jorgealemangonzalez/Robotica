//
//State_MOTOR_OFF.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__p3_part1_State_MOTOR_OFF_h__
#define __clfsm__p3_part1_State_MOTOR_OFF_h__

#include "CLState.h"
#include "CLAction.h"
#include "CLTransition.h"

namespace FSM
{
	namespace CLM
	{
		namespace FSMp3_part1
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
						Transition_0(int toState = 2): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};

					class Transition_1: public CLTransition
					{
						public:
						Transition_1(int toState = 1): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wzero-length-array"
				CLTransition *_transitions[2];
				public:
					MOTOR_OFF(const char *name = "MOTOR_OFF");
					virtual ~MOTOR_OFF();

					virtual CLTransition * const *transitions() const { return _transitions; }
					virtual int numberOfTransitions() const { return 2; }

#					include "State_MOTOR_OFF_Variables.h"
#pragma clang diagnostic pop
				};
			}
		}
	}
}
#endif // defined(__gufsm__p3_part1_State_MOTOR_OFF__)
