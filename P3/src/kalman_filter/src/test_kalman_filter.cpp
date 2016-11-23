#include "ros/ros.h"
#include "noise_addition/NoisyFloat.h"
#include "kalman_filter/filter.h"
#include <cstdlib>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "test_kalman_filter");
	if (argc != 2)
	{
		ROS_INFO("usage: test_kalman_filter X ");
		return 1;
	}
	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<noise_addition::NoisyFloat>("the_noise_addition_service");
	ros::ServiceClient client2 = n.serviceClient<kalman_filter::filter>("kalman_filter_service");
	for(int i=0; i<1000; i++){
		noise_addition::NoisyFloat srv;
		srv.request.original = atoll(argv[1]);
		srv.request.mean = 0.0;
		srv.request.stddvn = 20.0;
		if (client.call(srv))
		{
			kalman_filter::filter srv2;
			srv2.request.in = srv.response.noisy;
			if(client2.call(srv2)){
				std::cout << /*srv.response.noisy << " " <<*/ srv2.response.out << "\n";
			}else{
				ROS_ERROR("Failed to call service filter");
	  			return 1;
	  		}
	  	}
		else
		{
	  		ROS_ERROR("Failed to call service noisy");
	  		return 1;
	  	}
  	}
	return 0;
}
