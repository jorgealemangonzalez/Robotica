ros_webots_epuck_nxt_differential_robot::Rrobot msg;
actualDistance = (actualDistance > 30+distanceToKeep ? 30+distanceToKeep : actualDistance);
//msg.leftMotor.power= (int) (actualDistance - distanceToKeep) ;
//msg.rightMotor.power=  (int) (actualDistance - distanceToKeep);
msg.leftMotor.power = 100;
msg.rightMotor.power = 100;
std::cout<<"Power front :"<<msg.leftMotor.power <<"actualDist: "<<actualDistance<<"distToKeep: "<<distanceToKeep<<std::endl; 
msg.leftButtonSwitch.on=true;
msg.rightButtonSwitch.on=true;
robot_pub.publish(msg);
ros::spinOnce();