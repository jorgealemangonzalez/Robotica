//stop motors
msg->command=GAZEBO_ROBOT_STOP;
command_pub.publish (*msg);
