ros_webots_epuck_nxt_differential_robot::Rrobot msg;
if(sonarNear && !pushedRight && !pushedLeft){
if((int)std::rand()%2 == 0){
	msg.leftMotor.power=50;
	msg.rightMotor.power=-50;
}else{
	msg.leftMotor.power=-50;
	msg.rightMotor.power=50;
}
}else {
if(pushedRight){
	msg.leftMotor.power=-50;
	msg.rightMotor.power=50;
}
if(pushedLeft){
	msg.leftMotor.power=50;
	msg.rightMotor.power=-50;
}
}
msg.leftButtonSwitch.on=true;
msg.rightButtonSwitch.on=true;
robot_pub.publish(msg);
