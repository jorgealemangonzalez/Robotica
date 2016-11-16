int argc = 0;
distanceToKeep = 30;
actualDistance = 30;
distanceMargin = 5;
static char *argv[] = { "p3_part1" } ;
ros::init(argc, argv, "p3_part1");
n=new ros::NodeHandle();
robot_pub = n->advertise<ros_webots_epuck_nxt_differential_robot::Rrobot>("robot", 1000);
client = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RbuttonStatus>("buttonstatus");
clientS = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RsonarStatus>("sonarstatus");

while(1){
	if(client.call(srv) ){
		std::cout<<"Waiting to a button is pushed"<<std::endl;
		buttonPushed=static_cast<bool>(srv.response.left_pressed) ||static_cast<bool>(srv.response.right_pressed) ;
		if(buttonPushed)break;
	}
	ros::spinOnce();
}

ros_webots_epuck_nxt_differential_robot::Rrobot msg;
msg.leftMotor.power=0;
msg.rightMotor.power=0;
robot_pub.publish(msg);

