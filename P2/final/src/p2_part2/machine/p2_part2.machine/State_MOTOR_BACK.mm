//
//State_MOTOR_BACK.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "p2_part2_Includes.h"
#include "p2_part2.h"

#include "State_MOTOR_BACK.h"
#include "State_MOTOR_BACK_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMp2_part2;
using namespace State;

MOTOR_BACK::MOTOR_BACK(const char *name):CLState(name, *new MOTOR_BACK::OnEntry,*new MOTOR_BACK::OnExit, *new MOTOR_BACK::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

MOTOR_BACK::~MOTOR_BACK()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void MOTOR_BACK::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part2_VarRefs.mm"
#	include "State_MOTOR_BACK_VarRefs.mm"
#	include "State_MOTOR_BACK_OnEntry.mm"
}

void MOTOR_BACK::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part2_VarRefs.mm"
#	include "State_MOTOR_BACK_VarRefs.mm"
#	include "State_MOTOR_BACK_OnExit.mm"
}

void MOTOR_BACK::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part2_VarRefs.mm"
#	include "State_MOTOR_BACK_VarRefs.mm"
#	include "State_MOTOR_BACK_Internal.mm"
}

bool MOTOR_BACK::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part2_VarRefs.mm"
#	include "State_MOTOR_BACK_VarRefs.mm"

	return
	(
#			include "State_MOTOR_BACK_Transition_0.expr"
	);
}
bool MOTOR_BACK::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part2_VarRefs.mm"
#	include "State_MOTOR_BACK_VarRefs.mm"

	return
	(
#			include "State_MOTOR_BACK_Transition_1.expr"
	);
}


