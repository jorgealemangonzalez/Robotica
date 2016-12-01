//
//correct_ros.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "correct_ros_Includes.h"
#include "correct_ros.h"

#include "State_INITIAL.h"
#include "State_Test.h"
#include "State_Turn_right.h"
#include "State_Turn_left.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	correct_ros *CLM_Create_correct_ros(int mid, const char *name)
	{
		return new correct_ros(mid, name);
	}
}

correct_ros::correct_ros(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMcorrect_ros::State:: INITIAL;
	_states[1]  = new FSMcorrect_ros::State:: Test;
	_states[2]  = new FSMcorrect_ros::State:: Turn_right;
	_states[3]  = new FSMcorrect_ros::State:: Turn_left;

	setInitialState(_states[0]);            // set initial state
}

correct_ros::~correct_ros()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
}
