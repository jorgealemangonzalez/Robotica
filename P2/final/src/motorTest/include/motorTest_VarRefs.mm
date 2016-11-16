//
//motorTest_VarRefs.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
motorTest *_m = static_cast<motorTest *>(_machine);

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"
#pragma clang diagnostic ignored "-Wshadow"

ros::NodeHandle*	&n= _m->n;	///<
ros_webots_epuck_nxt_differential_robot::RbuttonStatus	&srv= _m->srv;	///<
ros::Publisher	&robot_pub= _m->robot_pub;	///<
bool	&buttonPushed= _m->buttonPushed;	///<
ros::ServiceClient	&client= _m->client;	///<
ros_webots_epuck_nxt_differential_robot::RsonarStatus	&srvS= _m->srvS;	///<
bool	&sonarNear= _m->sonarNear;	///<
ros::ServiceClient	&clientS= _m->clientS;	///<
ros_webots_epuck_nxt_differential_robot::RencoderStatus	&srvE= _m->srvE;	///<
bool	&tooWheelSpins= _m->tooWheelSpins;	///<
ros::ServiceClient	&clientE= _m->clientE;	///<
bool	&pushedLeft= _m->pushedLeft;	///<
bool	&pushedRight= _m->pushedRight;	///<
ros::ServiceClient	&clientL= _m->clientL;	///<
ros_webots_epuck_nxt_differential_robot::RlightStatus	&srvL= _m->srvL;	///<
bool	&lightChange= _m->lightChange;	///<
int	&lightInitial= _m->lightInitial;	///<
int	&lightTolerance= _m->lightTolerance;	///<
int	&timeBack= _m->timeBack;	///<
int	&timeSpin= _m->timeSpin;	///<

#pragma clang diagnostic pop
