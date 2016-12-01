//
//correct_ros.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__correct_ros__
#define __clfsm__correct_ros__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class correct_ros: public CLMachine
		{
			CLState *_states[4];
			public:
			correct_ros(int mid  = 0, const char *name = "correct_ros");
			virtual ~correct_ros();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 4; }
#			include "correct_ros_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::correct_ros *CLM_Create_correct_ros(int mid, const char *name);
}

#endif // defined(__gufsm__correct_ros__)
