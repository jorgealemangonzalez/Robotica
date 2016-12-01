//
//avoid_ros.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "avoid_ros_Includes.h"
#include "avoid_ros.h"

#include "State_INITIAL.h"
#include "State_Test.h"
#include "State_Turn_left.h"
#include "State_Turn_right.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	avoid_ros *CLM_Create_avoid_ros(int mid, const char *name)
	{
		return new avoid_ros(mid, name);
	}
}

avoid_ros::avoid_ros(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMavoid_ros::State:: INITIAL;
	_states[1]  = new FSMavoid_ros::State:: Test;
	_states[2]  = new FSMavoid_ros::State:: Turn_left;
	_states[3]  = new FSMavoid_ros::State:: Turn_right;

	setInitialState(_states[0]);            // set initial state
}

avoid_ros::~avoid_ros()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
}
