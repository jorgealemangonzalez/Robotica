//
//State_Test.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "avoid_ros_Includes.h"
#include "avoid_ros.h"

#include "State_Test.h"
#include "State_Test_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMavoid_ros;
using namespace State;

Test::Test(const char *name):CLState(name, *new Test::OnEntry,*new Test::OnExit, *new Test::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

Test::~Test()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void Test::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "avoid_ros_VarRefs.mm"
#	include "State_Test_VarRefs.mm"
#	include "State_Test_OnEntry.mm"
}

void Test::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "avoid_ros_VarRefs.mm"
#	include "State_Test_VarRefs.mm"
#	include "State_Test_OnExit.mm"
}

void Test::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "avoid_ros_VarRefs.mm"
#	include "State_Test_VarRefs.mm"
#	include "State_Test_Internal.mm"
}

bool Test::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "avoid_ros_VarRefs.mm"
#	include "State_Test_VarRefs.mm"

	return
	(
#			include "State_Test_Transition_0.expr"
	);
}
bool Test::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "avoid_ros_VarRefs.mm"
#	include "State_Test_VarRefs.mm"

	return
	(
#			include "State_Test_Transition_1.expr"
	);
}


