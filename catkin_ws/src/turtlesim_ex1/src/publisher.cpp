#include "ros/ros.h"
#include "geometry_msgs/Pose.h"
#include "geometry_msgs/Twist.h"
#include <sstream>


int main(int argc, char **argv)
{

 ros::init(argc, argv, "publisher");
 ros::NodeHandle n;

 //Publisher to /turtle1/cmd_vel
 ros::Publisher publi = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);
 
 ros::Rate loop_rate(10); //10 message per second

   int count = 0;
   srand (time(NULL));//To use random functions
   while (ros::ok()) {

    //Create msg for /turtle1/cmd_vel topic
	geometry_msgs::Twist msg ;
	
    //Set the message parameters to move the turtle randomly
	float random = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/2));
	msg.linear.x = random;
	random = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/4)) - 2.0;	//random float betwen -2.0 and 2.0
	msg.linear.y = random;
	random = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/4)) - 2.0;
	msg.linear.z = random;
	random = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/4)) - 2.0;
	msg.angular.x = random;
	random = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/4)) - 2.0;
	msg.angular.y = random;
	random = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/4)) - 2.0;
	msg.angular.z = random;
	random = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/4)) - 2.0;
	
	
    //print the content of the message in the terminal
    std::stringstream ss;
    ss << "Linear: " << msg.linear.x <<  " " << msg.linear.y << " " << msg.linear.z << "\nAngular: " << msg.angular.x << " " << msg.angular.y << " " << msg.angular.z << "\nRandom moves: "<<count+1;
    ROS_INFO(ss.str());

    //publish the message
	publi.publish(msg);
	
    ros::spinOnce(); 

    loop_rate.sleep(); 
    count++;
   }
   return 0;
}
