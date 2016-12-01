

//motors forward
msg->command=GAZEBO_ROBOT_TURN_RIGHT;
command_pub.publish (*msg);
//poner el tiempo que tarda en girar 30 grados
