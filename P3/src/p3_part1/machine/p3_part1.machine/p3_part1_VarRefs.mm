//
//p3_part1_VarRefs.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
p3_part1 *_m = static_cast<p3_part1 *>(_machine);

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
ros::ServiceClient	&client= _m->client;	///<
ros::ServiceClient	&clientS= _m->clientS;	///<
ros_webots_epuck_nxt_differential_robot::RbuttonStatus	&srv= _m->srv;	///<
ros_webots_epuck_nxt_differential_robot::RsonarStatus	&srvS= _m->srvS;	///<
int	&waitTime= _m->waitTime;	///<

#pragma clang diagnostic pop
