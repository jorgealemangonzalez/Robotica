//stop motors
level=3;
int argc = 0; static char *argv[1];
std::string node_name="ros_correct_node";
char * cstr = new char [node_name.length()+1];
std::strcpy (cstr, node_name.c_str());
argv[0]= cstr;

ros::init(argc, argv, "ros_correct_node");
n = new ros::NodeHandle();

command_pub = n->advertise<ros_switch::motion_command>("/behavior_command", 1000);

msg = new  ros_switch::motion_command();
msg->priority=level;
msg->command=GAZEBO_ROBOT_STOP;
command_pub.publish (*msg);

client_sonar = n->serviceClient<ros_pr2_fullrangelaserscan_to_sonar::toto_sonar_value>("provide_toto_sonar_value");
client_doing = n->serviceClient<ros_switch::toto_is_doing>("provide_toto_is_doing");

client_doing.call(srv);
doingNow= static_cast<GazeboRobotMotionCommand> (srv.response.command);

