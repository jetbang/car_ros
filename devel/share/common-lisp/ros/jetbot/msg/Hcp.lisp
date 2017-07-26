; Auto-generated. Do not edit!


(cl:in-package jetbot-msg)


;//! \htmlinclude Hcp.msg.html

(cl:defclass <Hcp> (roslisp-msg-protocol:ros-message)
  ((mouse_speed_x
    :reader mouse_speed_x
    :initarg :mouse_speed_x
    :type cl:fixnum
    :initform 0)
   (mouse_speed_y
    :reader mouse_speed_y
    :initarg :mouse_speed_y
    :type cl:fixnum
    :initform 0)
   (mouse_speed_z
    :reader mouse_speed_z
    :initarg :mouse_speed_z
    :type cl:fixnum
    :initform 0)
   (mouse_button_left
    :reader mouse_button_left
    :initarg :mouse_button_left
    :type cl:fixnum
    :initform 0)
   (mouse_button_right
    :reader mouse_button_right
    :initarg :mouse_button_right
    :type cl:fixnum
    :initform 0)
   (key
    :reader key
    :initarg :key
    :type cl:fixnum
    :initform 0)
   (res
    :reader res
    :initarg :res
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Hcp (<Hcp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Hcp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Hcp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetbot-msg:<Hcp> is deprecated: use jetbot-msg:Hcp instead.")))

(cl:ensure-generic-function 'mouse_speed_x-val :lambda-list '(m))
(cl:defmethod mouse_speed_x-val ((m <Hcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:mouse_speed_x-val is deprecated.  Use jetbot-msg:mouse_speed_x instead.")
  (mouse_speed_x m))

(cl:ensure-generic-function 'mouse_speed_y-val :lambda-list '(m))
(cl:defmethod mouse_speed_y-val ((m <Hcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:mouse_speed_y-val is deprecated.  Use jetbot-msg:mouse_speed_y instead.")
  (mouse_speed_y m))

(cl:ensure-generic-function 'mouse_speed_z-val :lambda-list '(m))
(cl:defmethod mouse_speed_z-val ((m <Hcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:mouse_speed_z-val is deprecated.  Use jetbot-msg:mouse_speed_z instead.")
  (mouse_speed_z m))

(cl:ensure-generic-function 'mouse_button_left-val :lambda-list '(m))
(cl:defmethod mouse_button_left-val ((m <Hcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:mouse_button_left-val is deprecated.  Use jetbot-msg:mouse_button_left instead.")
  (mouse_button_left m))

(cl:ensure-generic-function 'mouse_button_right-val :lambda-list '(m))
(cl:defmethod mouse_button_right-val ((m <Hcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:mouse_button_right-val is deprecated.  Use jetbot-msg:mouse_button_right instead.")
  (mouse_button_right m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <Hcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:key-val is deprecated.  Use jetbot-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <Hcp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetbot-msg:res-val is deprecated.  Use jetbot-msg:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Hcp>) ostream)
  "Serializes a message object of type '<Hcp>"
  (cl:let* ((signed (cl:slot-value msg 'mouse_speed_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mouse_speed_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mouse_speed_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mouse_button_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mouse_button_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'res)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'res)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Hcp>) istream)
  "Deserializes a message object of type '<Hcp>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mouse_speed_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mouse_speed_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mouse_speed_z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mouse_button_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mouse_button_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'res)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'res)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Hcp>)))
  "Returns string type for a message object of type '<Hcp>"
  "jetbot/Hcp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Hcp)))
  "Returns string type for a message object of type 'Hcp"
  "jetbot/Hcp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Hcp>)))
  "Returns md5sum for a message object of type '<Hcp>"
  "b43018bb32e264090ccdd50096e77265")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Hcp)))
  "Returns md5sum for a message object of type 'Hcp"
  "b43018bb32e264090ccdd50096e77265")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Hcp>)))
  "Returns full string definition for message of type '<Hcp>"
  (cl:format cl:nil "int16 mouse_speed_x~%int16 mouse_speed_y~%int16 mouse_speed_z~%uint8 mouse_button_left~%uint8 mouse_button_right~%uint16 key~%uint16 res~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Hcp)))
  "Returns full string definition for message of type 'Hcp"
  (cl:format cl:nil "int16 mouse_speed_x~%int16 mouse_speed_y~%int16 mouse_speed_z~%uint8 mouse_button_left~%uint8 mouse_button_right~%uint16 key~%uint16 res~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Hcp>))
  (cl:+ 0
     2
     2
     2
     1
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Hcp>))
  "Converts a ROS message object to a list"
  (cl:list 'Hcp
    (cl:cons ':mouse_speed_x (mouse_speed_x msg))
    (cl:cons ':mouse_speed_y (mouse_speed_y msg))
    (cl:cons ':mouse_speed_z (mouse_speed_z msg))
    (cl:cons ':mouse_button_left (mouse_button_left msg))
    (cl:cons ':mouse_button_right (mouse_button_right msg))
    (cl:cons ':key (key msg))
    (cl:cons ':res (res msg))
))
