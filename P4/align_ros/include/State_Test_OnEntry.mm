
msg->command=GAZEBO_ROBOT_NO_COMMAND;
command_pub.publish (*msg);

client_doing.call(srv);
doingNow= static_cast<GazeboRobotMotionCommand> (srv.response.command);

//CUIDADO ESTOS CALL PUEDEN HACER QUE LA MAQUINA SE PARE

sonar_srv.request.sonar_id=5;
s5= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=6;
s6= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=7;
s7= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=8;
s8= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=9;
s9= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=10;
s10= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=11;
s11= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=0;
s0= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;