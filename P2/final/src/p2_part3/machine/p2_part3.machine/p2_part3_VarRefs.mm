//
//p2_part3_VarRefs.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
p2_part3 *_m = static_cast<p2_part3 *>(_machine);

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"
#pragma clang diagnostic ignored "-Wshadow"

ros::NodeHandle*	&n= _m->n;	///<
ros::Publisher	&robot_pub= _m->robot_pub;	///<
int	&distanceToKeep= _m->distanceToKeep;	///<
int	&actualDistance= _m->actualDistance;	///<
int	&distanceMargin= _m->distanceMargin;	///<
bool	&buttonPushed= _m->buttonPushed;	///<
bool	&sonarNear= _m->sonarNear;	///<
bool	&tooWheelSpins= _m->tooWheelSpins;	///<
ros::ServiceClient	&client= _m->client;	///<
ros::ServiceClient	&clientS= _m->clientS;	///<
ros::ServiceClient	&clientE= _m->clientE;	///<
ros_webots_epuck_nxt_differential_robot::RbuttonStatus	&srv= _m->srv;	///<
ros_webots_epuck_nxt_differential_robot::RsonarStatus	&srvS= _m->srvS;	///<
ros_webots_epuck_nxt_differential_robot::RencoderStatus	&srvE= _m->srvE;	///<

#pragma clang diagnostic pop
