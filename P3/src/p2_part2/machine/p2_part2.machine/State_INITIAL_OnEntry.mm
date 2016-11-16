int argc = 0;
static char *argv[] = { "p2_part3" } ;
ros::init(argc, argv, "p2_part3");
n=new ros::NodeHandle();
robot_pub = n->advertise<ros_webots_epuck_nxt_differential_robot::Rrobot>("robot", 1000);
client = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RbuttonStatus>("buttonstatus");
clientS = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RsonarStatus>("sonarstatus");
clientE = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RencoderStatus>("encoderstatus");
clientL = n->serviceClient<ros_webots_epuck_nxt_differential_robot::RlightStatus>("lightstatus");
lightInitial = 0 ; 
lightTolerance = 10;

if(clientL.call(srvL)){
	lightInitial = srvL.response.light;
}else std::cout<<"Unable to connect to the sensor"<<std::endl;
