//
// State_SPIN.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "motorTest_Includes.h"
#include "motorTest.h"
#include "State_SPIN.h"

#include "State_SPIN_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMmotorTest;
using namespace State;

SPIN::SPIN(const char *name): CLState(name, *new SPIN::OnEntry, *new SPIN::OnExit, *new SPIN::Internal)
{
	_transitions[0] = new Transition_0();
	_transitions[1] = new Transition_1();
}

SPIN::~SPIN()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
	delete _transitions[1];
}

void SPIN::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_SPIN_VarRefs.mm"
#	include "State_SPIN_OnEntry.mm"
}

void SPIN::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_SPIN_VarRefs.mm"
#	include "State_SPIN_OnExit.mm"
}

void SPIN::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_SPIN_VarRefs.mm"
#	include "State_SPIN_Internal.mm"
}

bool SPIN::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_SPIN_VarRefs.mm"

	return
	(
#		include "State_SPIN_Transition_0.expr"
	);
}

bool SPIN::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_SPIN_VarRefs.mm"

	return
	(
#		include "State_SPIN_Transition_1.expr"
	);
}
