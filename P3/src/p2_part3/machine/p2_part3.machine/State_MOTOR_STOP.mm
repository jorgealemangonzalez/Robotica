//
//State_MOTOR_STOP.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "p2_part3_Includes.h"
#include "p2_part3.h"

#include "State_MOTOR_STOP.h"
#include "State_MOTOR_STOP_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMp2_part3;
using namespace State;

MOTOR_STOP::MOTOR_STOP(const char *name):CLState(name, *new MOTOR_STOP::OnEntry,*new MOTOR_STOP::OnExit, *new MOTOR_STOP::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

MOTOR_STOP::~MOTOR_STOP()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void MOTOR_STOP::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part3_VarRefs.mm"
#	include "State_MOTOR_STOP_VarRefs.mm"
#	include "State_MOTOR_STOP_OnEntry.mm"
}

void MOTOR_STOP::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part3_VarRefs.mm"
#	include "State_MOTOR_STOP_VarRefs.mm"
#	include "State_MOTOR_STOP_OnExit.mm"
}

void MOTOR_STOP::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part3_VarRefs.mm"
#	include "State_MOTOR_STOP_VarRefs.mm"
#	include "State_MOTOR_STOP_Internal.mm"
}

bool MOTOR_STOP::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part3_VarRefs.mm"
#	include "State_MOTOR_STOP_VarRefs.mm"

	return
	(
#			include "State_MOTOR_STOP_Transition_0.expr"
	);
}
bool MOTOR_STOP::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part3_VarRefs.mm"
#	include "State_MOTOR_STOP_VarRefs.mm"

	return
	(
#			include "State_MOTOR_STOP_Transition_1.expr"
	);
}


