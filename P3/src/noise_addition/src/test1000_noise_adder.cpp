/*****************************************************************
*
*   Testing adding noise with univariate normal distribution
*
*	(c) Vlad Estivill-Castro
*
******************************************************************/
#include "ros/ros.h"
#include "noise_addition/NoisyFloat.h"
#include <cstdlib>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "test1000_noise_adder");
	if (argc != 2)
	{
		ROS_INFO("usage: test1000_noise_adder X ");
		return 1;
	}
	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<noise_addition::NoisyFloat>("the_noise_addition_service");
	for(int i=0; i<1000; i++){
		noise_addition::NoisyFloat srv;
		srv.request.original = atoll(argv[1]);
		srv.request.mean = 0.0;
		srv.request.stddvn = 1.0;
		if (client.call(srv))
		{
			std::cout << srv.response.noisy << "\n";
			//ROS_INFO("Noisy: %f", srv.response.noisy);
	  	}
		else
		{
	  		ROS_ERROR("Failed to call service noise_addition");
	  		return 1;
	  	}
  	}
	return 0;
}
