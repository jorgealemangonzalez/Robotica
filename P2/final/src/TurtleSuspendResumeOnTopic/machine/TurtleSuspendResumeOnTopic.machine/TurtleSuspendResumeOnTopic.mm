//
// TurtleSuspendResumeOnTopic.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "TurtleSuspendResumeOnTopic_Includes.h"
#include "TurtleSuspendResumeOnTopic.h"

#include "State_InitialPseudoState.h"
#include "State_Initial.h"
#include "State_VERIFY.h"
#include "State_RESTART.h"
#include "State_LET_RUN.h"
#include "State_SUSPEND_CHILD.h"
#include "State_END.h"
#include "State_WAIT.h"

using namespace FSM;
using namespace CLM;

extern "C"
{
	TurtleSuspendResumeOnTopic *CLM_Create_TurtleSuspendResumeOnTopic(int mid, const char *name)
	{
		return new TurtleSuspendResumeOnTopic(mid, name);
	}
}

TurtleSuspendResumeOnTopic::TurtleSuspendResumeOnTopic(int mid, const char *name): CLMachine(mid, name)
{
	_states[0] = new FSMTurtleSuspendResumeOnTopic::State::InitialPseudoState;
	_states[1] = new FSMTurtleSuspendResumeOnTopic::State::Initial;
	_states[2] = new FSMTurtleSuspendResumeOnTopic::State::VERIFY;
	_states[3] = new FSMTurtleSuspendResumeOnTopic::State::RESTART;
	_states[4] = new FSMTurtleSuspendResumeOnTopic::State::LET_RUN;
	_states[5] = new FSMTurtleSuspendResumeOnTopic::State::SUSPEND_CHILD;
	_states[6] = new FSMTurtleSuspendResumeOnTopic::State::END;
	_states[7] = new FSMTurtleSuspendResumeOnTopic::State::WAIT;

	setInitialState(_states[0]);            // set initial state
}

TurtleSuspendResumeOnTopic::~TurtleSuspendResumeOnTopic()
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
