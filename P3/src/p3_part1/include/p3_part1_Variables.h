//
//p3_part1_Variables.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
ros::NodeHandle*	n;	///<
ros::Publisher	robot_pub;	///<
int	distanceToKeep;	///<
int	actualDistance;	///<
int	distanceMargin;	///<
bool	buttonPushed;	///<
bool	sonarNear;	///<
ros::ServiceClient	client;	///<
ros::ServiceClient	clientS;	///<
ros_webots_epuck_nxt_differential_robot::RbuttonStatus	srv;	///<
ros_webots_epuck_nxt_differential_robot::RsonarStatus	srvS;	///<
