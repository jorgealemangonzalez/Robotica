//
//State_BUTTON_ON.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "motorTest_Includes.h"
#include "motorTest.h"

#include "State_BUTTON_ON.h"
#include "State_BUTTON_ON_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMmotorTest;
using namespace State;

BUTTON_ON::BUTTON_ON(const char *name):CLState(name, *new BUTTON_ON::OnEntry,*new BUTTON_ON::OnExit, *new BUTTON_ON::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

BUTTON_ON::~BUTTON_ON()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void BUTTON_ON::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_BUTTON_ON_VarRefs.mm"
#	include "State_BUTTON_ON_OnEntry.mm"
}

void BUTTON_ON::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_BUTTON_ON_VarRefs.mm"
#	include "State_BUTTON_ON_OnExit.mm"
}

void BUTTON_ON::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_BUTTON_ON_VarRefs.mm"
#	include "State_BUTTON_ON_Internal.mm"
}

bool BUTTON_ON::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_BUTTON_ON_VarRefs.mm"

	return
	(
#			include "State_BUTTON_ON_Transition_0.expr"
	);
}
bool BUTTON_ON::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_BUTTON_ON_VarRefs.mm"

	return
	(
#			include "State_BUTTON_ON_Transition_1.expr"
	);
}


