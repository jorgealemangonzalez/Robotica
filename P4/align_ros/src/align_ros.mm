//
//align_ros.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "align_ros_Includes.h"
#include "align_ros.h"

#include "State_INITIAL.h"
#include "State_Turn_left.h"
#include "State_Turn_right.h"
#include "State_Test.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	align_ros *CLM_Create_align_ros(int mid, const char *name)
	{
		return new align_ros(mid, name);
	}
}

align_ros::align_ros(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMalign_ros::State:: INITIAL;
	_states[1]  = new FSMalign_ros::State:: Turn_left;
	_states[2]  = new FSMalign_ros::State:: Turn_right;
	_states[3]  = new FSMalign_ros::State:: Test;

	setInitialState(_states[0]);            // set initial state
}

align_ros::~align_ros()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
}
