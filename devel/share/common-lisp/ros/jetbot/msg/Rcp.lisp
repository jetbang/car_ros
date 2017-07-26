; Auto-generated. Do not edit!


(cl:in-package jetbot-msg)


;//! \htmlinclude Rcp.msg.html

(cl:defclass <Rcp> (roslisp-msg-protocol:ros-message)
  ((ch1
    :reader ch1
    :initarg :ch1
    :type cl:fixnum
    :initform 0)
   (ch2
    :reader ch2
    :initarg :ch2
    :type cl:fixnum
    :initform 0)
   (ch3
    :reader ch3
    :initarg :ch3
    :type cl:fixnum
    :initform 0)
   (ch4
    :reader ch4
    :initarg :ch4
    :type cl:fixnum
    :initform 0)
   (sw1
    :reader sw1
    :initarg :sw1
    :type cl:fixnum
    :initform 0)
   (sw2
    :reader sw2
    :initarg :sw2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Rcp (<Rcp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rcp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rcp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbot-msg:<Rcp> is deprecated: use jetbot-msg:Rcp instead.")))

(cl:ensure-generic-function 'ch1-val :lambda-list '(m))
(cl:defmethod ch1-val ((m <Rcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:ch1-val is deprecated.  Use jetbot-msg:ch1 instead.")
  (ch1 m))

(cl:ensure-generic-function 'ch2-val :lambda-list '(m))
(cl:defmethod ch2-val ((m <Rcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:ch2-val is deprecated.  Use jetbot-msg:ch2 instead.")
  (ch2 m))

(cl:ensure-generic-function 'ch3-val :lambda-list '(m))
(cl:defmethod ch3-val ((m <Rcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:ch3-val is deprecated.  Use jetbot-msg:ch3 instead.")
  (ch3 m))

(cl:ensure-generic-function 'ch4-val :lambda-list '(m))
(cl:defmethod ch4-val ((m <Rcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:ch4-val is deprecated.  Use jetbot-msg:ch4 instead.")
  (ch4 m))

(cl:ensure-generic-function 'sw1-val :lambda-list '(m))
(cl:defmethod sw1-val ((m <Rcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:sw1-val is deprecated.  Use jetbot-msg:sw1 instead.")
  (sw1 m))

(cl:ensure-generic-function 'sw2-val :lambda-list '(m))
(cl:defmethod sw2-val ((m <Rcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:sw2-val is deprecated.  Use jetbot-msg:sw2 instead.")
  (sw2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rcp>) ostream)
  "Serializes a message object of type '<Rcp>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ch1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ch2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ch3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ch4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rcp>) istream)
  "Deserializes a message object of type '<Rcp>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ch1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ch2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ch3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ch4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rcp>)))
  "Returns string type for a message object of type '<Rcp>"
  "jetbot/Rcp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rcp)))
  "Returns string type for a message object of type 'Rcp"
  "jetbot/Rcp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rcp>)))
  "Returns md5sum for a message object of type '<Rcp>"
  "5bd0f9dd4a8a3cd6a641f38748d7c7e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rcp)))
  "Returns md5sum for a message object of type 'Rcp"
  "5bd0f9dd4a8a3cd6a641f38748d7c7e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rcp>)))
  "Returns full string definition for message of type '<Rcp>"
  (cl:format cl:nil "uint16 ch1~%uint16 ch2~%uint16 ch3~%uint16 ch4~%uint8 sw1~%uint8 sw2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rcp)))
  "Returns full string definition for message of type 'Rcp"
  (cl:format cl:nil "uint16 ch1~%uint16 ch2~%uint16 ch3~%uint16 ch4~%uint8 sw1~%uint8 sw2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rcp>))
  (cl:+ 0
     2
     2
     2
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rcp>))
  "Converts a ROS message object to a list"
  (cl:list 'Rcp
    (cl:cons ':ch1 (ch1 msg))
    (cl:cons ':ch2 (ch2 msg))
    (cl:cons ':ch3 (ch3 msg))
    (cl:cons ':ch4 (ch4 msg))
    (cl:cons ':sw1 (sw1 msg))
    (cl:cons ':sw2 (sw2 msg))
))
