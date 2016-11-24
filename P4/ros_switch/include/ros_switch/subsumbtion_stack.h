
#include "ros/ros.h"
#include "ros_switch/motion_command.h"
#include "ros_switch/toto_is_doing.h"
#include "ros_switch/commands.h"

#define SUBSUMBTION_LEVELS 10


#define SUBSUMBTION_LEVELS 10

class subsumbtion_stack {

	public:
        
	GazeboRobotMotionCommand subsumptionPostings[SUBSUMBTION_LEVELS];

        subsumbtion_stack();

        std::string banner() { return std::string("(c) Vlad Estivill_Castro, demo ROS subsumbtion switch");}

        void run(int argc, char **argv);


void motionCommandCallback(const ros_switch::motion_command::ConstPtr& msg);

bool motionCommandService(
   ros_switch::toto_is_doing::Request  &req,
   ros_switch::toto_is_doing::Response &res);

        private:
	GazeboRobotMotionCommand currentCommand;
	GazeboRobotMotionCommand reportingCurrentCommand;
};

