int cont = 100;

while(cont-- && ros::ok()){
msg->linear.x = 2.0;
msg->angular.z = 0.0;
chatter_pub.publish(*msg);
ros::spinOnce();
loop_rate->sleep();
}

