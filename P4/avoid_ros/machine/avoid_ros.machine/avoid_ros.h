//
//avoid_ros.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__avoid_ros__
#define __clfsm__avoid_ros__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class avoid_ros: public CLMachine
		{
			CLState *_states[4];
			public:
			avoid_ros(int mid  = 0, const char *name = "avoid_ros");
			virtual ~avoid_ros();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 4; }
#			include "avoid_ros_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::avoid_ros *CLM_Create_avoid_ros(int mid, const char *name);
}

#endif // defined(__gufsm__avoid_ros__)
