ros_webots_epuck_nxt_differential_robot::Rrobot msg;
msg.leftMotor.power= (actualDistance - distanceToKeep + distanceMargin) * 0.5;
msg.rightMotor.power= (actualDistance - distanceToKeep + distanceMargin) * 0.5;
robot_pub.publish(msg);
ros::spinOnce();
