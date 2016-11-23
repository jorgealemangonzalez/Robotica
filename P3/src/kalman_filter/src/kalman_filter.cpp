#include "ros/ros.h"
#include "kalman_filter/filter.h"
#include "ros_webots_epuck_nxt_differential_robot/RsonarStatus.h"
#define ABS(a) (a<0 ? -a : a)
double values2[3];
bool filter2(	kalman_filter::filter::Request  &req,
		kalman_filter::filter::Response &res)
{
	double sum = 0.0;
	sum += 0.2 * (values2[0] = values2[1]);
	sum += 0.3 * (values2[1] = values2[2]);
	sum += 0.5 * (values2[2] = req.in);
	res.out = sum;
	
	std::cout << "Filtered distance: " << res.out << "\n";
	return true;
}

double values[3];
ros::ServiceClient client;
ros::ServiceServer service;
ros_webots_epuck_nxt_differential_robot::RsonarStatus srv;
bool filter(	ros_webots_epuck_nxt_differential_robot::RsonarStatus::Request  &req,
		ros_webots_epuck_nxt_differential_robot::RsonarStatus::Response &res)
{
	client.call(srv);
	double sum = 0.0;
	sum += 0.2 * (values[0] = values[1]);
	sum += 0.3 * (values[1] = values[2]);
	sum += 0.5 * (values[2] = srv.response.distance);
	res.distance = sum;
	//res.distance = srv.response.distance;
	
	//std::cout << "Filtered distance: " << res.distance << "\n";
	std::cout << res.distance << "\n";
	return true;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "kalman_filter_server");
	ros::NodeHandle n;
	client = n.serviceClient<ros_webots_epuck_nxt_differential_robot::RsonarStatus>("noisysonarstatus");
	ros::ServiceServer service = n.advertiseService("filtersonarstatus", filter);
	ros::ServiceServer service2 = n.advertiseService("kalman_filter_service", filter2);
	//ROS_INFO("Ready to filter.");
	ros::spin();
  	return 0;
 }
