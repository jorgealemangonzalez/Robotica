buttonPushed=static_cast<bool>(srv.response.left_pressed) ||static_cast<bool>(srv.response.right_pressed) ;
sonarNear = (srvS.response.distance < 40);
tooWheelSpins = (srvE.response.valueL > 5000 || srvE.response.valueR > 5000);
