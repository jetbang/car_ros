; Auto-generated. Do not edit!


(cl:in-package jetbot-msg)


;//! \htmlinclude Uwb.msg.html

(cl:defclass <Uwb> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:integer
    :initform 0)
   (w
    :reader w
    :initarg :w
    :type cl:integer
    :initform 0))
)

(cl:defclass Uwb (<Uwb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Uwb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Uwb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbot-msg:<Uwb> is deprecated: use jetbot-msg:Uwb instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Uwb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:frame_id-val is deprecated.  Use jetbot-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <Uwb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:flag-val is deprecated.  Use jetbot-msg:flag instead.")
  (flag m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Uwb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:x-val is deprecated.  Use jetbot-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Uwb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:y-val is deprecated.  Use jetbot-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Uwb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:z-val is deprecated.  Use jetbot-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <Uwb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:w-val is deprecated.  Use jetbot-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Uwb>) ostream)
  "Serializes a message object of type '<Uwb>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'w)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Uwb>) istream)
  "Deserializes a message object of type '<Uwb>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'w)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Uwb>)))
  "Returns string type for a message object of type '<Uwb>"
  "jetbot/Uwb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Uwb)))
  "Returns string type for a message object of type 'Uwb"
  "jetbot/Uwb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Uwb>)))
  "Returns md5sum for a message object of type '<Uwb>"
  "d081c1ded50e40b797a8b93692c3f0f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Uwb)))
  "Returns md5sum for a message object of type 'Uwb"
  "d081c1ded50e40b797a8b93692c3f0f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Uwb>)))
  "Returns full string definition for message of type '<Uwb>"
  (cl:format cl:nil "uint32 frame_id~%uint8 flag~%uint32 x~%uint32 y~%uint32 z~%uint32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Uwb)))
  "Returns full string definition for message of type 'Uwb"
  (cl:format cl:nil "uint32 frame_id~%uint8 flag~%uint32 x~%uint32 y~%uint32 z~%uint32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Uwb>))
  (cl:+ 0
     4
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Uwb>))
  "Converts a ROS message object to a list"
  (cl:list 'Uwb
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':flag (flag msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':w (w msg))
))
