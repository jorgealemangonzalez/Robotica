//
//motorTest.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "motorTest_Includes.h"
#include "motorTest.h"

#include "State_INITIAL.h"
#include "State_MOTOR_ON.h"
#include "State_END.h"
#include "State_TEST.h"
#include "State_BUTTON_ON.h"
#include "State_MOTORS_BACK.h"
#include "State_SPIN.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	motorTest *CLM_Create_motorTest(int mid, const char *name)
	{
		return new motorTest(mid, name);
	}
}

motorTest::motorTest(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMmotorTest::State:: INITIAL;
	_states[1]  = new FSMmotorTest::State:: MOTOR_ON;
	_states[2]  = new FSMmotorTest::State:: END;
	_states[3]  = new FSMmotorTest::State:: TEST;
	_states[4]  = new FSMmotorTest::State:: BUTTON_ON;
	_states[5]  = new FSMmotorTest::State:: MOTORS_BACK;
	_states[6]  = new FSMmotorTest::State:: SPIN;

	setInitialState(_states[0]);            // set initial state
}

motorTest::~motorTest()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
	delete _states[5];
	delete _states[6];
}
