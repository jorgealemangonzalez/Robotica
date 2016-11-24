#include "ros/ros.h"
#include "ros_switch/toto_is_doing.h"
#include "ros_switch/commands.h"
#include "ros_switch/motion_command.h"
#include "ros_pr2_fullrangelaserscan_to_sonar/toto_sonar_value.h"

#include <stdio.h>
#include <sstream>
#include "CLMacros.h"

// #define DEBUG
#define DANGER_ZONE	30	// 30 cm is considered the danger zone

#define STOPPED ((doingNow == GAZEBO_ROBOT_NO_COMMAND) || (doingNow == GAZEBO_ROBOT_STOP ))
// macros to find the minimu of 4 ints
#define MIN_F_TWO (s1<s2? s1:s2)
#define MIN_L_TWO (s3<s4? s3:s4)
#define MINOFFOUR ( MIN_F_TWO < MIN_L_TWO ? MIN_F_TWO : MIN_L_TWO)
