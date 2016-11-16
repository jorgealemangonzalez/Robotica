/*
 * (c) Vlad Estivill-Castro (2016)
 */

#include "ros/ros.h"
#include "std_msgs/String.h"
#include "status_report/ShallStop.h"

int status_recorded;
/**
 * Record the status
 */
void recordCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s]", msg->data.c_str());
 if (('S'== msg->data.c_str()[0])
 || ('s'== msg->data.c_str()[0]))
     {
     status_recorded=1;
     ROS_INFO("changing the status to STOP");
     }
  else
     status_recorded=0;
}


/**
 * Implement the service
 */
bool shall_stop(status_report::ShallStop::Request  &req,
             status_report::ShallStop::Response &res)
    {
      res.stop_signal = (status_recorded==1) ? true : false;
      ROS_INFO("sending back response: [%d]", status_recorded);
      return true;
  }


int main(int argc, char **argv)
{
  status_recorded=0;

  ros::init(argc, argv, "status_recorder");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("status", 1000, recordCallback);
  ros::ServiceServer status_service = n.advertiseService("shall_stop",  shall_stop);

  ros::spin();

  return 0;
}
