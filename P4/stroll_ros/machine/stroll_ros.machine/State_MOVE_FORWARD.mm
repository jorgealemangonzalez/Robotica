//
// State_MOVE_FORWARD.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "stroll_ros_Includes.h"
#include "stroll_ros.h"
#include "State_MOVE_FORWARD.h"

#include "State_MOVE_FORWARD_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMstroll_ros;
using namespace State;

MOVE_FORWARD::MOVE_FORWARD(const char *name): CLState(name, *new MOVE_FORWARD::OnEntry, *new MOVE_FORWARD::OnExit, *new MOVE_FORWARD::Internal)
{
	_transitions[0] = new Transition_0();
}

MOVE_FORWARD::~MOVE_FORWARD()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
}

void MOVE_FORWARD::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_MOVE_FORWARD_VarRefs.mm"
#	include "State_MOVE_FORWARD_OnEntry.mm"
}

void MOVE_FORWARD::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_MOVE_FORWARD_VarRefs.mm"
#	include "State_MOVE_FORWARD_OnExit.mm"
}

void MOVE_FORWARD::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_MOVE_FORWARD_VarRefs.mm"
#	include "State_MOVE_FORWARD_Internal.mm"
}

bool MOVE_FORWARD::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_MOVE_FORWARD_VarRefs.mm"

	return
	(
#		include "State_MOVE_FORWARD_Transition_0.expr"
	);
}
