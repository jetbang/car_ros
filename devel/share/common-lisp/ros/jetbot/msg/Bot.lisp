; Auto-generated. Do not edit!


(cl:in-package jetbot-msg)


;//! \htmlinclude Bot.msg.html

(cl:defclass <Bot> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (cbus
    :reader cbus
    :initarg :cbus
    :type jetbot-msg:CBus
    :initform (cl:make-instance 'jetbot-msg:CBus)))
)

(cl:defclass Bot (<Bot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbot-msg:<Bot> is deprecated: use jetbot-msg:Bot instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Bot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:frame_id-val is deprecated.  Use jetbot-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'cbus-val :lambda-list '(m))
(cl:defmethod cbus-val ((m <Bot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:cbus-val is deprecated.  Use jetbot-msg:cbus instead.")
  (cbus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bot>) ostream)
  "Serializes a message object of type '<Bot>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cbus) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bot>) istream)
  "Deserializes a message object of type '<Bot>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cbus) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bot>)))
  "Returns string type for a message object of type '<Bot>"
  "jetbot/Bot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bot)))
  "Returns string type for a message object of type 'Bot"
  "jetbot/Bot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bot>)))
  "Returns md5sum for a message object of type '<Bot>"
  "676ff8c0e5861dafed1482bc0ebcac80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bot)))
  "Returns md5sum for a message object of type 'Bot"
  "676ff8c0e5861dafed1482bc0ebcac80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bot>)))
  "Returns full string definition for message of type '<Bot>"
  (cl:format cl:nil "uint32 frame_id~%CBus cbus~%================================================================================~%MSG: jetbot/CBus~%uint32 frame_id~%uint32 fs~%ChassisState cp~%ChassisState cv~%PantiltState gp~%PantiltState gv~%================================================================================~%MSG: jetbot/ChassisState~%int32 x~%int32 y~%int32 z~%================================================================================~%MSG: jetbot/PantiltState~%int16 p~%int16 t~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bot)))
  "Returns full string definition for message of type 'Bot"
  (cl:format cl:nil "uint32 frame_id~%CBus cbus~%================================================================================~%MSG: jetbot/CBus~%uint32 frame_id~%uint32 fs~%ChassisState cp~%ChassisState cv~%PantiltState gp~%PantiltState gv~%================================================================================~%MSG: jetbot/ChassisState~%int32 x~%int32 y~%int32 z~%================================================================================~%MSG: jetbot/PantiltState~%int16 p~%int16 t~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bot>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cbus))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bot>))
  "Converts a ROS message object to a list"
  (cl:list 'Bot
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':cbus (cbus msg))
))
