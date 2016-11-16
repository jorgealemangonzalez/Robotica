//
//p3_part1.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__p3_part1__
#define __clfsm__p3_part1__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class p3_part1: public CLMachine
		{
			CLState *_states[6];
			public:
			p3_part1(int mid  = 0, const char *name = "p3_part1");
			virtual ~p3_part1();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 6; }
#			include "p3_part1_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::p3_part1 *CLM_Create_p3_part1(int mid, const char *name);
}

#endif // defined(__gufsm__p3_part1__)
