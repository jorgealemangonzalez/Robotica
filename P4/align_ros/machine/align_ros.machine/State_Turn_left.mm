//
//State_Turn_left.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "align_ros_Includes.h"
#include "align_ros.h"

#include "State_Turn_left.h"
#include "State_Turn_left_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMalign_ros;
using namespace State;

Turn_left::Turn_left(const char *name):CLState(name, *new Turn_left::OnEntry,*new Turn_left::OnExit, *new Turn_left::Internal)
{
	_transitions[0] = new Transition_0();
}

Turn_left::~Turn_left()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void Turn_left::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "align_ros_VarRefs.mm"
#	include "State_Turn_left_VarRefs.mm"
#	include "State_Turn_left_OnEntry.mm"
}

void Turn_left::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "align_ros_VarRefs.mm"
#	include "State_Turn_left_VarRefs.mm"
#	include "State_Turn_left_OnExit.mm"
}

void Turn_left::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "align_ros_VarRefs.mm"
#	include "State_Turn_left_VarRefs.mm"
#	include "State_Turn_left_Internal.mm"
}

bool Turn_left::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "align_ros_VarRefs.mm"
#	include "State_Turn_left_VarRefs.mm"

	return
	(
#			include "State_Turn_left_Transition_0.expr"
	);
}


