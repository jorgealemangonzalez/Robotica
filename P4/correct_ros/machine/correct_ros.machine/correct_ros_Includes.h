
#include "ros/ros.h"
#include "ros_switch/toto_is_doing.h"
#include "ros_switch/commands.h"
#include "ros_switch/motion_command.h"
#include "ros_pr2_fullrangelaserscan_to_sonar/toto_sonar_value.h"

#include <stdio.h>
#include <sstream>
#include "CLMacros.h"

// #define DEBUG
#define EDGING_DISTANCE	100	
#define TURN_TIME 800

#define STOPPED ((doingNow == GAZEBO_ROBOT_NO_COMMAND) || (doingNow == GAZEBO_ROBOT_STOP ))
// macros to find the minimu of 4 ints
#define MIN(a,b) (a<b ? a : b)
#define MAX(a,b) (a>b ? a : b)
#define MINOFFOUR (a,b,c,d) (MIN(a,MIN(b,MIN(c,d))))










