int argc = 0;
static char *argv[] = { "motortest" } ;
ros::init(argc, argv, "motortest");
n=new ros::NodeHandle();
robot_pub = n->advertise<ros_webots_epuck_nxt_differential_robot::Rrobot>("robot", 1000);
client = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RbuttonStatus>("buttonstatus");
clientS = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RsonarStatus>("sonarstatus");
clientE = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RencoderStatus>("encoderstatus");
