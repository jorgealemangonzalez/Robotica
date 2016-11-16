//
//p3_part1.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "p3_part1_Includes.h"
#include "p3_part1.h"

#include "State_INITIAL.h"
#include "State_END.h"
#include "State_TEST.h"
#include "State_MOTOR_ON.h"
#include "State_MOTOR_BACK.h"
#include "State_MOTOR_OFF.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	p3_part1 *CLM_Create_p3_part1(int mid, const char *name)
	{
		return new p3_part1(mid, name);
	}
}

p3_part1::p3_part1(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMp3_part1::State:: INITIAL;
	_states[1]  = new FSMp3_part1::State:: END;
	_states[2]  = new FSMp3_part1::State:: TEST;
	_states[3]  = new FSMp3_part1::State:: MOTOR_ON;
	_states[4]  = new FSMp3_part1::State:: MOTOR_BACK;
	_states[5]  = new FSMp3_part1::State:: MOTOR_OFF;

	setInitialState(_states[0]);            // set initial state
}

p3_part1::~p3_part1()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
	delete _states[5];
}
