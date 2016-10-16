#include "ros/ros.h"
#include "turtlesim/Color.h"
#include "turtlesim/Pose.h"

//Pose
void pose_callback(const turtlesim::Pose& pose) {


  
}

int main(int argc, char **argv)
{

 ros::init(argc, argv, "turtlesim_ex1");
 ros::NodeHandle n;

 //Subscriber ...

 ros::spin();

 return 0;
}
