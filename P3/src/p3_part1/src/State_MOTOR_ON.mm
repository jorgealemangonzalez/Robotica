//
//State_MOTOR_ON.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "p3_part1_Includes.h"
#include "p3_part1.h"

#include "State_MOTOR_ON.h"
#include "State_MOTOR_ON_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMp3_part1;
using namespace State;

MOTOR_ON::MOTOR_ON(const char *name):CLState(name, *new MOTOR_ON::OnEntry,*new MOTOR_ON::OnExit, *new MOTOR_ON::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

MOTOR_ON::~MOTOR_ON()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void MOTOR_ON::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p3_part1_VarRefs.mm"
#	include "State_MOTOR_ON_VarRefs.mm"
#	include "State_MOTOR_ON_OnEntry.mm"
}

void MOTOR_ON::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p3_part1_VarRefs.mm"
#	include "State_MOTOR_ON_VarRefs.mm"
#	include "State_MOTOR_ON_OnExit.mm"
}

void MOTOR_ON::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p3_part1_VarRefs.mm"
#	include "State_MOTOR_ON_VarRefs.mm"
#	include "State_MOTOR_ON_Internal.mm"
}

bool MOTOR_ON::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "p3_part1_VarRefs.mm"
#	include "State_MOTOR_ON_VarRefs.mm"

	return
	(
#			include "State_MOTOR_ON_Transition_0.expr"
	);
}
bool MOTOR_ON::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "p3_part1_VarRefs.mm"
#	include "State_MOTOR_ON_VarRefs.mm"

	return
	(
#			include "State_MOTOR_ON_Transition_1.expr"
	);
}


