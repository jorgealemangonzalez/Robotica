//
//p2_part3.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__p2_part3__
#define __clfsm__p2_part3__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class p2_part3: public CLMachine
		{
			CLState *_states[8];
			public:
			p2_part3(int mid  = 0, const char *name = "p2_part3");
			virtual ~p2_part3();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 8; }
#			include "p2_part3_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::p2_part3 *CLM_Create_p2_part3(int mid, const char *name);
}

#endif // defined(__gufsm__p2_part3__)
