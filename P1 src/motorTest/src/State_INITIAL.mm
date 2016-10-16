//
// State_INITIAL.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "motorTest_Includes.h"
#include "motorTest.h"
#include "State_INITIAL.h"

#include "State_INITIAL_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMmotorTest;
using namespace State;

INITIAL::INITIAL(const char *name): CLState(name, *new INITIAL::OnEntry, *new INITIAL::OnExit, *new INITIAL::Internal)
{
	_transitions[0] = new Transition_0();
}

INITIAL::~INITIAL()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
}

void INITIAL::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_INITIAL_VarRefs.mm"
#	include "State_INITIAL_OnEntry.mm"
}

void INITIAL::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_INITIAL_VarRefs.mm"
#	include "State_INITIAL_OnExit.mm"
}

void INITIAL::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_INITIAL_VarRefs.mm"
#	include "State_INITIAL_Internal.mm"
}

bool INITIAL::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "motorTest_VarRefs.mm"
#	include "State_INITIAL_VarRefs.mm"

	return
	(
#		include "State_INITIAL_Transition_0.expr"
	);
}
