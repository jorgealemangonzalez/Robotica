//
//p2_part2.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__p2_part2__
#define __clfsm__p2_part2__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class p2_part2: public CLMachine
		{
			CLState *_states[9];
			public:
			p2_part2(int mid  = 0, const char *name = "p2_part2");
			virtual ~p2_part2();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 9; }
#			include "p2_part2_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::p2_part2 *CLM_Create_p2_part2(int mid, const char *name);
}

#endif // defined(__gufsm__p2_part2__)
