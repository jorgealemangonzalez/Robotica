//
//State_MOTOR_OFF.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "p3_part1_Includes.h"
#include "p3_part1.h"

#include "State_MOTOR_OFF.h"
#include "State_MOTOR_OFF_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMp3_part1;
using namespace State;

MOTOR_OFF::MOTOR_OFF(const char *name):CLState(name, *new MOTOR_OFF::OnEntry,*new MOTOR_OFF::OnExit, *new MOTOR_OFF::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

MOTOR_OFF::~MOTOR_OFF()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void MOTOR_OFF::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p3_part1_VarRefs.mm"
#	include "State_MOTOR_OFF_VarRefs.mm"
#	include "State_MOTOR_OFF_OnEntry.mm"
}

void MOTOR_OFF::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p3_part1_VarRefs.mm"
#	include "State_MOTOR_OFF_VarRefs.mm"
#	include "State_MOTOR_OFF_OnExit.mm"
}

void MOTOR_OFF::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p3_part1_VarRefs.mm"
#	include "State_MOTOR_OFF_VarRefs.mm"
#	include "State_MOTOR_OFF_Internal.mm"
}

bool MOTOR_OFF::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "p3_part1_VarRefs.mm"
#	include "State_MOTOR_OFF_VarRefs.mm"

	return
	(
#			include "State_MOTOR_OFF_Transition_0.expr"
	);
}
bool MOTOR_OFF::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "p3_part1_VarRefs.mm"
#	include "State_MOTOR_OFF_VarRefs.mm"

	return
	(
#			include "State_MOTOR_OFF_Transition_1.expr"
	);
}


