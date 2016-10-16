// Generated by gencpp from file turtle_sensor_poster/TurtlePositionRequest.msg
// DO NOT EDIT!


#ifndef TURTLE_SENSOR_POSTER_MESSAGE_TURTLEPOSITIONREQUEST_H
#define TURTLE_SENSOR_POSTER_MESSAGE_TURTLEPOSITIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace turtle_sensor_poster
{
template <class ContainerAllocator>
struct TurtlePositionRequest_
{
  typedef TurtlePositionRequest_<ContainerAllocator> Type;

  TurtlePositionRequest_()
    {
    }
  TurtlePositionRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TurtlePositionRequest_

typedef ::turtle_sensor_poster::TurtlePositionRequest_<std::allocator<void> > TurtlePositionRequest;

typedef boost::shared_ptr< ::turtle_sensor_poster::TurtlePositionRequest > TurtlePositionRequestPtr;
typedef boost::shared_ptr< ::turtle_sensor_poster::TurtlePositionRequest const> TurtlePositionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace turtle_sensor_poster

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtle_sensor_poster/TurtlePositionRequest";
  }

  static const char* value(const ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TurtlePositionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::turtle_sensor_poster::TurtlePositionRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // TURTLE_SENSOR_POSTER_MESSAGE_TURTLEPOSITIONREQUEST_H
