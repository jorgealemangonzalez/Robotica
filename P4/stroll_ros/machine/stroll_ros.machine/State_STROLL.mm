//
// State_STROLL.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "stroll_ros_Includes.h"
#include "stroll_ros.h"
#include "State_STROLL.h"

#include "State_STROLL_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMstroll_ros;
using namespace State;

STROLL::STROLL(const char *name): CLState(name, *new STROLL::OnEntry, *new STROLL::OnExit, *new STROLL::Internal)
{
	_transitions[0] = new Transition_0();
	_transitions[1] = new Transition_1();
	_transitions[2] = new Transition_2();
}

STROLL::~STROLL()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
	delete _transitions[1];
	delete _transitions[2];
}

void STROLL::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_STROLL_VarRefs.mm"
#	include "State_STROLL_OnEntry.mm"
}

void STROLL::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_STROLL_VarRefs.mm"
#	include "State_STROLL_OnExit.mm"
}

void STROLL::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_STROLL_VarRefs.mm"
#	include "State_STROLL_Internal.mm"
}

bool STROLL::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_STROLL_VarRefs.mm"

	return
	(
#		include "State_STROLL_Transition_0.expr"
	);
}

bool STROLL::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_STROLL_VarRefs.mm"

	return
	(
#		include "State_STROLL_Transition_1.expr"
	);
}

bool STROLL::Transition_2::check(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_STROLL_VarRefs.mm"

	return
	(
#		include "State_STROLL_Transition_2.expr"
	);
}
