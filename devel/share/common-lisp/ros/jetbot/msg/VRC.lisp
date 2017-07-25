; Auto-generated. Do not edit!


(cl:in-package jetbot-msg)


;//! \htmlinclude VRC.msg.html

(cl:defclass <VRC> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass VRC (<VRC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VRC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VRC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbot-msg:<VRC> is deprecated: use jetbot-msg:VRC instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <VRC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:frame_id-val is deprecated.  Use jetbot-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <VRC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:data-val is deprecated.  Use jetbot-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VRC>) ostream)
  "Serializes a message object of type '<VRC>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VRC>) istream)
  "Deserializes a message object of type '<VRC>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VRC>)))
  "Returns string type for a message object of type '<VRC>"
  "jetbot/VRC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VRC)))
  "Returns string type for a message object of type 'VRC"
  "jetbot/VRC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VRC>)))
  "Returns md5sum for a message object of type '<VRC>"
  "6f14d77e44ec6f5eac4bc41cb3f06732")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VRC)))
  "Returns md5sum for a message object of type 'VRC"
  "6f14d77e44ec6f5eac4bc41cb3f06732")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VRC>)))
  "Returns full string definition for message of type '<VRC>"
  (cl:format cl:nil "uint32 frame_id~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VRC)))
  "Returns full string definition for message of type 'VRC"
  (cl:format cl:nil "uint32 frame_id~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VRC>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VRC>))
  "Converts a ROS message object to a list"
  (cl:list 'VRC
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':data (data msg))
))
