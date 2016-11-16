//
//machine_controller.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__machine_controller__
#define __clfsm__machine_controller__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class machine_controller: public CLMachine
		{
			CLState *_states[5];
			public:
			machine_controller(int mid  = 0, const char *name = "machine_controller");
			virtual ~machine_controller();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 5; }
#			include "machine_controller_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::machine_controller *CLM_Create_machine_controller(int mid, const char *name);
}

#endif // defined(__gufsm__machine_controller__)
