//
// RosBlindTurttleBotWithSuspend.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "RosBlindTurttleBotWithSuspend_Includes.h"
#include "RosBlindTurttleBotWithSuspend.h"

#include "State_Initial.h"
#include "State_STRAIGHT.h"
#include "State_TURN_RIGHT.h"
#include "State_END.h"
#include "State_SUSPENDED.h"

using namespace FSM;
using namespace CLM;

extern "C"
{
	RosBlindTurttleBotWithSuspend *CLM_Create_RosBlindTurttleBotWithSuspend(int mid, const char *name)
	{
		return new RosBlindTurttleBotWithSuspend(mid, name);
	}
}

RosBlindTurttleBotWithSuspend::RosBlindTurttleBotWithSuspend(int mid, const char *name): CLMachine(mid, name)
{
	_states[0] = new FSMRosBlindTurttleBotWithSuspend::State::Initial;
	_states[1] = new FSMRosBlindTurttleBotWithSuspend::State::STRAIGHT;
	_states[2] = new FSMRosBlindTurttleBotWithSuspend::State::TURN_RIGHT;
	_states[3] = new FSMRosBlindTurttleBotWithSuspend::State::END;
	_states[4] = new FSMRosBlindTurttleBotWithSuspend::State::SUSPENDED;

	setSuspendState(_states[4]);            // set suspend state
	setInitialState(_states[0]);            // set initial state
}

RosBlindTurttleBotWithSuspend::~RosBlindTurttleBotWithSuspend()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
}
