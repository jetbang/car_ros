; Auto-generated. Do not edit!


(cl:in-package jetbot-msg)


;//! \htmlinclude VHC.msg.html

(cl:defclass <VHC> (roslisp-msg-protocol:ros-message)
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

(cl:defclass VHC (<VHC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VHC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VHC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbot-msg:<VHC> is deprecated: use jetbot-msg:VHC instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <VHC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:frame_id-val is deprecated.  Use jetbot-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <VHC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:data-val is deprecated.  Use jetbot-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VHC>) ostream)
  "Serializes a message object of type '<VHC>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VHC>) istream)
  "Deserializes a message object of type '<VHC>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VHC>)))
  "Returns string type for a message object of type '<VHC>"
  "jetbot/VHC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VHC)))
  "Returns string type for a message object of type 'VHC"
  "jetbot/VHC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VHC>)))
  "Returns md5sum for a message object of type '<VHC>"
  "6f14d77e44ec6f5eac4bc41cb3f06732")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VHC)))
  "Returns md5sum for a message object of type 'VHC"
  "6f14d77e44ec6f5eac4bc41cb3f06732")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VHC>)))
  "Returns full string definition for message of type '<VHC>"
  (cl:format cl:nil "uint32 frame_id~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VHC)))
  "Returns full string definition for message of type 'VHC"
  (cl:format cl:nil "uint32 frame_id~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VHC>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VHC>))
  "Converts a ROS message object to a list"
  (cl:list 'VHC
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':data (data msg))
))
