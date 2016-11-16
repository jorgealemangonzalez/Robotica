//
//p2_part2.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "p2_part2_Includes.h"
#include "p2_part2.h"

#include "State_INITIAL.h"
#include "State_BUTTON_ON.h"
#include "State_SPIN.h"
#include "State_TEST.h"
#include "State_END.h"
#include "State_MOTOR_ON.h"
#include "State_MOTOR_OFF.h"
#include "State_MOTOR_BACK.h"
#include "State_SUSPENDED.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	p2_part2 *CLM_Create_p2_part2(int mid, const char *name)
	{
		return new p2_part2(mid, name);
	}
}

p2_part2::p2_part2(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMp2_part2::State:: INITIAL;
	_states[1]  = new FSMp2_part2::State:: BUTTON_ON;
	_states[2]  = new FSMp2_part2::State:: SPIN;
	_states[3]  = new FSMp2_part2::State:: TEST;
	_states[4]  = new FSMp2_part2::State:: END;
	_states[5]  = new FSMp2_part2::State:: MOTOR_ON;
	_states[6]  = new FSMp2_part2::State:: MOTOR_OFF;
	_states[7]  = new FSMp2_part2::State:: MOTOR_BACK;
	_states[8]  = new FSMp2_part2::State:: SUSPENDED;

	setInitialState(_states[0]);            // set initial state
}

p2_part2::~p2_part2()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
	delete _states[5];
	delete _states[6];
	delete _states[7];
	delete _states[8];
}
