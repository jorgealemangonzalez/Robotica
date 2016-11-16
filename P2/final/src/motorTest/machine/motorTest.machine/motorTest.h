//
//motorTest.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__motorTest__
#define __clfsm__motorTest__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class motorTest: public CLMachine
		{
			CLState *_states[7];
			public:
			motorTest(int mid  = 0, const char *name = "motorTest");
			virtual ~motorTest();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 7; }
#			include "motorTest_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::motorTest *CLM_Create_motorTest(int mid, const char *name);
}

#endif // defined(__gufsm__motorTest__)
