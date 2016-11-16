//
//State_MOTOR_OFF.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "p2_part2_Includes.h"
#include "p2_part2.h"

#include "State_MOTOR_OFF.h"
#include "State_MOTOR_OFF_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMp2_part2;
using namespace State;

MOTOR_OFF::MOTOR_OFF(const char *name):CLState(name, *new MOTOR_OFF::OnEntry,*new MOTOR_OFF::OnExit, *new MOTOR_OFF::Internal)
{

}

MOTOR_OFF::~MOTOR_OFF()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void MOTOR_OFF::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part2_VarRefs.mm"
#	include "State_MOTOR_OFF_VarRefs.mm"
#	include "State_MOTOR_OFF_OnEntry.mm"
}

void MOTOR_OFF::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part2_VarRefs.mm"
#	include "State_MOTOR_OFF_VarRefs.mm"
#	include "State_MOTOR_OFF_OnExit.mm"
}

void MOTOR_OFF::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "p2_part2_VarRefs.mm"
#	include "State_MOTOR_OFF_VarRefs.mm"
#	include "State_MOTOR_OFF_Internal.mm"
}



