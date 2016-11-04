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
int	&distanceToKeep= _m->distanceToKeep;	///<
int	&actualDistance= _m->actualDistance;	///<
int	&distanceMargin= _m->distanceMargin;	///<

#pragma clang diagnostic pop
