ros_webots_epuck_nxt_differential_robot::Rrobot msg;
msg.leftMotor.power=-100;
msg.rightMotor.power=-100;
msg.leftButtonSwitch.on=true;
msg.rightButtonSwitch.on=true;
robot_pub.publish(msg);
