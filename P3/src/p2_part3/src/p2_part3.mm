//
//p2_part3.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "p2_part3_Includes.h"
#include "p2_part3.h"

#include "State_INITIAL.h"
#include "State_BUTTON_ON.h"
#include "State_TEST.h"
#include "State_MOTOR_ON.h"
#include "State_MOTOR_BACK.h"
#include "State_MOTOR_STOP.h"
#include "State_END.h"
#include "State_SUSPENDED.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	p2_part3 *CLM_Create_p2_part3(int mid, const char *name)
	{
		return new p2_part3(mid, name);
	}
}

p2_part3::p2_part3(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMp2_part3::State:: INITIAL;
	_states[1]  = new FSMp2_part3::State:: BUTTON_ON;
	_states[2]  = new FSMp2_part3::State:: TEST;
	_states[3]  = new FSMp2_part3::State:: MOTOR_ON;
	_states[4]  = new FSMp2_part3::State:: MOTOR_BACK;
	_states[5]  = new FSMp2_part3::State:: MOTOR_STOP;
	_states[6]  = new FSMp2_part3::State:: END;
	_states[7]  = new FSMp2_part3::State:: SUSPENDED;

	setInitialState(_states[0]);            // set initial state
}

p2_part3::~p2_part3()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
	delete _states[5];
	delete _states[6];
	delete _states[7];
}
