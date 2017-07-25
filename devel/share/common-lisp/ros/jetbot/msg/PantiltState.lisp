; Auto-generated. Do not edit!


(cl:in-package jetbot-msg)


;//! \htmlinclude PantiltState.msg.html

(cl:defclass <PantiltState> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type cl:fixnum
    :initform 0)
   (t
    :reader t
    :initarg :t
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PantiltState (<PantiltState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PantiltState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PantiltState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbot-msg:<PantiltState> is deprecated: use jetbot-msg:PantiltState instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <PantiltState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:p-val is deprecated.  Use jetbot-msg:p instead.")
  (p m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <PantiltState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:t-val is deprecated.  Use jetbot-msg:t instead.")
  (t m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PantiltState>) ostream)
  "Serializes a message object of type '<PantiltState>"
  (cl:let* ((signed (cl:slot-value msg 'p)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PantiltState>) istream)
  "Deserializes a message object of type '<PantiltState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'p) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PantiltState>)))
  "Returns string type for a message object of type '<PantiltState>"
  "jetbot/PantiltState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PantiltState)))
  "Returns string type for a message object of type 'PantiltState"
  "jetbot/PantiltState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PantiltState>)))
  "Returns md5sum for a message object of type '<PantiltState>"
  "0b08ea430ac45fde2716ea064d94e7a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PantiltState)))
  "Returns md5sum for a message object of type 'PantiltState"
  "0b08ea430ac45fde2716ea064d94e7a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PantiltState>)))
  "Returns full string definition for message of type '<PantiltState>"
  (cl:format cl:nil "int16 p~%int16 t~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PantiltState)))
  "Returns full string definition for message of type 'PantiltState"
  (cl:format cl:nil "int16 p~%int16 t~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PantiltState>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PantiltState>))
  "Converts a ROS message object to a list"
  (cl:list 'PantiltState
    (cl:cons ':p (p msg))
    (cl:cons ':t (t msg))
))
