#include "ros/ros.h"
#include "geometry_msgs/Pose.h"
#include "geometry_msgs/Twist.h"
#include <sstream>


int main(int argc, char **argv)
{

 ros::init(argc, argv, "turtlesim_ex1");
 ros::NodeHandle n;

 //Publisher to /turtle1/cmd_vel
 ros::Rate loop_rate(10); //10 message per second

   int count = 0;
   srand (time(NULL));//To use random functions
   while (ros::ok()) {

    //Create msg for /turtle1/cmd_vel topic

    //Set the message parameters to move the turtle randomly

    //print the content of the message in the terminal
    ROS_INFO("...");

    //publish the message

    ros::spinOnce(); 

    loop_rate.sleep(); 
    count++;
   }
   return 0;
}
