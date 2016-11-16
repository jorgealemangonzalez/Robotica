//
//p2_part2_Variables.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
ros::NodeHandle*	n;	///<
ros_webots_epuck_nxt_differential_robot::RbuttonStatus	srv;	///<
ros::Publisher	robot_pub;	///<
bool	buttonPushed;	///<
ros::ServiceClient	client;	///<
ros_webots_epuck_nxt_differential_robot::RsonarStatus	srvS;	///<
bool	sonarNear;	///<
ros::ServiceClient	clientS;	///<
ros_webots_epuck_nxt_differential_robot::RencoderStatus	srvE;	///<
bool	tooWheelSpins;	///<
ros::ServiceClient	clientE;	///<
bool	pushedLeft;	///<
bool	pushedRight;	///<
ros::ServiceClient	clientL;	///<
ros_webots_epuck_nxt_differential_robot::RlightStatus	srvL;	///<
bool	lightChange;	///<
int	lightInitial;	///<
int	lightTolerance;	///<
int	timeBack;	///<
int	timeSpin;	///<
