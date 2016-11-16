//
// State_WAIT.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "TurtleSuspendResumeOnTopic_Includes.h"
#include "TurtleSuspendResumeOnTopic.h"
#include "State_WAIT.h"

#include "State_WAIT_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMTurtleSuspendResumeOnTopic;
using namespace State;

WAIT::WAIT(const char *name): CLState(name, *new WAIT::OnEntry, *new WAIT::OnExit, *new WAIT::Internal)
{
	_transitions[0] = new Transition_0();
}

WAIT::~WAIT()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
}

void WAIT::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_WAIT_VarRefs.mm"
#	include "State_WAIT_OnEntry.mm"
}

void WAIT::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_WAIT_VarRefs.mm"
#	include "State_WAIT_OnExit.mm"
}

void WAIT::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_WAIT_VarRefs.mm"
#	include "State_WAIT_Internal.mm"
}

bool WAIT::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_WAIT_VarRefs.mm"

	return
	(
#		include "State_WAIT_Transition_0.expr"
	);
}
