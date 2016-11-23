ros_webots_epuck_nxt_differential_robot::Rrobot msg;

double actual = actualDistance-distanceToKeep;
double maximo = 120;
if(actual > maximo) actual = maximo;
int power = actual/maximo * 100;

msg.leftMotor.power= power;
msg.rightMotor.power= power;
robot_pub.publish(msg);
ros::spinOnce();
