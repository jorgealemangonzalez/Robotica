ros_webots_epuck_nxt_differential_robot::Rrobot msg;

double actual = distanceToKeep-actualDistance;
int power = actual/distanceToKeep * 100;

msg.leftMotor.power= -power;
msg.rightMotor.power= -power;
robot_pub.publish(msg);
