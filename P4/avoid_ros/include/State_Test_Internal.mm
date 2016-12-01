msg->command=GAZEBO_ROBOT_NO_COMMAND;
command_pub.publish (*msg);

client_doing.call(srv);
doingNow= static_cast<GazeboRobotMotionCommand> (srv.response.command);

sonar_srv.request.sonar_id=1;
s1= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=2;
s2= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=3;
s3= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=4;
s4= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
