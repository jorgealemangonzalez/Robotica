
client_doing.call(srv);
doingNow= static_cast<GazeboRobotMotionCommand> (srv.response.command);
//CUIDADO ESTOS CALL PUEDEN HACER QUE LA MAQUINA SE PARE

sonar_srv.request.sonar_id=5;
s5= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=6;
s6= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=11;
s11= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;
sonar_srv.request.sonar_id=0;
s0= (client_sonar.call(sonar_srv)) ? sonar_srv.response.value_cm   : 255;

//std::cout<<"Sonars: "<<s5 <<" "<<s6 <<" "<<s7 <<" "<<s8 <<" "<<s9 <<" "<<s10 <<" "<<s11 <<" "<<s0 <<std::endl;
