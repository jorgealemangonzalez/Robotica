//
//align_ros.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__align_ros__
#define __clfsm__align_ros__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class align_ros: public CLMachine
		{
			CLState *_states[4];
			public:
			align_ros(int mid  = 0, const char *name = "align_ros");
			virtual ~align_ros();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 4; }
#			include "align_ros_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::align_ros *CLM_Create_align_ros(int mid, const char *name);
}

#endif // defined(__gufsm__align_ros__)
