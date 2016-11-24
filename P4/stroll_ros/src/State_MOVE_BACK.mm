//
// State_MOVE_BACK.mm
//
// Automatically created through MiCASE -- do not change manually!
//
#include "stroll_ros_Includes.h"
#include "stroll_ros.h"
#include "State_MOVE_BACK.h"

#include "State_MOVE_BACK_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMstroll_ros;
using namespace State;

MOVE_BACK::MOVE_BACK(const char *name): CLState(name, *new MOVE_BACK::OnEntry, *new MOVE_BACK::OnExit, *new MOVE_BACK::Internal)
{
	_transitions[0] = new Transition_0();
}

MOVE_BACK::~MOVE_BACK()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

	delete _transitions[0];
}

void MOVE_BACK::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_MOVE_BACK_VarRefs.mm"
#	include "State_MOVE_BACK_OnEntry.mm"
}

void MOVE_BACK::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_MOVE_BACK_VarRefs.mm"
#	include "State_MOVE_BACK_OnExit.mm"
}

void MOVE_BACK::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_MOVE_BACK_VarRefs.mm"
#	include "State_MOVE_BACK_Internal.mm"
}

bool MOVE_BACK::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "stroll_ros_VarRefs.mm"
#	include "State_MOVE_BACK_VarRefs.mm"

	return
	(
#		include "State_MOVE_BACK_Transition_0.expr"
	);
}
