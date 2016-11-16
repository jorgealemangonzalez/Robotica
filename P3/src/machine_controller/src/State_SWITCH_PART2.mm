//
//State_SWITCH_PART2.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "machine_controller_Includes.h"
#include "machine_controller.h"

#include "State_SWITCH_PART2.h"
#include "State_SWITCH_PART2_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMmachine_controller;
using namespace State;

SWITCH_PART2::SWITCH_PART2(const char *name):CLState(name, *new SWITCH_PART2::OnEntry,*new SWITCH_PART2::OnExit, *new SWITCH_PART2::Internal)
{
	_transitions[0] = new Transition_0();
}

SWITCH_PART2::~SWITCH_PART2()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void SWITCH_PART2::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "machine_controller_VarRefs.mm"
#	include "State_SWITCH_PART2_VarRefs.mm"
#	include "State_SWITCH_PART2_OnEntry.mm"
}

void SWITCH_PART2::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "machine_controller_VarRefs.mm"
#	include "State_SWITCH_PART2_VarRefs.mm"
#	include "State_SWITCH_PART2_OnExit.mm"
}

void SWITCH_PART2::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "machine_controller_VarRefs.mm"
#	include "State_SWITCH_PART2_VarRefs.mm"
#	include "State_SWITCH_PART2_Internal.mm"
}

bool SWITCH_PART2::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "machine_controller_VarRefs.mm"
#	include "State_SWITCH_PART2_VarRefs.mm"

	return
	(
#			include "State_SWITCH_PART2_Transition_0.expr"
	);
}


