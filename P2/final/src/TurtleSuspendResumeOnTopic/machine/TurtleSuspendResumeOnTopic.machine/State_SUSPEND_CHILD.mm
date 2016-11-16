//
// State_SUSPEND_CHILD.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "TurtleSuspendResumeOnTopic_Includes.h"
#include "TurtleSuspendResumeOnTopic.h"
#include "State_SUSPEND_CHILD.h"

#include "State_SUSPEND_CHILD_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMTurtleSuspendResumeOnTopic;
using namespace State;

SUSPEND_CHILD::SUSPEND_CHILD(const char *name): CLState(name, *new SUSPEND_CHILD::OnEntry, *new SUSPEND_CHILD::OnExit, *new SUSPEND_CHILD::Internal)
{
	_transitions[0] = new Transition_0();
	_transitions[1] = new Transition_1();
}

SUSPEND_CHILD::~SUSPEND_CHILD()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
	delete _transitions[1];
}

void SUSPEND_CHILD::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_SUSPEND_CHILD_VarRefs.mm"
#	include "State_SUSPEND_CHILD_OnEntry.mm"
}

void SUSPEND_CHILD::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_SUSPEND_CHILD_VarRefs.mm"
#	include "State_SUSPEND_CHILD_OnExit.mm"
}

void SUSPEND_CHILD::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_SUSPEND_CHILD_VarRefs.mm"
#	include "State_SUSPEND_CHILD_Internal.mm"
}

bool SUSPEND_CHILD::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_SUSPEND_CHILD_VarRefs.mm"

	return
	(
#		include "State_SUSPEND_CHILD_Transition_0.expr"
	);
}

bool SUSPEND_CHILD::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_SUSPEND_CHILD_VarRefs.mm"

	return
	(
#		include "State_SUSPEND_CHILD_Transition_1.expr"
	);
}
