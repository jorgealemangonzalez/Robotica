//
// stroll_ros.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "stroll_ros_Includes.h"
#include "stroll_ros.h"

#include "State_InitialPseudoState.h"
#include "State_Initial.h"
#include "State_STROLL.h"
#include "State_STOP.h"
#include "State_MOVE_BACK.h"
#include "State_MOVE_FORWARD.h"

using namespace FSM;
using namespace CLM;

extern "C"
{
	stroll_ros *CLM_Create_stroll_ros(int mid, const char *name)
	{
		return new stroll_ros(mid, name);
	}
}

stroll_ros::stroll_ros(int mid, const char *name): CLMachine(mid, name)
{
	_states[0] = new FSMstroll_ros::State::InitialPseudoState;
	_states[1] = new FSMstroll_ros::State::Initial;
	_states[2] = new FSMstroll_ros::State::STROLL;
	_states[3] = new FSMstroll_ros::State::STOP;
	_states[4] = new FSMstroll_ros::State::MOVE_BACK;
	_states[5] = new FSMstroll_ros::State::MOVE_FORWARD;

	setInitialState(_states[0]);            // set initial state
}

stroll_ros::~stroll_ros()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
	delete _states[5];
}
