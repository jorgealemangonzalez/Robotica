//
//machine_controller.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "machine_controller_Includes.h"
#include "machine_controller.h"

#include "State_INITIAL.h"
#include "State_TEST.h"
#include "State_END.h"
#include "State_SWITCH_PART2.h"
#include "State_SWITCH_PART3.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	machine_controller *CLM_Create_machine_controller(int mid, const char *name)
	{
		return new machine_controller(mid, name);
	}
}

machine_controller::machine_controller(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMmachine_controller::State:: INITIAL;
	_states[1]  = new FSMmachine_controller::State:: TEST;
	_states[2]  = new FSMmachine_controller::State:: END;
	_states[3]  = new FSMmachine_controller::State:: SWITCH_PART2;
	_states[4]  = new FSMmachine_controller::State:: SWITCH_PART3;

	setInitialState(_states[0]);            // set initial state
}

machine_controller::~machine_controller()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
}
