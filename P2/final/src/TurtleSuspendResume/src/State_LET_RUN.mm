//
// State_LET_RUN.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "TurtleSuspendResume_Includes.h"
#include "TurtleSuspendResume.h"
#include "State_LET_RUN.h"

#include "State_LET_RUN_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMTurtleSuspendResume;
using namespace State;

LET_RUN::LET_RUN(const char *name): CLState(name, *new LET_RUN::OnEntry, *new LET_RUN::OnExit, *new LET_RUN::Internal)
{
	_transitions[0] = new Transition_0();
}

LET_RUN::~LET_RUN()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
}

void LET_RUN::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_LET_RUN_VarRefs.mm"
#	include "State_LET_RUN_OnEntry.mm"
}

void LET_RUN::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_LET_RUN_VarRefs.mm"
#	include "State_LET_RUN_OnExit.mm"
}

void LET_RUN::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_LET_RUN_VarRefs.mm"
#	include "State_LET_RUN_Internal.mm"
}

bool LET_RUN::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_LET_RUN_VarRefs.mm"

	return
	(
#		include "State_LET_RUN_Transition_0.expr"
	);
}
