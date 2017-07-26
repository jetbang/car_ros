; Auto-generated. Do not edit!


(cl:in-package jetbot-msg)


;//! \htmlinclude DBus.msg.html

(cl:defclass <DBus> (roslisp-msg-protocol:ros-message)
  ((rcp
    :reader rcp
    :initarg :rcp
    :type jetbot-msg:Rcp
    :initform (cl:make-instance 'jetbot-msg:Rcp))
   (hcp
    :reader hcp
    :initarg :hcp
    :type jetbot-msg:Hcp
    :initform (cl:make-instance 'jetbot-msg:Hcp)))
)

(cl:defclass DBus (<DBus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DBus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DBus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbot-msg:<DBus> is deprecated: use jetbot-msg:DBus instead.")))

(cl:ensure-generic-function 'rcp-val :lambda-list '(m))
(cl:defmethod rcp-val ((m <DBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:rcp-val is deprecated.  Use jetbot-msg:rcp instead.")
  (rcp m))

(cl:ensure-generic-function 'hcp-val :lambda-list '(m))
(cl:defmethod hcp-val ((m <DBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:hcp-val is deprecated.  Use jetbot-msg:hcp instead.")
  (hcp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DBus>) ostream)
  "Serializes a message object of type '<DBus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rcp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hcp) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DBus>) istream)
  "Deserializes a message object of type '<DBus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rcp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hcp) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DBus>)))
  "Returns string type for a message object of type '<DBus>"
  "jetbot/DBus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DBus)))
  "Returns string type for a message object of type 'DBus"
  "jetbot/DBus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DBus>)))
  "Returns md5sum for a message object of type '<DBus>"
  "8afdad0d004f8088d4c832bf9a170a35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DBus)))
  "Returns md5sum for a message object of type 'DBus"
  "8afdad0d004f8088d4c832bf9a170a35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DBus>)))
  "Returns full string definition for message of type '<DBus>"
  (cl:format cl:nil "Rcp rcp~%Hcp hcp~%================================================================================~%MSG: jetbot/Rcp~%uint16 ch1~%uint16 ch2~%uint16 ch3~%uint16 ch4~%uint8 sw1~%uint8 sw2~%================================================================================~%MSG: jetbot/Hcp~%int16 mouse_speed_x~%int16 mouse_speed_y~%int16 mouse_speed_z~%uint8 mouse_button_left~%uint8 mouse_button_right~%uint16 key~%uint16 res~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DBus)))
  "Returns full string definition for message of type 'DBus"
  (cl:format cl:nil "Rcp rcp~%Hcp hcp~%================================================================================~%MSG: jetbot/Rcp~%uint16 ch1~%uint16 ch2~%uint16 ch3~%uint16 ch4~%uint8 sw1~%uint8 sw2~%================================================================================~%MSG: jetbot/Hcp~%int16 mouse_speed_x~%int16 mouse_speed_y~%int16 mouse_speed_z~%uint8 mouse_button_left~%uint8 mouse_button_right~%uint16 key~%uint16 res~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DBus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rcp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hcp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DBus>))
  "Converts a ROS message object to a list"
  (cl:list 'DBus
    (cl:cons ':rcp (rcp msg))
    (cl:cons ':hcp (hcp msg))
))
