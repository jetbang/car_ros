; Auto-generated. Do not edit!


(cl:in-package jetbot-msg)


;//! \htmlinclude CBus.msg.html

(cl:defclass <CBus> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (fs
    :reader fs
    :initarg :fs
    :type cl:integer
    :initform 0)
   (cp
    :reader cp
    :initarg :cp
    :type jetbot-msg:ChassisState
    :initform (cl:make-instance 'jetbot-msg:ChassisState))
   (cv
    :reader cv
    :initarg :cv
    :type jetbot-msg:ChassisState
    :initform (cl:make-instance 'jetbot-msg:ChassisState))
   (gp
    :reader gp
    :initarg :gp
    :type jetbot-msg:PantiltState
    :initform (cl:make-instance 'jetbot-msg:PantiltState))
   (gv
    :reader gv
    :initarg :gv
    :type jetbot-msg:PantiltState
    :initform (cl:make-instance 'jetbot-msg:PantiltState)))
)

(cl:defclass CBus (<CBus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CBus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CBus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbot-msg:<CBus> is deprecated: use jetbot-msg:CBus instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:frame_id-val is deprecated.  Use jetbot-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'fs-val :lambda-list '(m))
(cl:defmethod fs-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:fs-val is deprecated.  Use jetbot-msg:fs instead.")
  (fs m))

(cl:ensure-generic-function 'cp-val :lambda-list '(m))
(cl:defmethod cp-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:cp-val is deprecated.  Use jetbot-msg:cp instead.")
  (cp m))

(cl:ensure-generic-function 'cv-val :lambda-list '(m))
(cl:defmethod cv-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:cv-val is deprecated.  Use jetbot-msg:cv instead.")
  (cv m))

(cl:ensure-generic-function 'gp-val :lambda-list '(m))
(cl:defmethod gp-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:gp-val is deprecated.  Use jetbot-msg:gp instead.")
  (gp m))

(cl:ensure-generic-function 'gv-val :lambda-list '(m))
(cl:defmethod gv-val ((m <CBus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:gv-val is deprecated.  Use jetbot-msg:gv instead.")
  (gv m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CBus>) ostream)
  "Serializes a message object of type '<CBus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fs)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gv) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CBus>) istream)
  "Deserializes a message object of type '<CBus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fs)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gv) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CBus>)))
  "Returns string type for a message object of type '<CBus>"
  "jetbot/CBus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CBus)))
  "Returns string type for a message object of type 'CBus"
  "jetbot/CBus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CBus>)))
  "Returns md5sum for a message object of type '<CBus>"
  "b9efec3ad9b0e585f766ffbfebbe2a46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CBus)))
  "Returns md5sum for a message object of type 'CBus"
  "b9efec3ad9b0e585f766ffbfebbe2a46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CBus>)))
  "Returns full string definition for message of type '<CBus>"
  (cl:format cl:nil "uint32 frame_id~%uint32 fs~%ChassisState cp~%ChassisState cv~%PantiltState gp~%PantiltState gv~%================================================================================~%MSG: jetbot/ChassisState~%int32 x~%int32 y~%int32 z~%================================================================================~%MSG: jetbot/PantiltState~%int16 p~%int16 t~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CBus)))
  "Returns full string definition for message of type 'CBus"
  (cl:format cl:nil "uint32 frame_id~%uint32 fs~%ChassisState cp~%ChassisState cv~%PantiltState gp~%PantiltState gv~%================================================================================~%MSG: jetbot/ChassisState~%int32 x~%int32 y~%int32 z~%================================================================================~%MSG: jetbot/PantiltState~%int16 p~%int16 t~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CBus>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gv))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CBus>))
  "Converts a ROS message object to a list"
  (cl:list 'CBus
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':fs (fs msg))
    (cl:cons ':cp (cp msg))
    (cl:cons ':cv (cv msg))
    (cl:cons ':gp (gp msg))
    (cl:cons ':gv (gv msg))
))
