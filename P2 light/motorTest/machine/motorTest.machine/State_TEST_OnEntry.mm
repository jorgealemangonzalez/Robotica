pushedLeft= static_cast<bool>(srv.response.left_pressed);
pushedRight= static_cast<bool>(srv.response.right_pressed);
sonarNear = (srvS.response.distance < 40);
//tooWheelSpins = !(srvE.response.valueL < 10000 || srvE.response.valueL > 60000 ) ;
tooWheelSpins = false;
lightChange = (srvL.response.light - lightInitial) < -lightTolerance || (srvL.response.light - lightInitial) > lightTolerance ;
