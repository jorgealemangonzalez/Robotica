//
//p2_part3_Variables.h
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
bool	tooWheelSpins;	///<
ros::ServiceClient	client;	///<
ros::ServiceClient	clientS;	///<
ros::ServiceClient	clientE;	///<
ros_webots_epuck_nxt_differential_robot::RbuttonStatus	srv;	///<
ros_webots_epuck_nxt_differential_robot::RsonarStatus	srvS;	///<
ros_webots_epuck_nxt_differential_robot::RencoderStatus	srvE;	///<
