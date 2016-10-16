#include "ros/ros.h"
#include "turtlesim/Color.h"
#include "turtlesim/Pose.h"

//Pose
void pose_callback(const turtlesim::Pose& pose) {

	std::cout<<"\nx: "<< pose->x << " \ny: " << pose->y << " \ntheta: " << pose->theta << " \nlinear velocity: " << pose->linear_velocity << " \nangular velocity: " << pose->angular_velocity << "\n";
  
}

int main(int argc, char **argv)
{

 ros::init(argc, argv, "subscriber");
 ros::NodeHandle n;

 //Subscriber ...
 ros::Subscriver sub = n.subscribe("/turtle1/pose",1000,pose_callback);
	
 ros::spin();

 return 0;
}