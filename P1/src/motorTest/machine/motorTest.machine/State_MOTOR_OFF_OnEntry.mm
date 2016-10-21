ros_webots_epuck_nxt_differential_robot::Rmotor msg;
msg.power=0;
ROS_INFO("%d", msg.power);
robot_pub.publish(msg);
ros::spinOnce();
