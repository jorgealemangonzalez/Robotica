//
// State_VERIFY.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "TurtleSuspendResumeOnTopic_Includes.h"
#include "TurtleSuspendResumeOnTopic.h"
#include "State_VERIFY.h"

#include "State_VERIFY_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMTurtleSuspendResumeOnTopic;
using namespace State;

VERIFY::VERIFY(const char *name): CLState(name, *new VERIFY::OnEntry, *new VERIFY::OnExit, *new VERIFY::Internal)
{
	_transitions[0] = new Transition_0();
	_transitions[1] = new Transition_1();
}

VERIFY::~VERIFY()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
	delete _transitions[1];
}

void VERIFY::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_VERIFY_VarRefs.mm"
#	include "State_VERIFY_OnEntry.mm"
}

void VERIFY::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_VERIFY_VarRefs.mm"
#	include "State_VERIFY_OnExit.mm"
}

void VERIFY::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_VERIFY_VarRefs.mm"
#	include "State_VERIFY_Internal.mm"
}

bool VERIFY::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_VERIFY_VarRefs.mm"

	return
	(
#		include "State_VERIFY_Transition_0.expr"
	);
}

bool VERIFY::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResumeOnTopic_VarRefs.mm"
#	include "State_VERIFY_VarRefs.mm"

	return
	(
#		include "State_VERIFY_Transition_1.expr"
	);
}
