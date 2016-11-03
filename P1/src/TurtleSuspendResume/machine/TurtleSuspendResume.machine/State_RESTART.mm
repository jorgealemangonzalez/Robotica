//
// State_RESTART.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "TurtleSuspendResume_Includes.h"
#include "TurtleSuspendResume.h"
#include "State_RESTART.h"

#include "State_RESTART_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMTurtleSuspendResume;
using namespace State;

RESTART::RESTART(const char *name): CLState(name, *new RESTART::OnEntry, *new RESTART::OnExit, *new RESTART::Internal)
{
	_transitions[0] = new Transition_0();
}

RESTART::~RESTART()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
}

void RESTART::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_RESTART_VarRefs.mm"
#	include "State_RESTART_OnEntry.mm"
}

void RESTART::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_RESTART_VarRefs.mm"
#	include "State_RESTART_OnExit.mm"
}

void RESTART::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_RESTART_VarRefs.mm"
#	include "State_RESTART_Internal.mm"
}

bool RESTART::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_RESTART_VarRefs.mm"

	return
	(
#		include "State_RESTART_Transition_0.expr"
	);
}
