#include "ros/ros.h"
#include "sensor_msgs/LaserScan.h"
#include "sensor_msgs/Range.h"
#include "ros_pr2_fullrangelaserscan_to_sonar/toto_sonar_value.h"
#include <string>    
#include <sstream>    

#define myPi 3.141592
#define TOTO_SONARS 12

/* From the PR2, we recieve two sensor_msgs/LaserScan messages:
 * 	/base_scan - from the laser at the base of the robot
 * 	/tilt_scan - from the pan-tilt laser at shoulder height
 * We will use the /base_scan LaserScan here as it covers the front ~260 deg of the robot, which means that
 * 	extreme right measurement: -2.2689 rad
 * 	extreme left measurement :  2.2689 rad
 * The LaserScan ranges to match Toto's sonar sensors are:
	*0: pi/2 	to 	2pi/6
	*1: 2pi/6	to	pi/6
	*2: pi/6	to	0
	*3: 0		to	-pi/6
	*4: -pi/6	to	-2pi/6
	*5: -2pi/6	to	-pi/2
 *
 */

class ToToSONARS {

public:
   ToToSONARS (ros::NodeHandle n )
    {
        sub_front_scan = n.subscribe("base_scan", 1000,  &ToToSONARS::frontScanCallback,this);
        sub_rear_scan = n.subscribe("rear_scan", 1000,  &ToToSONARS::rearScanCallback,this);
        serve_toto_sonar_values = n.advertiseService("provide_toto_sonar_value", &ToToSONARS::provide_toto_sonar_value_service,this);
        for (uint8_t sonar_id=0; sonar_id<TOTO_SONARS; sonar_id++)
            record_sonar_value(sonar_id,255);
    }

void record_sonar_value(uint8_t sonar_id, uint8_t value)
{
    if ((0<= sonar_id) && (sonar_id < TOTO_SONARS ))
    	current_toto_sonar_value[sonar_id]=value;
}

bool provide_toto_sonar_value_service (      
             ros_pr2_fullrangelaserscan_to_sonar::toto_sonar_value::Request  &req,
             ros_pr2_fullrangelaserscan_to_sonar::toto_sonar_value::Response &res)
{   res.value_cm = 0;
    if ((req.sonar_id <0) || (req.sonar_id >= TOTO_SONARS))
	return false;
   else
	{     res.value_cm = current_toto_sonar_value[req.sonar_id];
		return true;
	}
}

/*
 * Convert front laser scan (/base_scan) into sonar reasons 0-6 & 11.
 */
void frontScanCallback (const sensor_msgs::LaserScan::ConstPtr& scan_in)
{
  int n_measurements[TOTO_SONARS];
  for (int i=0; i< TOTO_SONARS; i++)
	{ // skip values obtained from back laser scanner
          if ((7!=i) && (8!=i) && (9!=i) && (10!=i))
              toto_sonars[i]=255.0;
	  n_measurements[i]=0;
	}

  ROS_INFO("NEW FRONT SCAN: Min angle [%f] | Max angle [%f]", scan_in->angle_min, scan_in->angle_max);
  
  double  theLaserAperture= scan_in->angle_min;
  int i=0;
  int sonar_id=7;

  //Loop through each LaserScan angle_increment and adjust reading based on each
  while (theLaserAperture < scan_in->angle_max)
  {  
	  if ( theLaserAperture <= -myPi/2.0 && theLaserAperture > -4*myPi/6.0)
		{  sonar_id=6; }
	/* s5 */
    else if (( -myPi/2.0 <= theLaserAperture ) && ( theLaserAperture <= -myPi/3.0 ) )
		{  sonar_id=5; }
	/* s4 */
    else if (( -myPi/3.0 <= theLaserAperture ) && ( theLaserAperture <= -myPi/6.0 ) )
		{  sonar_id=4; }
	/* s3 */
    else if (( -myPi/6.0 < theLaserAperture ) && ( theLaserAperture <= 0.0 ) )
		{  sonar_id=3; }
	/* s2 */
    else if (( 0.0 < theLaserAperture ) && ( theLaserAperture <= myPi/6.0 ) )
		{  sonar_id=2; }
	/* s1 */
    else if (( myPi/6.0 < theLaserAperture ) && ( theLaserAperture <= myPi/3.0 ) )
		{  sonar_id=1; }
	/* s0 */
    else if (( myPi/3.0 < theLaserAperture ) && ( theLaserAperture <= myPi/2.0 ) )
		{  sonar_id=0; }
	/* s11 */
    else if ( myPi/2.0 < theLaserAperture && 4*myPi/6.0 >= theLaserAperture )
		{  sonar_id=11; }

	if ((7!=sonar_id) && (8!=sonar_id) && (9!=sonar_id) && (10!=sonar_id)) {
	         toto_sonars[sonar_id] =  scan_in->ranges[i] < toto_sonars[sonar_id] ? scan_in->ranges[i] : toto_sonars[sonar_id];
	}
	n_measurements[sonar_id]+=1;
	i++;
	theLaserAperture+= scan_in->angle_increment;
  }

  // convert meters to centimeters and Cap sonar reading to 255
  for (int i=0; i< TOTO_SONARS; i++)
	{ if ((7!=i) && (8!=i) && (9!=i) && (10!=i))
          {
            toto_sonars[i]=100.0*toto_sonars[i];
            uint8_t cap_as_int = toto_sonars[i] >255? 255 : uint8_t(toto_sonars[i]);
            record_sonar_value(i, cap_as_int);
            ROS_INFO("s[%d] value: [%d]", i, cap_as_int );
          }
	}
}


/*
 * Convert rear laser scan (/rear_scan) into sonar regioons 7-10.
 */
void rearScanCallback (const sensor_msgs::LaserScan::ConstPtr& scan_in)
{
  int n_measurements[TOTO_SONARS];
  for (int i=0; i< TOTO_SONARS; i++)
	{ // skip values obtained from front sonar
          if ((7==i) || (8==i) || (9==i) || (10==i))
              toto_sonars[i]=255.0;
	  n_measurements[i]=0;
	}

  ROS_INFO("NEW REAR SCAN: Min angle [%f] | Max angle [%f]", scan_in->angle_min, scan_in->angle_max);

  double  theLaserAperture= scan_in->angle_min;
  int i=0;
  int sonar_id=0;

  //Loop through each LaserScan angle_increment and adjust reading based on each
  while (theLaserAperture < scan_in->angle_max) {
	 if(theLaserAperture >= myPi/6.0) {
		 sonar_id = 7;
	 } else if (myPi/6.0 >= theLaserAperture && theLaserAperture > 0) {
		 sonar_id = 8;
	 } else if (0 >= theLaserAperture && theLaserAperture > -myPi/6.0) {
		 sonar_id = 9;
	 } else if (theLaserAperture < -myPi/6.0) {
		 sonar_id = 10;
	 }

	//Keep only the shortest distance for this sonar range
	if ((7==sonar_id) || (8==sonar_id) || (9==sonar_id) || (10==sonar_id)) {
			//ROS_INFO("Sonar #[%d] with value [%f]", sonar_id, scan_in->ranges[i]);
	         toto_sonars[sonar_id] =  scan_in->ranges[i] < toto_sonars[sonar_id] ? scan_in->ranges[i] : toto_sonars[sonar_id];
	}
	n_measurements[sonar_id]+=1;
	i++;
	theLaserAperture+= scan_in->angle_increment;
  }

  // convert meters to centimeters
  for (int i=0; i< TOTO_SONARS; i++)
	{ if ((7==i) || (8==i) || (9==i) || (10==i))
          {
            toto_sonars[i]=100.0*toto_sonars[i];
            uint8_t cap_as_int = toto_sonars[i] >255? 255 : uint8_t(toto_sonars[i]);
            record_sonar_value(i, cap_as_int);
            ROS_INFO("s[%d] value: [%d]", i, cap_as_int );
          }
	}

}


protected:
  ros::Subscriber sub_rear_scan;
  ros::Subscriber sub_front_scan;
  ros::ServiceServer serve_toto_sonar_values;

  // to read the values
  double toto_sonars[TOTO_SONARS];

  // topond to queries for values
  uint8_t current_toto_sonar_value[TOTO_SONARS];
};

int main(int argc, char **argv)
{
  ros::init(argc, argv, "scan_to_sonar");
  ros::NodeHandle n;
  ToToSONARS subscribers_and_server(n);

  ros::spin();

  return 0;
}
