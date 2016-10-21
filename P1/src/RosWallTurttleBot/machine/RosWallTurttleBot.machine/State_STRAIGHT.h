//
//State_STRAIGHT.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__RosWallTurttleBot_State_STRAIGHT_h__
#define __clfsm__RosWallTurttleBot_State_STRAIGHT_h__

#include "CLState.h"
#include "CLAction.h"
#include "CLTransition.h"

namespace FSM
{
	namespace CLM
	{
		namespace FSMRosWallTurttleBot
		{
			namespace State
			{
				class STRAIGHT: public CLState
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
						Transition_0(int toState = 4): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};

					class Transition_1: public CLTransition
					{
						public:
						Transition_1(int toState = 3): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wzero-length-array"
				CLTransition *_transitions[2];
				public:
					STRAIGHT(const char *name = "STRAIGHT");
					virtual ~STRAIGHT();

					virtual CLTransition * const *transitions() const { return _transitions; }
					virtual int numberOfTransitions() const { return 2; }

#					include "State_STRAIGHT_Variables.h"
#pragma clang diagnostic pop
				};
			}
		}
	}
}
#endif // defined(__gufsm__RosWallTurttleBot_State_STRAIGHT__)
