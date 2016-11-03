//
// TurtleSuspendResume.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "TurtleSuspendResume_Includes.h"
#include "TurtleSuspendResume.h"

#include "State_InitialPseudoState.h"
#include "State_Initial.h"
#include "State_VERIFY.h"
#include "State_RESTART.h"
#include "State_LET_RUN.h"

using namespace FSM;
using namespace CLM;

extern "C"
{
	TurtleSuspendResume *CLM_Create_TurtleSuspendResume(int mid, const char *name)
	{
		return new TurtleSuspendResume(mid, name);
	}
}

TurtleSuspendResume::TurtleSuspendResume(int mid, const char *name): CLMachine(mid, name)
{
	_states[0] = new FSMTurtleSuspendResume::State::InitialPseudoState;
	_states[1] = new FSMTurtleSuspendResume::State::Initial;
	_states[2] = new FSMTurtleSuspendResume::State::VERIFY;
	_states[3] = new FSMTurtleSuspendResume::State::RESTART;
	_states[4] = new FSMTurtleSuspendResume::State::LET_RUN;

	setInitialState(_states[0]);            // set initial state
}

TurtleSuspendResume::~TurtleSuspendResume()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
}
