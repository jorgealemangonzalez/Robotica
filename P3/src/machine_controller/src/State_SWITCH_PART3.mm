//
//State_SWITCH_PART3.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "machine_controller_Includes.h"
#include "machine_controller.h"

#include "State_SWITCH_PART3.h"
#include "State_SWITCH_PART3_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMmachine_controller;
using namespace State;

SWITCH_PART3::SWITCH_PART3(const char *name):CLState(name, *new SWITCH_PART3::OnEntry,*new SWITCH_PART3::OnExit, *new SWITCH_PART3::Internal)
{
	_transitions[0] = new Transition_0();
}

SWITCH_PART3::~SWITCH_PART3()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void SWITCH_PART3::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "machine_controller_VarRefs.mm"
#	include "State_SWITCH_PART3_VarRefs.mm"
#	include "State_SWITCH_PART3_OnEntry.mm"
}

void SWITCH_PART3::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "machine_controller_VarRefs.mm"
#	include "State_SWITCH_PART3_VarRefs.mm"
#	include "State_SWITCH_PART3_OnExit.mm"
}

void SWITCH_PART3::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "machine_controller_VarRefs.mm"
#	include "State_SWITCH_PART3_VarRefs.mm"
#	include "State_SWITCH_PART3_Internal.mm"
}

bool SWITCH_PART3::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "machine_controller_VarRefs.mm"
#	include "State_SWITCH_PART3_VarRefs.mm"

	return
	(
#			include "State_SWITCH_PART3_Transition_0.expr"
	);
}


