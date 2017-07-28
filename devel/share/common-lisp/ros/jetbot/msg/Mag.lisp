; Auto-generated. Do not edit!


(cl:in-package jetbot-msg)


;//! \htmlinclude Mag.msg.html

(cl:defclass <Mag> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (mx
    :reader mx
    :initarg :mx
    :type cl:fixnum
    :initform 0)
   (my
    :reader my
    :initarg :my
    :type cl:fixnum
    :initform 0)
   (mz
    :reader mz
    :initarg :mz
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Mag (<Mag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbot-msg:<Mag> is deprecated: use jetbot-msg:Mag instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Mag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:frame_id-val is deprecated.  Use jetbot-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'mx-val :lambda-list '(m))
(cl:defmethod mx-val ((m <Mag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:mx-val is deprecated.  Use jetbot-msg:mx instead.")
  (mx m))

(cl:ensure-generic-function 'my-val :lambda-list '(m))
(cl:defmethod my-val ((m <Mag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:my-val is deprecated.  Use jetbot-msg:my instead.")
  (my m))

(cl:ensure-generic-function 'mz-val :lambda-list '(m))
(cl:defmethod mz-val ((m <Mag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:mz-val is deprecated.  Use jetbot-msg:mz instead.")
  (mz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mag>) ostream)
  "Serializes a message object of type '<Mag>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'my)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mag>) istream)
  "Deserializes a message object of type '<Mag>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mx) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'my) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mz) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mag>)))
  "Returns string type for a message object of type '<Mag>"
  "jetbot/Mag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mag)))
  "Returns string type for a message object of type 'Mag"
  "jetbot/Mag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mag>)))
  "Returns md5sum for a message object of type '<Mag>"
  "090022d6084392a110ec2c9910142e0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mag)))
  "Returns md5sum for a message object of type 'Mag"
  "090022d6084392a110ec2c9910142e0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mag>)))
  "Returns full string definition for message of type '<Mag>"
  (cl:format cl:nil "uint32 frame_id~%int16 mx~%int16 my~%int16 mz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mag)))
  "Returns full string definition for message of type 'Mag"
  (cl:format cl:nil "uint32 frame_id~%int16 mx~%int16 my~%int16 mz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mag>))
  (cl:+ 0
     4
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mag>))
  "Converts a ROS message object to a list"
  (cl:list 'Mag
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':mx (mx msg))
    (cl:cons ':my (my msg))
    (cl:cons ':mz (mz msg))
))
