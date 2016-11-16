if(static_cast<bool>(srv.response.left_pressed))
	pushedLeft++;
else
	pushedLeft = 0;

if(static_cast<bool>(srv.response.right_pressed))
	pushedRight++;
else
	pushedLeft = 0;
