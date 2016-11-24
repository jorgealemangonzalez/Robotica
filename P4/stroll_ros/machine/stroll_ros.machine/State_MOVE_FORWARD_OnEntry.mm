//motors forward
msg->command=GAZEBO_ROBOT_MOVE_FORWARD;
command_pub.publish (*msg);
