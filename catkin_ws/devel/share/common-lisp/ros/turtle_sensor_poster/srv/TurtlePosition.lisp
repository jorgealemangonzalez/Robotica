; Auto-generated. Do not edit!


(cl:in-package turtle_sensor_poster-srv)


;//! \htmlinclude TurtlePosition-request.msg.html

(cl:defclass <TurtlePosition-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TurtlePosition-request (<TurtlePosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtlePosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtlePosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_sensor_poster-srv:<TurtlePosition-request> is deprecated: use turtle_sensor_poster-srv:TurtlePosition-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtlePosition-request>) ostream)
  "Serializes a message object of type '<TurtlePosition-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtlePosition-request>) istream)
  "Deserializes a message object of type '<TurtlePosition-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtlePosition-request>)))
  "Returns string type for a service object of type '<TurtlePosition-request>"
  "turtle_sensor_poster/TurtlePositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtlePosition-request)))
  "Returns string type for a service object of type 'TurtlePosition-request"
  "turtle_sensor_poster/TurtlePositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtlePosition-request>)))
  "Returns md5sum for a message object of type '<TurtlePosition-request>"
  "2b71e7da7070ce1a7abc2fb513bda0ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtlePosition-request)))
  "Returns md5sum for a message object of type 'TurtlePosition-request"
  "2b71e7da7070ce1a7abc2fb513bda0ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtlePosition-request>)))
  "Returns full string definition for message of type '<TurtlePosition-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtlePosition-request)))
  "Returns full string definition for message of type 'TurtlePosition-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtlePosition-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtlePosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtlePosition-request
))
;//! \htmlinclude TurtlePosition-response.msg.html

(cl:defclass <TurtlePosition-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass TurtlePosition-response (<TurtlePosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtlePosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtlePosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_sensor_poster-srv:<TurtlePosition-response> is deprecated: use turtle_sensor_poster-srv:TurtlePosition-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <TurtlePosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_sensor_poster-srv:x-val is deprecated.  Use turtle_sensor_poster-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <TurtlePosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_sensor_poster-srv:y-val is deprecated.  Use turtle_sensor_poster-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <TurtlePosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_sensor_poster-srv:theta-val is deprecated.  Use turtle_sensor_poster-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtlePosition-response>) ostream)
  "Serializes a message object of type '<TurtlePosition-response>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtlePosition-response>) istream)
  "Deserializes a message object of type '<TurtlePosition-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtlePosition-response>)))
  "Returns string type for a service object of type '<TurtlePosition-response>"
  "turtle_sensor_poster/TurtlePositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtlePosition-response)))
  "Returns string type for a service object of type 'TurtlePosition-response"
  "turtle_sensor_poster/TurtlePositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtlePosition-response>)))
  "Returns md5sum for a message object of type '<TurtlePosition-response>"
  "2b71e7da7070ce1a7abc2fb513bda0ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtlePosition-response)))
  "Returns md5sum for a message object of type 'TurtlePosition-response"
  "2b71e7da7070ce1a7abc2fb513bda0ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtlePosition-response>)))
  "Returns full string definition for message of type '<TurtlePosition-response>"
  (cl:format cl:nil "int64 x~%int64 y~%float64 theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtlePosition-response)))
  "Returns full string definition for message of type 'TurtlePosition-response"
  (cl:format cl:nil "int64 x~%int64 y~%float64 theta~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtlePosition-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtlePosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtlePosition-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TurtlePosition)))
  'TurtlePosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TurtlePosition)))
  'TurtlePosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtlePosition)))
  "Returns string type for a service object of type '<TurtlePosition>"
  "turtle_sensor_poster/TurtlePosition")