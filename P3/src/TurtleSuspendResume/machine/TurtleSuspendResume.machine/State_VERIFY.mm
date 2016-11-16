//
//State_VERIFY.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "TurtleSuspendResume_Includes.h"
#include "TurtleSuspendResume.h"

#include "State_VERIFY.h"
#include "State_VERIFY_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMTurtleSuspendResume;
using namespace State;

VERIFY::VERIFY(const char *name):CLState(name, *new VERIFY::OnEntry,*new VERIFY::OnExit, *new VERIFY::Internal)
{
	_transitions[0] = new Transition_0();
}

VERIFY::~VERIFY()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void VERIFY::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_VERIFY_VarRefs.mm"
#	include "State_VERIFY_OnEntry.mm"
}

void VERIFY::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_VERIFY_VarRefs.mm"
#	include "State_VERIFY_OnExit.mm"
}

void VERIFY::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_VERIFY_VarRefs.mm"
#	include "State_VERIFY_Internal.mm"
}

bool VERIFY::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "TurtleSuspendResume_VarRefs.mm"
#	include "State_VERIFY_VarRefs.mm"

	return
	(
#			include "State_VERIFY_Transition_0.expr"
	);
}


