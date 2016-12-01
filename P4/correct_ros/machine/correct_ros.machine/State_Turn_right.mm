//
//State_Turn_right.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "correct_ros_Includes.h"
#include "correct_ros.h"

#include "State_Turn_right.h"
#include "State_Turn_right_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMcorrect_ros;
using namespace State;

Turn_right::Turn_right(const char *name):CLState(name, *new Turn_right::OnEntry,*new Turn_right::OnExit, *new Turn_right::Internal)
{
	_transitions[0] = new Transition_0();
}

Turn_right::~Turn_right()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void Turn_right::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "correct_ros_VarRefs.mm"
#	include "State_Turn_right_VarRefs.mm"
#	include "State_Turn_right_OnEntry.mm"
}

void Turn_right::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "correct_ros_VarRefs.mm"
#	include "State_Turn_right_VarRefs.mm"
#	include "State_Turn_right_OnExit.mm"
}

void Turn_right::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "correct_ros_VarRefs.mm"
#	include "State_Turn_right_VarRefs.mm"
#	include "State_Turn_right_Internal.mm"
}

bool Turn_right::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "correct_ros_VarRefs.mm"
#	include "State_Turn_right_VarRefs.mm"

	return
	(
#			include "State_Turn_right_Transition_0.expr"
	);
}


