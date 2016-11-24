
#include "ros_switch/subsumbtion_stack.h"
#include "geometry_msgs/Twist.h"


           ///< constructor
subsumbtion_stack::subsumbtion_stack()
    { banner();
      for (int i=0; i< SUBSUMBTION_LEVELS; i++)
	subsumptionPostings[i]=GAZEBO_ROBOT_NO_COMMAND;
}

bool subsumbtion_stack:: motionCommandService(
   ros_switch::toto_is_doing::Request  &req,
   ros_switch::toto_is_doing::Response &res)
{
	res.command =  reportingCurrentCommand;
	return true;
}

void subsumbtion_stack:: motionCommandCallback(const ros_switch::motion_command::ConstPtr& msg)
  {
      if ( (0<=  msg->priority) && (  msg->priority < SUBSUMBTION_LEVELS))
       {
        subsumptionPostings[msg->priority]=static_cast<GazeboRobotMotionCommand>  (msg->command);

        ROS_INFO("Updating level with priority: [%d] with command: [%d] ", msg->priority,  subsumptionPostings[msg->priority]);
       }
}

void subsumbtion_stack:: run(int argc, char **argv)
{
 ros::init(argc, argv, "a_ros_motion_switch");
 ros::NodeHandle n;
 ros::Subscriber sub = n.subscribe("behavior_command", 1000, &subsumbtion_stack::motionCommandCallback,this);
  
 ros::Publisher pub = n.advertise<geometry_msgs::Twist>("/base_controller/command", 1000);

  ros::ServiceServer serve_toto_is_doing = n.advertiseService("provide_toto_is_doing", &subsumbtion_stack::motionCommandService,this);

  ros::Rate loop_rate(10);

  geometry_msgs::Twist msg;

 currentCommand = GAZEBO_ROBOT_NO_COMMAND;

 while (ros::ok())
 {
	// THERE IS A RACE CONDITION HERE; the uglyness of ROS
	// This node may be queries about the current command
	// while updating it; using reportingCurrentCommand
	// to minimize the issue 

	// reset current command
   currentCommand = GAZEBO_ROBOT_NO_COMMAND;
   msg.linear.x = 0.0;
   msg.linear.y = 0.0;
   msg.linear.z = 0.0;

   msg.angular.x = 0.0;
   msg.angular.y = 0.0;
   msg.angular.z = 0.0;

	// find highes non-trival command
   for (int level=0; level < SUBSUMBTION_LEVELS ; level++)
       if (GAZEBO_ROBOT_NO_COMMAND != subsumptionPostings [level])
	  currentCommand=  subsumptionPostings [level];
	
   switch (currentCommand) 
	{
	  // no active comamnd is equivalent to stop
          case  GAZEBO_ROBOT_BACKWARDS :
   		msg.linear.x = -0.5;
                ROS_INFO("posting BACK");
		break;
          case  GAZEBO_ROBOT_MOVE_FORWARD :
   		msg.linear.x = 0.5;
                ROS_INFO("posting AHEAD");
		break;
          case  GAZEBO_ROBOT_TURN_LEFT :
		msg.angular.z = 1.0;
                ROS_INFO("posting LEFT");
		break;
          case  GAZEBO_ROBOT_TURN_RIGHT :
		msg.angular.z = -1.0;
                ROS_INFO("posting RIGHT");
		break;
          case  GAZEBO_ROBOT_NO_COMMAND :
          case	GAZEBO_ROBOT_STOP:
		 DEFAULT:
                 ROS_INFO("posting STOP");
        }

   pub.publish(msg);
   reportingCurrentCommand=currentCommand;
   ros::spinOnce();
   loop_rate.sleep();
 }

}
