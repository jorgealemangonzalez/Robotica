ros_webots_epuck_nxt_differential_robot::Rrobot msg;
msg.leftMotor.power=-50;
msg.rightMotor.power=-50;
msg.leftButtonSwitch.on=true;
msg.rightButtonSwitch.on=true;
robot_pub.publish(msg);
if(lightChange){
	timeBack = 500;
	timeSpin = 600; //Falta calcular para 180 grados 
}else{
	 timeBack = 700;
	 timeSpin = 200; //A lo mejor es mucho giro
}
