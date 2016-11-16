#include "ros/ros.h"
#include "status_report/ShallStop.h"
#include <cstdlib>
 
int main(int argc, char **argv)
{
	ros::init(argc, argv, "test_client");
  	ros::NodeHandle n;
  	ros::ServiceClient client =
		 n.serviceClient<status_report::ShallStop>("shall_stop");
  	status_report::ShallStop srv;
  	while (client.call(srv))
  	{
	 if (srv.response.stop_signal)
  		ROS_INFO("status is STOP" );
         else
  		ROS_INFO("status is continue" );
	 sleep(2);
        }

	ROS_ERROR("Failed to call service ");
	return 0;
}
