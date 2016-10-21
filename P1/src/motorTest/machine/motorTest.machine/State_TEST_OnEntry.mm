buttonPushed=static_cast<bool>(srv.response.left_pressed) ||static_cast<bool>(srv.response.right_pressed) ;
sonarNear = (srvS.response.distance < 40);
