if(!is_suspended("p2_part3")){
	suspend("p2_part3");
}else{
	suspend("p2_part2");
	resume("p2_part3");
}

ros_webots_epuck_nxt_differential_robot::Rrobot msg;
msg.leftMotor.power=0;
msg.rightMotor.power=0;
robot_pub.publish(msg);
pushedLeft = 0;
pushedRight = 0;
