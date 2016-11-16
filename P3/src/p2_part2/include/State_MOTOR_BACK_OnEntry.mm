ros_webots_epuck_nxt_differential_robot::Rrobot msg;
msg.leftMotor.power=-50;
msg.rightMotor.power=-50;
robot_pub.publish(msg);
if(lightChange){
	timeBack = 200;
	timeSpin = 1000; //Falta calcular para 180 grados 
}else{
	 timeBack = 500;
	 timeSpin = 500; //A lo mejor es mucho giro
}
