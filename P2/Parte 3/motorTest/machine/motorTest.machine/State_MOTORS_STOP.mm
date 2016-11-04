//
//State_MOTORS_STOP.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "motorTest_Includes.h"
#include "motorTest.h"

#include "State_MOTORS_STOP.h"
#include "State_MOTORS_STOP_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMmotorTest;
using namespace State;

MOTORS_STOP::MOTORS_STOP(const char *name):CLState(name, *new MOTORS_STOP::OnEntry,*new MOTORS_STOP::OnExit, *new MOTORS_STOP::Internal)
{
	_transitions[0] = new Transition_0();
}

MOTORS_STOP::~MOTORS_STOP()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void MOTORS_STOP::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_MOTORS_STOP_VarRefs.mm"
#	include "State_MOTORS_STOP_OnEntry.mm"
}

void MOTORS_STOP::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_MOTORS_STOP_VarRefs.mm"
#	include "State_MOTORS_STOP_OnExit.mm"
}

void MOTORS_STOP::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_MOTORS_STOP_VarRefs.mm"
#	include "State_MOTORS_STOP_Internal.mm"
}

bool MOTORS_STOP::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_MOTORS_STOP_VarRefs.mm"

	return
	(
#			include "State_MOTORS_STOP_Transition_0.expr"
	);
}


