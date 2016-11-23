/*****************************************************************
*
*   Adding noise with univariate normal distribution
*
*	(c) Vlad Estivill-Castro
*
******************************************************************/
#include "ros/ros.h"
#include "noise_addition/NoisyFloat.h"
#include "noise_addition/boxmuller.h"
#include "ros_webots_epuck_nxt_differential_robot/RsonarStatus.h"
#include <sys/time.h>

long long current_timestamp() {
    struct timeval te; 
    gettimeofday(&te, NULL); // get current time
    long long milliseconds = te.tv_sec*1000LL + te.tv_usec/1000; // caculate milliseconds
    // printf("milliseconds: %lld\n", milliseconds);
    return milliseconds;
}

ros::ServiceServer service2;
bool add_noise(	noise_addition::NoisyFloat::Request  &req,
		noise_addition::NoisyFloat::Response &res)
{
	res.noisy = req.original + BOX_MULLER:: box_muller(req.mean,req.stddvn);
	ROS_INFO("request: x=%f, mean=%f, standard-deviation=%f, ", req.original,req.mean, req.stddvn);
	ROS_INFO("sending back response: [%f]", res.noisy);
	return true;
}

ros::ServiceClient client;
ros::ServiceServer service;
ros_webots_epuck_nxt_differential_robot::RsonarStatus srv;
bool add_noise_sonar(	ros_webots_epuck_nxt_differential_robot::RsonarStatus::Request  &req,
		ros_webots_epuck_nxt_differential_robot::RsonarStatus::Response &res)
{
	client.call(srv);
	res.distance = srv.response.distance + BOX_MULLER::box_muller(0.0,100.0);
	std::cout << res.distance << "\n";
	return true;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "noise_addition_server");
	ros::NodeHandle n;
	// take a new random seed
	srandom(current_timestamp());
	service2 = n.advertiseService("the_noise_addition_service", add_noise);
	
	// noisysonar
	service = n.advertiseService("noisysonarstatus", add_noise_sonar);
	client = n.serviceClient<ros_webots_epuck_nxt_differential_robot::RsonarStatus>("sonarstatus");
	
	//ROS_INFO("Ready to add noise.");
	ros::spin();
  	return 0;
 }
